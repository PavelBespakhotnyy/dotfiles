-- Smart gaps
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 20, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]",   gaps_out = 20, gaps_in = 0 })
hl.window_rule({
    name = "no-gaps-wtv1",
    match = { float = false, workspace = "w[tv1]" },
    border_size = 2,
})
hl.window_rule({
    name = "no-gaps-f1",
    match = { float = false, workspace = "f[1]" },
    border_size = 2,
})

-- Ignore maximize
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix drag in XWayland
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- hyprland-run
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})

hl.layer_rule({ match = { namespace = "rofi" }, no_anim = true })

-- TUI-windows (for wifi and bluetooth)
hl.window_rule({
    match  = { class = "wifi-tui" },
    float  = true,
    size   = {1000, 700},
    center = true,
})
hl.window_rule({
    match  = { class = "bt-tui" },
    float  = true,
    size   = {1000, 700},
    center = true,
})

hl.window_rule({
    name = "xwayland-video-bridge-fixes",
    match = { class = "xwaylandvideobridge" },

    no_initial_focus = true,
    no_focus = true,
    no_anim = true,
    no_blur = true,
    opacity = 0.0
})