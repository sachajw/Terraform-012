terraform {
    backend "s3" {
        key = "terraform/tfstate.tfstate"
        bucket = "tj-remote-backend"
        region = "af-south-1"
        access_key = ""
        secret_key = ""
    }
}
