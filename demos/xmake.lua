for i, demo in pairs({"worm", "rain", "xmas", "firework", "ozdemo", "testcurs"}) do
    target(demo)
        set_kind("binary")
        add_files(demo ..".c")
        add_deps("backend")
        add_options("DEBUG","DLL","WIDE","UTF8","INFOEX")
end

target("tuidemo")
    set_kind("binary")
    add_files("tui*.c")
    add_deps("backend")
    add_options("DEBUG","DLL","WIDE","UTF8","INFOEX")