# Reflection

This laboratory activity helped me understand the different types of cloud storage and how they are used in real-world applications. I learned that Block Storage is commonly used for virtual machines and databases, File Storage is useful for shared files and directories, while Object Storage is suitable for storing large amounts of unstructured data such as images, videos, and backups. Object Storage is different from Block Storage because it stores data as objects with metadata and unique identifiers, making it suitable for applications that handle many files.

Deploying MinIO using Docker was also a useful experience. I learned how to run a container, expose ports, and configure environment variables for the MinIO administrator account. Using Docker made the deployment process more organized because MinIO could run inside a container without requiring a traditional installation on the system. I also learned how port `9001` provides access to the MinIO Web Console.

Creating the `client-photos` bucket helped me understand how object storage organizes uploaded files. I was able to access the MinIO Web Console, create a bucket, and upload a sample file. This showed me how object storage can be used for applications that allow users to upload and manage photos.

In an enterprise environment, cloud object storage can provide scalable storage for large amounts of data. It can be useful for storing backups, images, videos, documents, and other unstructured files. As the amount of data grows, object storage can support applications that need to manage many objects.

This activity also improved my confidence with Linux and command-line tools. I practiced Docker commands, checked running containers using `docker ps`, and used the terminal to verify the MinIO deployment. Overall, the activity gave me practical experience in deploying and managing an object storage service using Docker and MinIO.
