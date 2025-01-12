# This rule will not allow incoming traffic from Linux host (10.2.2.10) to this 
Windows machine (10.1.1.1) 
New-NetFirewallRule -DisplayName "Block Linux Traffic" -Direction 
Inbound -RemoteAddress 10.2.2.10 -Action Block 
# Allowing all incoming network traffic from the second Windows host 
(10.1.1.10) 
New-NetFirewallRule -DisplayName "Allow Windows Traffic" -Direction 
Inbound -RemoteAddress 10.1.1.10 -Action Allow 
# Block every incoming traffic by default from outside the network. 
New-NetFirewallRule -DisplayName "Block All Other Inbound Traffic" 
Direction Inbound -Action Block -Profile Any 
# Allowing outgoing network traffic to all internal hosts  
New-NetFirewallRule -DisplayName "Allow Outbound Traffic" -Direction 
Outbound -Action Allow -Profile Any