add_requires("libsdl2")
if has_config("WIDE") or has_config("UTF8") then
    add_requires("zlib")
    add_requires("libsdl2_ttf")
end

target("pdcurses-sdl2-backend")
    set_kind("static")
    add_files("*.c")
    add_includedirs("..", {public = true})
    add_packages("libsdl2", {public = true})
    if has_config("WIDE") or has_config("UTF8") then
        add_packages("libsdl2_ttf", {public = true})
    end
    add_options("DEBUG","DLL","WIDE","UTF8","INFOEX")