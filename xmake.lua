option("backend")
    set_values("wincon", "sdl2")
    set_default("wincon")
option_end()

option("DEBUG", {default = false})
    add_cflags("-g", "-Wall", "-DPDCDEBUG")

option("DLL", {default = false})

option("WIDE", {default = false})
    add_cflags("-DPDC_WIDE")

option("UTF8", {default = false})
    add_cflags("-DPDC_FORCE_UTF8")

includes("pdcurses")

if is_config("backend", "wincon") then
    includes("wincon")
end

if is_config("backend", "sdl2") then
    includes("sdl2")
end

includes("demos")