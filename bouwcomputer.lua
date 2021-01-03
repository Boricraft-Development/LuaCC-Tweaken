function setup ()
  rednet.open("left")
  rednet.broadcast("conn_test")
  id1,com1 = rednet.receive(5)
  print(com1)
  kiezen()
  
end

function kiezen ()
  print("wil je beginnen met bouwen [J/N]")
  answer = io.read()
  if answer == "J" then
    bouw()
    return print("de bouw is begonnen")
  elseif answer == "N" then
    os.reboot()
  else
    print("Je moet een optie kiezen")
  end
  return kiezen()
end
function bouw ()
  rednet.isOpen("left")
end