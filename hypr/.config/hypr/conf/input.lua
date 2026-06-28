hl.config({
    input = {
        kb_layout  = "us,ru",
        kb_variant = "",
        kb_model   = "",
        kb_options = "grp:alt_shift_toggle",
        kb_rules   = "",
        follow_mouse = 1,
        mouse_refocus = false,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.config({
    cursor = {
        no_warps = false,
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})
