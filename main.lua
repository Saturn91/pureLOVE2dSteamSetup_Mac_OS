

function love.load()
    package.cpath = string.format("%s%s/?.%s", package.cpath, love.filesystem.getSourceBaseDirectory(),"so")
    package.cpath = string.format("%s;%s/?.%s;", package.cpath, love.filesystem.getSourceBaseDirectory(), "dylib")

    print(package.cpath)

    require("luasteam")
end

function love.update(dt)

end

function love.draw()
    love.graphics.print("Hello World!", 400, 300)
end