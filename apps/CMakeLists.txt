set(DIRS
    widgetgallery)

foreach(DIR IN LIST DIRS)
    add_subdirectory(${DIR})
endforeach(DIR IN LIST DIRS)
