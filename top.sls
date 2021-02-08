# Top file for the base environment

base:                     # The environment name (base is used as env name for GIT master branch)
  'G@dc:london':          # All minions with a grain called "dc" with a value of "london"
    - FileAndDirectory    # Apply the states within "FileAndDirectory.sls" or "/FileAndDirectory/init.sls"
  
  'saltc*':               # All minions that have an ID that starts with "saltc"
    - Firewall            # Apply the states within "Firewall.sls" or "/Firewall/init.sls"
  
  '192.168.110.0/24':     # All minions that belong to the "192.168.110.0/24" subnet
    - match: ipcidr       # Match based on ipcidr
    - Groups              # Apply the states within "Groups.sls" or "Groups/init.sls"
    
