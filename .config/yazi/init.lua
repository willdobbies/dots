require("git"):setup()
require("simple-status"):setup()

require("bookmarks"):setup({
    last_directory = { enable = true, persist = false, mode="dir" },
    persist = "all",
    file_pick_mode = "parent",
})
