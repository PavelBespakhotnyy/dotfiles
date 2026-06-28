hl.config({ animations = { enabled = true } })

-- Curves
hl.curve("specialWorkSwitch", { type = "bezier", points = { {0.05, 0.7}, {0.1, 1}    } })
hl.curve("emphasizedAccel",   { type = "bezier", points = { {0.3, 0},    {0.8, 0.15} } })
hl.curve("emphasizedDecel",   { type = "bezier", points = { {0.05, 0.7}, {0.1, 1}    } })
hl.curve("standard",          { type = "bezier", points = { {0.2, 0},    {0, 1}      } })
hl.curve("overshot",          { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.1}  } })
hl.curve("liner",             { type = "bezier", points = { {1, 1},      {1, 1}      } })

-- Windows
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 5, bezier = "emphasizedDecel", style = "popin 80%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3, bezier = "emphasizedAccel", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 6, bezier = "standard" })

-- Borders
hl.animation({ leaf = "border",      enabled = true, speed = 3,  bezier = "emphasizedDecel" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 40, bezier = "liner", style = "once" })

-- Fade
hl.animation({ leaf = "fade",    enabled = true, speed = 6, bezier = "standard" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 6, bezier = "standard" })

-- Layers
hl.animation({ leaf = "layersIn",      enabled = true, speed = 5, bezier = "emphasizedDecel", style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 4, bezier = "emphasizedAccel", style = "slide" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 5, bezier = "standard" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 5, bezier = "standard" })

-- Workspaces
hl.animation({ leaf = "workspaces",       enabled = true, speed = 4, bezier = "overshot",          style = "slidevert" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "specialWorkSwitch",  style = "slidefadevert 15%" })
