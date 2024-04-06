@echo off

IF %SECRET_KEY_BASE%=="" (
   echo SECRET_KEY_BASE not set. Please set it to the value of `rails secret`
   exit /b 1
)

call gcloud builds submit
call gcloud run deploy dhdl --update-env-vars SECRET_KEY_BASE=%SECRET_KEY_BASE% --region=us-east1 --allow-unauthenticated --image gcr.io/dhdl-poc/rails-dhdl
