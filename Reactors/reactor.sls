#Example Reactor state file

create_test_file:
  local.state.single:  # applies a single state to a remote target
    - tgt: saltclient.corp.local. # The target to run the state on
    - args:
      - fun: file.managed. #The state module to use
      - name: /tmp/reactor.tst #The input for the file.managed state (in this case the file i want to create)
