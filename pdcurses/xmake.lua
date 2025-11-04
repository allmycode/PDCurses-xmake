target("pdcurses")
    set_kind("static")
    add_files("*.c")
    add_includedirs("..", {public = true})
    add_headerfiles("../curses.h", "../curspriv.h")
    if is_plat("windows") then
        add_syslinks("user32", {public = true})
        add_syslinks("Advapi32", {public = true})
    end
    add_options("DEBUG","DLL","WIDE","UTF8","INFOEX")

