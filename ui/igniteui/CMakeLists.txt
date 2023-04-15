project(igniteui VERSION 0.1 LANGUAGES CXX)

qt_add_library(igniteui SHARED)
qt_add_qml_module(igniteui
    URI igniteui
    VERSION 1.0
    QML_FILES MyItemControls.qml
    SOURCES myitem.cpp myitem.h
)

target_compile_definitions(igniteui
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(igniteui
    PRIVATE Qt6::Quick)

target_include_directories(igniteui PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

