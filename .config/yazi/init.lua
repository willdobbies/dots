require("git"):setup()
require("simple-status"):setup()

-- Bookmarks
require("bunny"):setup({
    hops = {
        -- Home
        { key='h', path='~/' },
        { key='a', path='~/Audio' },
        { key='A', path='~/App' },
        { key='c', path='~/Code' },
        { key='d', path='~/Docs' },
        { key='g', path='~/Game' },
        { key='i', path='~/Img' },
        { key='m', path='~/Music' },
        { key='s', path='~/Sync' },
        { key='t', path='~/Temp' },

        -- Dots
        { key={'.','c'}, path='~/.config' },
        { key={'.','b'}, path='~/.local/bin' },
        { key={'.','l'}, path='~/.local/' },
        { key={'.','s'}, path='~/.local/share' },

        -- Root
        { key={'/','r'}, path='/' },
        { key={'/','e'}, path='/etc' },
        { key={'/','m'}, path='/media' },
        { key={'/','o'}, path='/opt' },
        { key={'/','s'}, path='/usr/share' },
        { key={'/','u'}, path='/usr' },
        { key={'/','l'}, path='/usr/local/' },
        { key={'/','v'}, path='/var' },
    },
    desc_strategy = "path",
    ephemeral = true,
    tabs = true,
    notify = false,
    fuzzy_cmd = "fzf"
})
