$storageAccountParams = @{
    'ResourceGroupName' = 'AZ-400'
    'Name' = 'az400exam92'
}

$upload = Get-AzStorageAccount @storageAccountParams
$context = $upload.Context

# Set the Storage Blog content
$containerParams = @{
    'Container' = 'test'
    'File' = "C:\Users\mleva\Desktop\test.txt"
    'Context' = $context
}

Set-AzStorageBlobContent @containerParams