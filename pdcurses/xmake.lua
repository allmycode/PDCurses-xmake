target("pdcurses")
    set_kind("static")
    add_files("*.c")
    add_includedirs("..", {public = true})
    if is_plat("windows") then
        add_syslinks("user32")
        add_syslinks("Advapi32")
    end
    add_cflags("-DHAVE_NO_INFOEX", {tools = "gcc"})