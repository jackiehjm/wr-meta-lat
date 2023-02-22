EFI_INPUT_DIR ?= ""

update_stx_efi_sb() {
    if [ -n ${EFI_INPUT_DIR} -a -d ${EFI_INPUT_DIR} ]; then
        cp -af ${EFI_INPUT_DIR}/bootaa64.efi ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/
        cp -af ${EFI_INPUT_DIR}/mmaa64.efi ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/
        cp -af ${EFI_INPUT_DIR}/grubaa64.efi ${SDK_OUTPUT}${SDKTARGETSYSROOT}/boot/efi/EFI/BOOT/
    fi
}

POPULATE_SDK_POST_TARGET_COMMAND:append = "update_stx_efi_sb; "
