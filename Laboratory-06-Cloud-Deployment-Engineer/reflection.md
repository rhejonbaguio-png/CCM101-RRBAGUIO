Having all container configurations in one `docker-compose.yml` file made deployment more organized and manageable. Instead of entering separate commands for each container, I only needed one command to start the application. This approach reduces mistakes and makes it easier to repeat the deployment without configuring everything again.

One thing I realized while working with YAML is how important proper indentation is. Even a small mistake, such as using tabs instead of spaces, can prevent Docker Compose from reading the configuration correctly. It reminded me to pay attention to formatting because simple errors can affect the deployment.

Environment variables also played an important role in connecting the services. Settings such as `MYSQL_PASSWORD`, `MYSQL_USER`, and `MYSQL_HOST` provided the information needed for Nextcloud to communicate with its database. Through this, I understood how these variables help organize application settings and support communication between containers.

Seeing the Nextcloud installation page appear in the browser after running a few commands was one of the highlights of this activity. It was interesting to see how the application and database worked together to provide private cloud storage. The actual deployment helped me understand how Docker Compose manages multiple services.

Looking back at Mission 1, my understanding of cloud computing has developed. My knowledge initially focused on basic cloud components, Linux commands, and cloud platforms. The succeeding missions introduced me to Docker, container management, cloud storage, and multi-container deployment. These activities helped me connect different concepts through actual practice. I also became more familiar with using the Linux terminal, creating configuration files, and organizing documentation in GitHub.

This activity also helped me understand the importance of Infrastructure as Code. Instead of treating the deployment as a series of manual steps, I was able to describe the infrastructure through a configuration file. This makes the deployment process easier to understand, repeat, and manage.

Overall, Mission 6 gave me a better understanding of how different containers can work together as one application. I learned that cloud deployment is not only about running individual containers, but also about properly connecting services, managing configurations, and documenting the process. This experience gave me more confidence in using Docker Compose and applying cloud computing concepts through hands-on activities.
