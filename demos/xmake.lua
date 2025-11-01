for _, demo in pairs({"worm", "rain", "xmas", "firework", "ozdemo", "testcurs"}) do
    target("demo."..demo)
        set_kind("binary")
        add_files(demo ..".c")
        add_deps("backend")
        add_deps("pdcurses")
        add_options("DEBUG","DLL","WIDE","UTF8","INFOEX")
end

target("demo.tuidemo")
    set_kind("binary")
    add_files("tui*.c")
    add_deps("backend")
    add_deps("pdcurses")
    add_options("DEBUG","DLL","WIDE","UTF8","INFOEX")

for _, test in pairs({"hanoi", "knight", "ncurses", "firstlast", "tclock", "blue", "bs", "gdc", "newdemo", "view"}) do
    target("test."..test)
        set_kind("binary")
        add_files("../test/"..test..".c")
        add_deps("backend")
        add_deps("pdcurses")
        add_includedirs(".")
        add_includedirs("../test")
        add_cflags("-DHAVE_MATH_H", "-DHAVE_MATH_FUNCS")
end