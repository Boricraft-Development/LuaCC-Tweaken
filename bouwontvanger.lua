function setup ()
  rednet.open("left")
  id,message = rednet.receive()
  if id == 1 message == "conn_test"
  rednet.broadcast("systems on computer " + os.getComputerID() + " are ready")
  end
end

setup()