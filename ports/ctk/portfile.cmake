vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO commontk/CTK
    REF 60a0740f228633f118698b4526256a4c2110ce81 # committed on 2023.07.18
    SHA512 ca04912ed516020c998865e877cb7df2e7f7758cb21346997ca4fcd76ebbbf6c4670ac4d51c03b5a7f6a7ed4ccc0d90096ae0ab566ee96c2b073826af0cc9ad8
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/vcpkg-cmake-wrapper.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")

# Install the pkgconfig file

vcpkg_fixup_pkgconfig()
vcpkg_copy_pdbs()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
