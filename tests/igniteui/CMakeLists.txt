qt_add_executable(IgniteUITest main.cpp)
qt_add_qml_module(IgniteUITest
    URI IgniteUITestApp
    VERSION 1.0
    QML_FILES main.qml
)
target_link_libraries(IgniteUITest PRIVATE Qt6::Quick igniteui)
target_compile_definitions(IgniteUITest PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
add_test(IgniteUI IgniteUITest)