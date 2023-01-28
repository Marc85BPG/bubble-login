fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'bubble_login'
author "BubbleDude"


client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua',
	'@oxmysql/lib/MySQL.lua',
}

ui_page 'client/html/index.html'

files({
    'client/html/index.html',
    'client/html/script.js',
    'client/html/style.css'
})
