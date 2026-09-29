Having all container configurations in one docker-compose.yml file made deployment more organized and manageable. Instead of entering separate commands for each container, I only needed one command to start the application. This made the deployment easier to repeat and reduced the possibility of mistakes.

One thing I realized while working with YAML is how important proper indentation is. Even a small mistake, such as using tabs instead of spaces, can prevent Docker Compose from reading the configuration correctly. It reminded me to pay attention to formatting when creating configuration files.

Environment variables such as MYSQL_PASSWORD, MYSQL_USER, and MYSQL_HOST helped Nextcloud communicate with the MariaDB database. I learned that these variables provide the necessary information for the containers to work together properly.

Seeing the Nextcloud installation page appear in the browser after running the Docker Compose commands was a good experience. It showed me how quickly multiple services can be deployed and connected using containers.

Looking back at Mission 1, my understanding of cloud computing has developed. I started with basic cloud concepts and Linux commands, and the succeeding missions introduced me to Docker, cloud storage, and multi-container deployment. I also became more comfortable using the Linux terminal, creating configuration files, and documenting my work in GitHub.
