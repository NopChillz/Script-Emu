repeat wait() until game:IsLoaded()
wait(5)
_G.Nexus = {
    Main = {
        ['Enabled'] = true,
        ['Hop Cooldown'] = 30, -- 30 Seconds
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
            '',
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
            'Dough-Dough',
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
        ['Canvander'] = false,
        ['Buddy Sword'] = false,
        ['Spikey Trident'] = false,
        ['Twin Hooks'] = false,
        ['Hallow Scryte'] = true,
        ['True Triple Katana'] = false,
        ['Cursed Dual Katana'] = true,
        ['Shark Anchor'] = false,
    },
    Gun = {
        ['Kabucha'] = true,
        ['Serpent Bow'] = false,
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

script_key="xgGOVcWUzEFYKtjLiHQVVwBEArJkvcjP";
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-Trash/Nexus/main/Nexus.lua"))()
