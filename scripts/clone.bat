:<<BATCH
    @echo off
for /F "tokens=*" %%A in (scripts/repo.txt) do git clone --branch evaluation_error_masking %%A
    exit /b
BATCH
xargs -L1 git clone --progress --branch evaluation_error_masking < scripts/repo.txt