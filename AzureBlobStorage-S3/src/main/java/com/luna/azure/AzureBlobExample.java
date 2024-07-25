package com.luna.azure;

import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.BlobServiceClient;
import com.azure.storage.blob.BlobServiceClientBuilder;
import com.azure.storage.blob.models.BlobItem;

import java.net.URI;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Hello world!
 */
public class AzureBlobExample {

    public static void main(String[] args) {
        String connectionString =
                "DefaultEndpointsProtocol=https;AccountName=lunasynthia;AccountKey=2OsvC9KpX78Kt/jfAoyYqn2OjzQDzKxQeSi+FREQxwzO1u4X2eM6cxioDBjqa384MTWeL6Q4y/xa+AStvYEGuQ==;EndpointSuffix=core.windows.net";
        String containerName = "lunacontainer";
        String blobName = "myblob.txt";
        String filePath = "C:\\Users\\farin\\IdeaProjects\\azure-hands-on\\AzureBlobStorage-S3\\src\\main\\java\\com\\luna\\azure\\hello.txt";
        String downloadFilePath = "C:\\Users\\farin\\IdeaProjects\\azure-hands-on\\AzureBlobStorage-S3\\src\\main\\java\\com\\luna\\azure";

        BlobServiceClient blobServiceClient = new BlobServiceClientBuilder()
                .connectionString(connectionString)
                .buildClient();

        BlobContainerClient containerClient = blobServiceClient.getBlobContainerClient(containerName);
//        upload(containerClient, blobName, filePath);
        list(containerClient);
        download(containerClient, downloadFilePath, "kinesis.txt");
    }

    private static void upload(BlobContainerClient containerClient, String blobName, String filePath) {
        containerClient.getBlobClient(blobName).uploadFromFile(filePath); //putObject in S3
    }

    private static void list(BlobContainerClient containerClient) {


        for (BlobItem blobItem : containerClient.listBlobs()) {
            System.out.println("Blob name: " + blobItem.getName());
        }
    }

    private static void download(BlobContainerClient containerClient, String downloadFilePath, String blobName) {
        Path downloadPath = Paths.get(downloadFilePath);
        containerClient.getBlobClient(blobName).downloadToFile(downloadPath.toString());
    }
}