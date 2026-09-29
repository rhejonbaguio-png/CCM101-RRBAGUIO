# Mission Reflection

Writing a `docker-compose.yml` file makes a cloud engineer's job easier because it allows multiple containers and their configurations to be defined in one file. Instead of manually typing many commands for each container, Docker Compose can deploy the complete application stack using a single command. This makes the deployment process more organized, repeatable, and easier to manage.

YAML is very sensitive to indentation, so using the correct spaces is important. If I use a Tab instead of spaces or place an item at the wrong indentation level, the YAML file may produce an error and Docker Compose may not be able to read or deploy the configuration correctly. This taught me that even small formatting mistakes can affect the deployment of an application.

We used environment variables such as `MYSQL_PASSWORD`, `MYSQL_DATABASE`, and `MYSQL_USER` to provide the database configuration needed by the containers. These variables allow the Nextcloud application to know which database credentials and database information to use. The `MYSQL_HOST=database` variable also allows the Nextcloud container to find the MariaDB database service.

Deploying a fully functional cloud storage system such as Nextcloud in only a few minutes was a useful experience. I was able to see how Docker Compose can connect multiple services and deploy them together instead of setting them up one by one.

Since Mission 1, my understanding of Cloud Computing has improved. I started by learning basic Linux commands and cloud concepts, and I have now learned how to deploy containers, connect services, and use Infrastructure as Code. This mission helped me understand how cloud engineers can use automation and configuration files to make application deployment more efficient and organized.
