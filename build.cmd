del /s /q .openapi-generator docs lib test > nul 2>&1

docker pull spysystem/openapi-generator:spy_branch

docker run^
    --rm^
    -v "%cd%":/local^
    spysystem/openapi-generator:spy_branch^
    generate^
    --generator-name php^
    --config /local/config.yaml^
    --input-spec /local/filemaker.yaml^
    --output /local

git add . > nul 2>&1
