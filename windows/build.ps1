pushd $PSScriptRoot

# Get-ChildItem -Recurse -Filter dockerfile | foreach {
# 	$tag = $_.Directory.Name
# 	docker build -t $tag $_.DirectoryName
# }

$tag = "mssql-server-windows-developer"
Get-ComputerInfo | select WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer

docker build -t robertoandrade/$tag-ssis-ssrs $tag

popd
