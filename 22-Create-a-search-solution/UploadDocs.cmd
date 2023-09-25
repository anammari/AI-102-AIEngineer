@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=ba4bc893-505c-418b-ade3-ab84b9d3c233
set azure_storage_account=ai102form272521956
set azure_storage_key=7QAB55G9Z75oVvJ9b6CL93R+AKgFqfOMOpCrzTrF9pg1Bg04VCPxzniR0gGgWvUmPsVmUbfJ7kH8+AStKasBug==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
