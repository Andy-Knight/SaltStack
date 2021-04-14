#State file for applying a beacon state for the firewall service

crond_beacon:
  beacon.present:
    - name: service            #The beacon module used
    - save: False              #Tells whether to update the local beacon.conf file on the minion
    - enabled: True
    - services:                #The beacon module to use
        crond:                 #Name of the service
          onchangeonly: True   #Only event when status changes rather than on scheduled interval
