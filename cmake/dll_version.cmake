set(PRODUCT_FILE_DESCRIPTION "Public Domain Curses ")
set(PRODUCT_INTERNAL_NAME "PDCurses - ${PROJECT_NAME}")
set(PRODUCT_COMPANY_COPYRIGHT "Public Domain")
set(PRODUCT_NAME "Public Domain Curses Library")
set(PRODUCT_ORIGINAL_FILENAME "PDCURSES.DLL")

set(PRODUCT_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(PRODUCT_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(PRODUCT_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(PRODUCT_VERSION_BUILD ${PROJECT_VERSION_TWEAK})

set(FILE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(FILE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(FILE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(FILE_VERSION_BUILD ${PROJECT_VERSION_TWEAK})

if(MSVC)
    set(TOOL_NAME MS)
endif()

set(PRODUCT_FILE_DESCRIPTION "${PRODUCT_FILE_DESCRIPTION} ${TOOL_NAME} ${TARGET_ARCH}")

configure_file ( ${CMAKE_CURRENT_LIST_DIR}/version.in.cmake ${CMAKE_CURRENT_BINARY_DIR}/version.rc @ONLY )
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resource.in.cmake ${CMAKE_CURRENT_BINARY_DIR}/resource.h @ONLY )
