"NAME                ID              SIZE      MODIFIED
"codellama:13b       9f438cb9cd58    7.4 GB    2 minutes ago
"qwen2.5-coder:7b    dae161e27b0e    4.7 GB    21 minutes ago
"codellama:7b        8fdf8f752f6e    3.8 GB    22 minutes ago

" How long to wait before triggering completion (in ms)
let g:free_pilot_debounce_delay = 500

" Maximum number of suggestions to show
let g:free_pilot_max_suggestions = 3

" Enable debug logging
let g:free_pilot_debug = 0

" Choose backend: 'ollama' or 'openrouter'
let g:free_pilot_backend = 'ollama'

" AI temperature (0.0 - 1.0, lower = more focused)
let g:free_pilot_temperature = 0.1

" Debug log file location (empty = no logging)
let g:free_pilot_log_file = ''

" Maximum tokens to generate
let g:free_pilot_max_tokens = 120

" Model to use with Ollama
let g:free_pilot_ollama_model = 'codellama:7b'
"let g:free_pilot_ollama_model = 'codellama:13b'

" Ollama API endpoint
let g:free_pilot_ollama_url = 'http://localhost:11434/api/generate'

" Enable on startup
"let g:free_pilot_autostart = 1

" Only enable for specific filetypes (empty = all)
let g:free_pilot_include_filetypes = []

" Disable for specific filetypes
let g:free_pilot_exclude_filetypes = ['help', 'netrw', 'NvimTree', 'TelescopePrompt',
    \ 'fugitive', 'gitcommit', 'quickfix', 'prompt']
