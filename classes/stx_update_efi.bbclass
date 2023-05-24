EFI_INPUT_DIR ?= ""

update_stx_efi_sb() {
    if [ -n ${EFI_INPUT_DIR} -a -d ${EFI_INPUT_DIR} ]; then
        # From grub-efi-arm64_2.06-1.stx.6_arm64.deb
        cp -af ${EFI_INPUT_DIR}/bootaa64-nosig.efi ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/
        cp -af ${EFI_INPUT_DIR}/grubaa64.efi ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/
        cp -af ${EFI_INPUT_DIR}/grub.cfg ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/

        # From shim-unsigned_15+1533136590.3beb971-10.stx.3_arm64.deb 
        cp -af ${EFI_INPUT_DIR}/mmaa64.efi ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/

        # Unknown where is it from
        cp -af ${EFI_INPUT_DIR}/bootaa64.efi ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/
    fi
}

POPULATE_SDK_POST_TARGET_COMMAND:append = "update_stx_efi_sb; "
