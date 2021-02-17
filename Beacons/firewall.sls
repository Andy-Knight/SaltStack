#State file for applying a beacon config to Minions

firewall_beacon:               #State ID
  beacon.present:              #Beacon should be present
    - save: True               #Updates the local beacon.conf file on the minion
    - enable: True             #Enables the beacon
    - services:                #The beacon module to use, in this case 'services' for monitoring services
        firewalld:             #Name of the service
          onchangeonly: True   #Only event when status changes rather than on scheduled interval
          delay: 5             #Number of seconds to wait before sending event
          emitatstartup: False #Stops event from firing when Minion reloads
