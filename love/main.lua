function love.load()
    font = love.graphics.newFont(18)
    love.window.setMode(1280, 720)
    
    mouseX = 0 
    mouseY = 0

    xrectangle = 20
    yrectangle = 640

    Xbutton1 = 1100
    Ybutton1 = 50
    Widthbutton1 = 50
    Heightbutton1 = 50

    Xbutton2 = 1040
    Ybutton2 = 50
    Widthbutton2 = 50
    Heightbutton2 = 50

    Heightrectangle = -100
end

function love.mousemoved(x,y)
    mouseX = x 
    mouseY = y
end

function love.draw()
    love.graphics.setFont(font)
    love.graphics.print("X", 4, 5)
    love.graphics.print("Y", 1205, 690)
	love.graphics.line(10,28, 10,700, 1200,700) --оси координат
    love.graphics.line(15,38, 10,28, 5,38) --стрелка по X
    love.graphics.line(1190,695, 1200,700, 1190,705) --стрелка по Y
    if love.mouse.isDown("1") then -- перемещение по X вправо
        if mouseX >= Xbutton1 and mouseX < Xbutton1 + Widthbutton1 and mouseY > Ybutton1 and mouseY < Ybutton1 + Heightbutton1 then
            if xrectangle < 1060 then
                xrectangle = xrectangle + 10
            end
        end
    end

    if love.mouse.isDown("1") then -- перемещение по X влево
        if mouseX >= Xbutton2 and mouseX < Xbutton2 + Widthbutton2 and mouseY > Ybutton2 and mouseY < Ybutton2 + Heightbutton2 then
            if xrectangle >= 30 then
                xrectangle = xrectangle - 10
            end
        end
    end

    love.graphics.print("Lesha loh", 50, 30)

    love.graphics.rectangle("fill", Xbutton1, Ybutton1, Widthbutton1, Heightbutton1) -- по x вправо
    love.graphics.rectangle("fill", Xbutton2, Ybutton2, Widthbutton2, Heightbutton2) -- по x влево
    love.graphics.rectangle("fill", xrectangle, yrectangle, 100, 50) --робот 1 блок
    love.graphics.rectangle("fill", xrectangle + 40, yrectangle, 20, Heightrectangle) --робот 2 блок
end

