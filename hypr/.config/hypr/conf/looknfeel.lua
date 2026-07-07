local rounding_corners = 0

hl.config({
    general = {
        gaps_in  = 0,
        gaps_out = 0,
        border_size = 2,
        col = {
            active_border   = "rgb(212121)",
            inactive_border = "rgb(212121)",
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding       = rounding_corners,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 1.0
        ,
        shadow = {
            enabled      = false,
            range        = 20,
            render_power = 3,
            color        = 0xee1a1a1a,
        },
        blur = {
            enabled   = false,
            xray      = false,
            special   = false,
            ignore_opacity = true,
            new_optimizations = true,
            size      = 8,
            passes    = 2,
        },
    },
})

-- Layouts
hl.config({ dwindle   = { preserve_split = true } })
hl.config({ master    = { new_status = "master" } })
hl.config({ scrolling = { fullscreen_on_one_column = true } })

-- Misc
hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
    },
})
