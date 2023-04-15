set(DIRS
        igniteui
        compositor
        )
foreach(DIR IN LISTS DIRS)
        add_subdirectory(${DIR})
endforeach(DIR IN LISTS DIRS)
