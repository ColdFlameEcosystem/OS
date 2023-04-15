cmake_minimum_required(VERSION 3.2)
project("Ignite OS"
        VERSION "0.1"
        LANGUAGES CXX C
        )


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(QT_QML_OUTPUT_DIRECTORY  ${CMAKE_BINARY_DIR})
        
find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
        
enable_testing()

set(DIRS
        ui
        tests)
foreach(DIR IN LISTS DIRS)
        add_subdirectory(${DIR})
endforeach(DIR IN LISTS DIRS)

 
        