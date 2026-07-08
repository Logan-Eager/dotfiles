local M = {
    "github/copilot.vim",
    lazy = false,
}

function M.accept_suggestion()
    local suggestion = vim.fn.exists("copilot#GetSuggestion()")
    if suggestion == 1 then
        local accept_keys = vim.fn["copilot#Accept"]("")
        vim.api.nvim_feedkeys(accept_keys, "i", true)
        return true
    end
end

return M
