# Types of Cloud Storage

## Cloud Storage Comparison

| **Storage Type** | **Description** | **Primary Use Case** | **Cloud Provider Example** |
|---|---|---|---|
| **Block Storage** | Stores data in fixed-size blocks that can be accessed individually. | Best for virtual machines, operating systems, and databases that need fast access to data. | AWS EBS (Elastic Block Store) |
| **File Storage** | Stores data as files inside folders and directories, similar to a traditional computer file system. | Best for shared files, documents, and applications that need access to the same files. | AWS EFS (Elastic File System) |
| **Object Storage** | Stores data as individual objects that contain the data, metadata, and a unique identifier. | Best for storing large amounts of unstructured data such as images, videos, backups, and other media files. | AWS S3 (Simple Storage Service) |

## Why Object Storage?

Object Storage is a good choice for the client's photo-sharing application because it can efficiently store and manage a large number of user-uploaded images. It is also designed to scale as the amount of data increases, making it suitable for storing millions of photos.
