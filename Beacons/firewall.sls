firewall_beacon:
  beacon.present:
    - save: True #Updates the local beacon.conf file on the minion
    - enable: True
    - services: #The beacon module to use
        firewalld: #Name of the service
          onchangeonly: True #Only event when status changes rather than on scheduled interval
          delay: 5 #Number of seconds to wait before sending event
          emitatstartup: False #Stops event from firing when Minion reloads
