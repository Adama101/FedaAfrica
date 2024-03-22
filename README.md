
# FedaAfrica
FedaAfrica is mobile solution that educates parents and children aged 4-18 years in Nigeria and Kenya about financial literacy.


## Team Members
  -Adama Jarju
  -Kossi Adanou
  -Sarah Kadoon Ajekwe
  -Grace Oliver

### Application structure

├── android                 - It contains files required to run the application on an Android platform.
├── assets                  - It contains all images and fonts of your application.
├── ios                     - It contains files required to run the application on an iOS platform.
├── lib                     - Most important folder in the application
  ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── screens                     - It contains widgets of the screens  
    │   ├── parent_screens          - It contains all the parent UI screens
    │   ├── child_screens           - It contains all the child UI screens
    │   ├── other                   - It contains the rest of screens such as splash screens etc.
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```