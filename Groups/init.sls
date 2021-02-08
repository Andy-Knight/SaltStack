# Create a user group

demogroup:
  group.present:
    - name: demogroup
    - addusers:
      - root
      - admin
