base:                     # The environment name (base is used as env name for GIT master branch)
  'G@dc:london':          # All minions with a grain called "dc" with a value of "london"
    - FileAndDirectory    # apply the state file "FileAndDirectory.sls" or "/FileAndDirectory/init.sls"
  
  'saltc*':
    - Firewall
