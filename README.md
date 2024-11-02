# Spring Api Portfolio

This microservice API supports my portfolio web application (see the corresponding repository for more details). It handles CRUD operations for the database, managing the projects displayed in my portfolio.

The data managed includes each project's HTML content and related topic titles, which are used to organize projects by category on the portfolio. Topics allow users to view projects grouped by specific themes.

## API Documentation

I used Apiary for the online documentation.

You can find it here : https://smarsousportfolioapi.docs.apiary.io/.

To resume, the endpoints of the API are :
- **List all projects :** GET /project 
- **Get a project :** GET /project/{id}
- **Create a project :** POST /project
- **Modify a project :** PUT /project/{id}
- **Delete a project :** DELETE /project/{id}