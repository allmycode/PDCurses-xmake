for i, demo in pairs({"matrix", "worm", "rain", "xmas", "firework", "ozdemo"}) do
    target(demo)
        set_kind("binary")
        add_files(demo ..".c")
        add_deps("backend")
end

target("tuidemo")
    set_kind("binary")
    add_files("tui*.c")
    add_deps("backend")