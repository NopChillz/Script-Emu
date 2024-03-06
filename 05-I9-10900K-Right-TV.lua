_G.Nexus = {
    Main = {
        ['Enabled'] = false,
        ['Hop Cooldown'] = 15, -- 30 Seconds
        ['Quests'] = {
            ['Pull Lever'] = false,
            ['Rainbow Haki'] = false,
            ['Musketeer Hat'] = false,
            ['Mirror Fractal'] = false,
            ['Sanguine Material'] = false,
        },
    },
    Sockets = {
        Enabled = true,
        MachineName = 'PC-05',
        Sword = {
            'Cursed Dual Katana',
            'Dark Dagger',
            'True Triple Katana',
            'Tushita',
            'Yama',
            'Hallow Scythe',
            'Saber'
        },
        Fruit = {
            'Kitsune',
            'Leopard',
            'Dragon',
            'Spirit',
            'Control',
            'Venom',
            'Shadow',
            'Dough',
            'Mammoth',
            'T-Rex'
        }
    },
    Efficiency = {
        ['FPS Booster'] = true,
        ['Black Screen'] = true,
    },
    Fruits = {
        ['Enabled'] = true,
        ['Awakening Fruit'] = true,
        ['Main'] = {
            'Dough-Dough',
            'Kitsune-Kitsune',
        },
        ['List'] = {
            'Dark-Dark',
            'Quake-Quake',
            'Buddha-Buddha',
            'Dark-Dark',
            'Human-Human: Buddha',
            'Light-Light',
            'Dragon-Dragon',
            'Mammoth-Mammoth',
            'Kitsune-Kitsune',
            'Leopard-Leopard',
        },
    },
    Melee = {
        ['6 Melee'] = true,
    },
    Sword = {
        ['Shark Anchor'] = false,
    },
    Gun = {
        ['Kabucha'] = false,
        ['Soul Guitar'] = false
    },
    Race = {
        Enabled = false,
        Races = {
            ['Mink'] = true,
            ['Human'] = false,
            ['Fishman'] = true,
            ['Skypiea'] = true,
        },
        Specials = {
            ['Ghoul'] = false,
            ['Cyborg'] = false,
        },
        V4 = {
            ['Enabled'] = false,
        },
    },
    Mastery = {
        Sword = {
            ['Enabled'] = true,
            ['Manual'] = false,
            ['Sword Name'] = {
                'Koko',
                'Midnight Blade',
                'True Triple Katana',
                'Cursed Dual Katana',
                'Shark Anchor',
            }
        },
        Gun = {
            ['Enabled'] = true,
            ['Manual'] = false,
            ['Gun Name'] = {
                'Kabucha',
                'Acidum Rifle',
                'Serpent Bow',
                'Soul Guitar',
            }
        },
        DevilFruits = true
    }
}

script_key="xgGOVcWUzEFYKtjLiHQVVwBEArJkvcjP";
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-Trash/Nexus/main/Nexus.lua"))()
