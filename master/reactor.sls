#Example state file for adding reactor configuration to a Salt Master

createReactorConfig:
  file.managed:
    - name: /etc/salt/master.d/reactorTest.conf
    - source: salt://master/reactorconfig.conf
    
masterServiceRestart:
  service.running:
    - name: salt-master
    - watch:
      - file: createReactorConfig
