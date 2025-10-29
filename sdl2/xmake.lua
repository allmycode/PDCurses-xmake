add_requires("libsdl2")

target("backend")
    set_kind("static")
    add_files("*.c")
    add_deps("pdcurses")
    add_packages("libsdl2")