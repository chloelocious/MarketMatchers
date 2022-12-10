# Database Design Project -- MarketMatchers

As the MarketMatchers team, our application aims to connect local communities with local, open market events. To do this, we created an application that supports customers, market-stand owners, and product-makers, allowing them to interact and view valuable information that will support their enterprises and respective interests.

This repo contains the database design project for CS3200, combining MySQL with a Python Flask to implement the REST API attached to our database. 

## How to setup and start the containers and ngrok
**Important** - you need Docker Desktop installed

1. First, in Docker Desktop, ensure that any previous instance of the marketmatchers container is removed.
2. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
3. Build the images with `docker compose build`
4. Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`.
5. Start a new terminal window for ngrok, to connect to the API attached to our database. In this new window, use the command `./ngrok http 8001` for Mac users, and `ngrok http 8001` for Windows users.
6. This window will generate a "Forwarding" link. Copy this link to use it for the API data source.
 
## How to setup and connect the API to AppSmith

1. With the "Forwarding" link copied, navigate to the "Datasources" tab in AppSmith
2. Update the MarketMatchers API with the generated link
3. Deploy the app. It should now access the MarketMatchers datasource.

## Demo Video
Here is the link to our demo:
https://www.youtube.com/watch?v=c0LUdUiE1RA&ab_channel=RobertHoyler
