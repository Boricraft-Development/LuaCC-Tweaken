function setup ()
  rednet.open("left")
  id,message = rednet.receive()
  if id == 1 and message == "conn_test" then
  rednet.broadcast("systems on computer " + os.getComputerID() + " are ready")
  end
end

setup()