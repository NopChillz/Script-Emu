_G.Nexus = {
    Main = {
        ['Enabled'] = true,
        ['Hop Cooldown'] = 15, -- 30 Seconds
        ['Quests'] = {
            ['Pull Lever'] = false,
            ['Rainbow Haki'] = true,
            ['Musketeer Hat'] = true,
            ['Mirror Fractal'] = true,
            ['Sanguine Material'] = false,
        },
    },
    Sockets = {
        Enabled = true,
        MachineName = 'PC-08',
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
        ['Enabled'] = false,
        ['Awakening Fruit'] = true,
        ['Main'] = {
            'Dough-Dough',
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
        ['Pole'] = true,
        ['Saber'] = true,
        ['Midnight Blade'] = true,
        ['Shisui'] = true,
        ['Saddi'] = true,
        ['Wando'] = true,
        ['Yama'] = true,
        ['Tushita'] = true,
        ['Rengoku'] = true,
        ['Canvander'] = true,
        ['Buddy Sword'] = true,
        ['Spikey Trident'] = true,
        ['Twin Hooks'] = true,
        ['Hallow Scryte'] = true,
        ['True Triple Katana'] = true,
        ['Cursed Dual Katana'] = true,
        ['Shark Anchor'] = true,
    },
    Gun = {
        ['Kabucha'] = true,
        ['Serpent Bow'] = true,
        ['Soul Guitar'] = true
    },
    Race = {
        Enabled = true,
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
            ['Manual'] = true,
            ['Sword Name'] = {
                'Koko',
                'Midnight Blade',
                'True Triple Katana',
                'Cursed Dual Katana',
                'Shark Anchor',
            }
        },
        Gun = {
            ['Enabled'] = false,
            ['Manual'] = true,
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

script_key="upHtVDywsDvBmyvDJAtZAhIcjkrTYFAw";
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-Trash/Nexus/main/Nexus.lua"))()
