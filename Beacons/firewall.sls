#State file for applying a beacon config to Minions
#Saving to conf file on minion currently causes a bug which prevents the beacon from being enabled
#Alternative method would be to create a managed file in /etc/salt/minion.d via file.managed

firewall_beacon:               #State ID
  beacon.present:              #Beacon should be present
    - name: service            #Name of the beacon module to use
    - save: False              #Updates the local beacon.conf file on the minion when True (persist config across minion restarts) - currently causes bug if True
    - enable: True             #Enables the beacon
    - services:                #The beacon module to use, in this case 'services' for monitoring services
        firewalld:             #Name of the service
          onchangeonly: True   #Only event when status changes rather than on scheduled interval
          delay: 5             #Number of seconds to wait before sending event
          emitatstartup: False #Stops event from firing when Minion reloads
