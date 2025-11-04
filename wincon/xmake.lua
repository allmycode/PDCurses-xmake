
target("pdcurses-wincon-backend")
    if has_config("DLL") then
        set_kind("shared")
    else
        set_kind("static")
    end
    add_files("pdc*.c")
    add_includedirs("..", {public = true})
    add_options("DEBUG","DLL","WIDE","UTF8","INFOEX")