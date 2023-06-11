-- font is ivrit from http://www.patorjk.com/software/taag/

local ada_logo = [[
            _                    _           
   __ _  __| | __ _   _ ____   _(_)_ __ ___  
  / _` |/ _` |/ _` | | '_ \ \ / / | '_ ` _ \ 
 | (_| | (_| | (_| |_| | | \ V /| | | | | | |
  \__,_|\__,_|\__,_(_)_| |_|\_/ |_|_| |_| |_|
                                             
              a fork of lazyvim
]]

local cube_logo = [[

             _                _           
   ___ _   _| |__   _____   _(_)_ __ ___  
  / __| | | | '_ \ / _ \ \ / / | '_ ` _ \ 
 | (__| |_| | |_) |  __/\ V /| | | | | | |
  \___|\__,_|_.__/ \___| \_/ |_|_| |_| |_|
                                          

]]

return {

  {
    "goolord/alpha-nvim",
    opts = function(_, dashboard)
      dashboard.section.header.val = vim.split(ada_logo, "\n")
      return dashboard
    end,
  },
}
