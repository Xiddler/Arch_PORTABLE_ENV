# output = system.exec_command("date +%H:%M <enter>")
# keyboard.send_keys("date +%H:%M <enter>")
output = system.exec_command("date +%H:%M")
keyboard.send_keys(output)
