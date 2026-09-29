# Requirements

Install tree sitter cli 

```bash
brew install tree-sitter-cli
```

Install fzf-lua

```bash
brew install fzf fd
```
# nvim-mine

Personal Neovim config, built from scratch. Launch with `v` (`NVIM_APPNAME=nvim-mine nvim`).

## Structure

```
init.lua              -- entry point, just requires
lua/config/
  options.lua         -- editor options, leader key
  keymaps.lua         -- general keymaps
  lazy.lua            -- lazy.nvim bootstrap
lua/plugins/          -- one file per plugin (or group)
```

## Leader

`<leader>` = **Space**. Press it and wait: which-key shows available commands.

## General

| Key | Action |
|---|---|
| `<leader>w` | Save file |
| `<Esc>` | Clear search highlight |
| `<C-h>` `<C-j>` `<C-k>` `<C-l>` | Move between splits |

## Find (fzf-lua)

| Key | Action |
|---|---|
| `<leader><space>` / `<leader>ff` | Find files |
| `<leader>fg` | Grep in project |
| `<leader>fw` | Grep word under cursor |
| `<leader>fb` | Open buffers |
| `<leader>fr` | Recent files |
| `<leader>fh` | Help tags |
| `<leader>f.` | Resume last search |

Inside the picker: `<C-j>` / `<C-k>` move, `<CR>` open, `<Esc>` close.

## LSP

Custom:

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `<leader>cr` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>cd` | Line diagnostics (float) |
| `<leader>cf` | Format buffer (also runs on save) |

Built into Neovim 0.11+:

| Key | Action |
|---|---|
| `K` | Hover documentation |
| `grr` | References |
| `gri` | Implementation |
| `grn` | Rename (same as `<leader>cr`) |
| `gra` | Code action (same as `<leader>ca`) |
| `gO` | Document symbols |
| `<C-s>` (insert) | Signature help |
| `]d` / `[d` | Next / previous diagnostic |
| `<C-o>` / `<C-i>` | Jump back / forward |

## Completion (blink.cmp)

| Key | Action |
|---|---|
| `<C-space>` | Open completion menu |
| `<C-n>` / `<C-p>` | Next / previous item |
| `<C-y>` | Accept |
| `<C-e>` | Close menu |

## Git (gitsigns)

| Key | Action |
|---|---|
| `]h` / `[h` | Next / previous hunk |
| `<leader>gp` | Preview hunk |
| `<leader>gs` | Stage hunk |
| `<leader>gr` | Reset hunk |
| `<leader>gb` | Blame line |
| `<leader>gd` | Diff file |

## Files (oil.nvim)

| Key | Action |
|---|---|
| `-` | Open parent directory (again to go up) |
| `<CR>` | Open file / directory |
| edit a line | Rename |
| `dd` | Delete |
| new line | Create file (trailing `/` = directory) |
| `:w` | Apply changes (asks for confirmation) |

## Editing essentials

Commands are **action + object**: `d` delete, `c` change, `y` yank, combined with `w` word, `i(` inside parens, `ip` paragraph, `t,` till comma, etc.

| Key | Action |
|---|---|
| `ciw` | Change word |
| `ci(` `ci"` `ci{` | Change inside parens / quotes / braces |
| `da(` | Delete parens with contents |
| `yi{` | Yank inside braces |
| `dd` / `yy` / `p` | Delete line / yank line / paste below |
| `>ip` / `<ip` | Indent / dedent paragraph |
| `J` | Join line with next |
| `.` | Repeat last change |
| `u` / `<C-r>` | Undo / redo |
| `f<char>` / `t<char>` | Jump to / till char in line, `;` repeats |
| `*` | Search word under cursor |
| `cgn` then `.` | Change next match, repeat for following ones |
| `:%s/old/new/g` | Replace in file (`gc` to confirm each) |
| `qa` … `q`, then `@a` | Record macro to `a`, replay it (`10@a` = 10 times) |
| `<C-v>` … `I` … `<Esc>` | Block insert on multiple lines |

## Commands

| Command | What |
|---|---|
| `:Lazy` | Plugin manager |
| `:Mason` | LSP servers / tools |
| `:ConformInfo` | Formatters for current buffer |
| `:checkhealth vim.lsp` | Which LSP clients are attached |
| `:checkhealth nvim-treesitter` | Treesitter status |
| `:Tutor` | Built-in Vim tutorial |

## Python notes

basedpyright needs the project venv. Either activate it before launching (`source .venv/bin/activate && v .`) or add to the project's `pyproject.toml`:

```toml
[tool.basedpyright]
venvPath = "."
venv = ".venv"
```

