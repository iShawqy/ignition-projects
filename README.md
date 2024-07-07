# ignition-projects
A repo that contains multiple ignition perspective projects for sharing with the ignition community

## How to use the project?
1. Please zip/compress all the contents of the main_project folder and import it to your gateway as a new project.
2. Copy the myTheme.css from the them css_theme folder and add it under:
```
/usr/local/ignition/data/modules/com.inductiveautomation.perspective/themes/myTheme.css
```
## How is the project structured in the designer?
Under the views folder, there will be folder for each new app. The first app i developed for this repo was the chatApp. To run the chatApp and any future app, please open the Main view under the app directory and run it.
For example, you can find the chatApp in the designer under: 
- views/chatApp
  
To run the app, please run the following view:
- chatApp/Main

To run the app in the browser, please replace "your_project_name" in the following link and go to: 
- http://localhost:8088/data/perspective/client/your_project_name/chatApp/main
