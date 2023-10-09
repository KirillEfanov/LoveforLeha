function Rectangle(x, y, w, h)
    local this = {}
    this.x = x
    this.y = y
    this.w = w
    this.h = h

    function this:draw()
        love.graphics.rectangle("fill", self.x, self.y, self.w, self.h) -- по x вправо
    end

    return this
end


function love.load()
    font = love.graphics.newFont(18)
    love.window.setMode(1280, 720)
    rectangle = Rectangle(20, 640, 100,50)
    button1 = Rectangle(1100, 50, 50, 50)
    button2 = Rectangle(1040, 50, 50, 50)
end

function love.update()
    local x, y = love.mouse.getPosition()
    if love.mouse.isDown("1") then -- перемещение по X вправо
        if x >= button1.x and x < button1.x + button1.w and y > button1.y and y < button1.y + button1.h then
            if rectangle.x < 1060 then
                rectangle.x = rectangle.x + 10
            end
        end
    end

    if love.mouse.isDown("1") then -- перемещение по X влево
        if x >= button2.x and x < button2.x + button2.w and y > button2.y and y < button2.y + button2.h then
            if rectangle.x >= 30 then
                rectangle.x = rectangle.x - 10
            end
        end
    end

end

function love.draw()
    love.graphics.setFont(font)
    love.graphics.print("X", 4, 5)
    love.graphics.print("Y", 1205, 690)
    love.graphics.line(10,28, 10,700, 1200,700) --оси координат
    love.graphics.line(15,38, 10,28, 5,38) --стрелка по X
    love.graphics.line(1190,695, 1200,700, 1190,705) --стрелка по Y
    rectangle:draw()
    button1:draw()
    button2:draw()
end
