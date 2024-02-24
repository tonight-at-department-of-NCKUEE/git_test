    # Your script code goes here
    $containerName = "gcc-6.3.0"
    $containerExists = docker ps -a | Select-String -Pattern $containerName
	
    & "C:\Program Files\Docker\Docker\Docker Desktop.exe"

    if ($containerExists) {
        Write-Host "Container '$containerName' exist."
        Write-Host "Starting container '$containerName'."
        docker start -i $containerName
    } else {
        Write-Host "Container '$containerName' does not exist."
        Write-Host "Creating container '$containerName'."
        docker run --name="$containerName" -it -v ${PWD}:/projects gcc:6.3.0
    }





