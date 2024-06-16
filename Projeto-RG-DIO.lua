os.execute("chcp 65001")
os.execute("cls")



-- [[ POKEMON]]
local name = "Charmander"
local level = 4


-- [[ Atributos]] 

local life_att = 3
local atack_att = 10
local speed_att = 4
local power_att = 9

local function progessBar(progess)
    local full_bar = "⚫"
    local empty_bar = "⚪"
    local filled_bar = ""
    local percentage = progess * 10

    for bar = 1, 10, 1 do
        if bar <= progess then
            filled_bar = filled_bar .. full_bar
        else
            filled_bar = filled_bar .. empty_bar
        end
    end
    filled_bar = filled_bar .. " " .. tostring(percentage) .. "%"
    return filled_bar
end

-- [[ Cartao Mensagem]]


print(string.format([[

-------------------------- / / /-------------------------------------------

                                  ,'\
    _.----.        ____         ,'  _\   ___    ___     ____
_,-'       `.     |    |  /`.   \,-'    |   \  /   |   |    \  |`.
\      __    \    '-.  | /   `.  ___    |    \/    |   '-.   \ |  |
 \.    \ \   |  __  |  |/    ,','_  `.  |          | __  |    \|  |
   \    \/   /,' _`.|      ,' / / / /   |          ,' _`.|     |  |
    \     ,-'/  /   \    ,'   | \/ / ,`.|         /  /   \  |     |
     \    \ |   \_/  |   `-.  \    `'  /|  |    ||   \_/  | |\    |
      \    \ \      /       `-.`.___,-' |  |\  /| \      /  | |   |
       \    \ `.__,'|  |`-._    `|      |__| \/ |  `.__,'|  | |   |
        \_.-'       |__|    `-._ |              '-.|     '-.| |   |
                                `'                            '-._|
                                                                      
----------------------------------------------------------------------------

------------- INFORMACOES --------------------------

POKEMON: %s
LEVEL: %d

--------------------------------------------------

              _.--""`-..
            ,'          `.
          ,'          __  `.
         /|          " __   \
        , |           / |.   .
        |,'          !_.'|   |
      ,'             '   |   |
     /              |`--'|   |
    |                `---'   |
     .   ,                   |                       ,".
      ._     '           _'  |                    , ' \ `
  `.. `.`-...___,...---""    |       __,.        ,`"   L,|
  |, `- .`._        _,-,.'   .  __.-'-. /        .   ,    \
-:..     `. `-..--_.,.<       `"      / `.        `-/ |   .
  `,         """"'     `.              ,'         |   |  ',,
    `.      '            '            /          '    |'. |/
      `.   |              \       _,-'           |       ''
        `._'               \   '"\                .      |
           |                '     \                `._  ,'
           |                 '     \                 .'|
           |                 .      \                | |
           |                 |       L              ,' |
           `                 |       |             /   '
            \                |       |           ,'   /
          ,' \               |  _.._ ,-..___,..-'    ,'
         /     .             .      `!             ,j'
        /       `.          /        .           .'/
       .          `.       /         |        _.'.'
        `.          7`'---'          |------"'_.'
       _,.`,_     _'                ,''-----"'
   _,-_    '       `.     .'      ,\
   -" /`.         _,'     | _  _  _.|
    ""--'---"""""'        `' '! |! /
                            `" " -' mh


------------- ATRIBUTOS --------------------------

Atributo de Vida: %s
Atributo de Ataque: %s
Atributo de Velocidade: %s
Atributo de Poder: %s

--------------------------------------------------


]], name, level, progessBar(life_att), progessBar(atack_att), progessBar(speed_att), progessBar(power_att)))