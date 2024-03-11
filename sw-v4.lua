if not game:IsLoaded() then repeat game.Loaded:Wait(5) until game:IsLoaded() end

_G.Setting = {
    ['Auto Evo Race V4'] = true,
    Race_V4 = { 
        ['Helper'] = 'zq0vh1', 
        ['Helper2'] = '63g6os', 
        ['Farm'] = { 
            'qfm03y',
            'bdxzqv',
			      'pjbeup',
			      'dblznn',
            'ngwo3w',
			      'cokw74',
			      'wn4s4d',
            'o6zlyc',
	      		'y3glrs',
            'rrcbuz'
        }
    },
    -- Booster CPU
    ['Close Ui'] = true,
    ['White Screen'] = true, 
    ['FPS Booster'] = true
}

script_key="vOztkkXguLgknxSfgQUAkZCflTfNsTMI";
loadstring(game:HttpGet("https://raw.githubusercontent.com/londnee/code/main/sw.v4.lua"))()
