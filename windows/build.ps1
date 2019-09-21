pushd $PSScriptRoot

# Get-ChildItem -Recurse -Filter dockerfile | foreach {
# 	$tag = $_.Directory.Name
# 	docker build -t $tag $_.DirectoryName
# }

$tag = "mssql-server-windows-developer"
docker build -t $tag $tag

popd
