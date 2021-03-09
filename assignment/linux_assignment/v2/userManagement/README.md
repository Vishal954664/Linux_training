UserManager
    - Add NinjaTeam (Simulate Group)
    - Add a User (Simulate) under a team
    - Assign user to another team
Ensure below constraints are met:
    - A user should have read,write, execute access to home directory
    - All the users of same team should have read and excute access to home directory of fellow team members
    - Other team members should not have any access to other team members directory
    - In home directory of every user there should be 3 shared directories
        - team: Same team members will have full access
        - ninja: All ninja's will have full access
        - all: Every in the system should have full access
```
i.e
./UserManager.sh addTeam amigo
./UserManager.sh addTeam unixkings
./UserManager.sh addUser arpit amigo
./UserManager.sh addUser kartik amigo
./UserManager.sh addUser kuldeep unixkings
./UserManager.sh addUser rakesh unixkings
```
```
Resultant Structure
/home
  - arpit
    - team
    - ninja
    - all
  - kartik
    - team
    - ninja
    - all
  - kuldeep
    - team
    - ninja
    - all
  - rakesh
     - team
     - ninja
     - all
```
