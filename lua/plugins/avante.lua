local check_endpoint_alive = function()
  return true
end
return {
  "yetone/avante.nvim",
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    -- add any opts here
    -- this file can contain specific instructions for your project
    instructions_file = "avante.md",
    -- for example
    provider = "ollama",
    providers = {
      ollama = {
        endpoint = "http://localhost:11434",
        model = "qwen3-coder:480b-cloud",
        is_env_set = check_endpoint_alive,
      },
    },
  },
}
