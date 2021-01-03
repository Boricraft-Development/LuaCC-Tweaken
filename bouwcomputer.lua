function setup ()
  print("Copyright 2021-2021 Boricraft-Development")
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
  elseif answer == "N" then
    os.reboot()
  else
    print("Je moet een optie kiezen")
  end
  return kiezen()
end




function bouw ()
  t = rednet.isOpen("left")
  rednet.broadcast("test")
  id,response = rednet.receive(5)
  print("response")
  if t == false or response ~= "ok" then
    print("Er was een fout bij het uitvoeren van dit programma. Het is mogelijk dat de rednet port niet goed geopend is of dat het programma op de bouwslaves gecrasht of niet uitgevoerd is. Herstart het programma en kijk of de fout er nog is. Als de fout er nog is conctacteer dan de producent van deze software.")
    return exit()
  else
    rednet.broadcast("begin")
    id,message = rednet.receive()
    print(message)
    return exit()
  end
end

function exit ()
    print("afsluiten")
    error()
end

setup()