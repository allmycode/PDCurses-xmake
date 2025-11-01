option("backend")
    set_values("wincon", "sdl2")
    set_default("wincon")
option_end()
add_requires("zlib")
option("DEBUG")
    set_default(false)
    add_cflags("-g", "-Wall", "-DPDCDEBUG")

option("DLL")
    set_default(false)

option("WIDE")
    set_default(false)
    add_cflags("-DPDC_WIDE")

option("UTF8")
    set_default(false)
    add_cflags("-DPDC_FORCE_UTF8")

option("INFOEX")
   set_default(false)
   add_cflags("-DHAVE_NO_INFOEX")


includes("pdcurses")

if is_config("backend", "wincon") then
    includes("wincon")
end

if is_config("backend", "sdl2") then
    includes("sdl2")
end

includes("demos")
