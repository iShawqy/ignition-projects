# ignition-projects
A repo that contains multiple ignition perspective projects for sharing with the ignition community

## How to use the project?

### Method 1:
You can download the main_project.zip file and import it directly into your ignition gateway. You can give the project any name you like during the import process.

### Method 2:
1. Please zip/compress all the contents of the main_project folder and import it to your gateway as a new project.
2. Feel free to give the project a new name while importing it to your gateway.
3. Copy the myTheme.css from the them css_theme folder and add it under:
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


## Project SQL schemas and tables
I am using currently MySQL db for the projects in this repo. For each app under the views directoy, there will be some sql create schema and tables file. You can find those files under: sql_create_statements


## App 1: chatApp:
1. Please create the chatApp sql schema and all the tables using the file: sql_create_statements/chatApp_db_schema_tables_create_statements.sql
