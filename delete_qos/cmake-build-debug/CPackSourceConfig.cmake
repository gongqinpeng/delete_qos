# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "C:/Users/Administrator/CLionProjects/delete_data_qos;C:/Users/Administrator/CLionProjects/delete_data_qos/cmake-build-debug")
set(CPACK_CMAKE_GENERATOR "Ninja")
set(CPACK_COMPONENTS_ALL "dev;lib")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_DEV_DESCRIPTION "Development files for use with Eclipse Cyclone DDS")
set(CPACK_COMPONENT_DEV_DISPLAY_NAME "Eclipse Cyclone DDS development")
set(CPACK_COMPONENT_LIB_DESCRIPTION "Library used to run programs with Eclipse Cyclone DDS")
set(CPACK_COMPONENT_LIB_DISPLAY_NAME "Eclipse Cyclone DDS library")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "D:/clion/CLion 2022.1.2/bin/cmake/win/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "CycloneDDS built using CMake")
set(CPACK_GENERATOR "7Z;ZIP")
set(CPACK_GENERATOR "7Z;ZIP")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "C:/Users/Administrator/CLionProjects/delete_data_qos;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/CycloneDDS")
set(CPACK_MODULE_PATH "C:/Users/Administrator/CLionProjects/delete_data_qos/cmake/Modules")
set(CPACK_NSIS_DISPLAY_NAME "Eclipse Cyclone DDS")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_PACKAGE_NAME "Eclipse Cyclone DDS")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "C:/Users/Administrator/CLionProjects/delete_data_qos/cmake-build-debug/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "https://github.com/eclipse-cyclonedds/cyclonedds")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "D:/clion/CLion 2022.1.2/bin/cmake/win/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Eclipse Cyclone DDS")
set(CPACK_PACKAGE_FILE_NAME "CycloneDDS-0.11.0-Source")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "Eclipse Cyclone DDS")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "Eclipse Cyclone DDS")
set(CPACK_PACKAGE_NAME "CycloneDDS")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Eclipse Cyclone DDS project")
set(CPACK_PACKAGE_VERSION "0.11.0")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "11")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Users/Administrator/CLionProjects/delete_data_qos/cmake-build-debug/LICENSE")
set(CPACK_RESOURCE_FILE_README "D:/clion/CLion 2022.1.2/bin/cmake/win/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "D:/clion/CLion 2022.1.2/bin/cmake/win/share/cmake-3.22/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "ON")
set(CPACK_SOURCE_GENERATOR "7Z;ZIP")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "C:/Users/Administrator/CLionProjects/delete_data_qos;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Users/Administrator/CLionProjects/delete_data_qos/cmake-build-debug/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "CycloneDDS-0.11.0-Source")
set(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
set(CPACK_SOURCE_ZIP "ON")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64-Source")
set(CPACK_WIX_CMAKE_PACKAGE_REGISTRY "CycloneDDS")
set(CPACK_WIX_EXTRA_SOURCES "C:/Users/Administrator/CLionProjects/delete_data_qos/WiX/PathDlg.wxs;C:/Users/Administrator/CLionProjects/delete_data_qos/WiX/DialogOrder.wxs")
set(CPACK_WIX_LICENSE_RTF "C:/Users/Administrator/CLionProjects/delete_data_qos/cmake-build-debug/LICENSE.rtf")
set(CPACK_WIX_PATCH_FILE "C:/Users/Administrator/CLionProjects/delete_data_qos/WiX/env.xml")
set(CPACK_WIX_PRODUCT_ICON "C:/Users/Administrator/CLionProjects/delete_data_qos/WiX/icon.ico")
set(CPACK_WIX_SIZEOF_VOID_P "8")
set(CPACK_WIX_UI_BANNER "C:/Users/Administrator/CLionProjects/delete_data_qos/WiX/banner.png")
set(CPACK_WIX_UI_DIALOG "C:/Users/Administrator/CLionProjects/delete_data_qos/WiX/dialog.png")
set(CPACK_WIX_UI_REF "CustomUI_InstallDir")
set(CPACK_WIX_UPGRADE_GUID "f619c294-0696-4f04-98ed-4cfa6ebba6a5")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Users/Administrator/CLionProjects/delete_data_qos/cmake-build-debug/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
