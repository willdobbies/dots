th.git = th.git or {}
th.git.modified_sign = "M"
th.git.added_sign = "A"
th.git.untracked_sign = "?"
th.git.ignored_sign = "I"
th.git.deleted_sign = "D"
th.git.updated_sign = "U"

require("git"):setup()

require("simple-status"):setup()

require("bookmarks"):setup({
    last_directory = { enable = true, persist = false, mode="dir" },
    persist = "all",
    file_pick_mode = "parent",
})

require("zoxide"):setup {
    update_db = true,
}

require("gvfs"):setup({
})
