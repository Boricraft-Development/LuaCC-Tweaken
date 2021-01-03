function setup ()
  rednet.open("left")
  id,message = rednet.receive()
  if id == 1 and message == "conn_test" then
  rednet.broadcast("systems on computer " .. os.getComputerID() .. " are ready")
  end
end

function build ()
  id,response = rednet.receive()
  if response == "test" then
    rednet.broadcast("ok")
    id,buildmsg = rednet.receive()
    if id == 1 and buildmsg == "build" then
      redstone.setOutput("back", true)
    end
  end
  
end

setup()
build()