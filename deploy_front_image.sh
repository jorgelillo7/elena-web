echo "Building image"

export CLOUDSDK_PYTHON=/Users/jorge/.pyenv/shims/python

# Edit these values
gcp_account="jorge.lillo9@gmail.com"
gcp_project_name="elena-web"
image_name="elena-web-front"
cloud_run_name="elena-web-front"

docker build -t us.gcr.io/${gcp_project_name}/$image_name . --platform linux/amd64

previous_account=$(gcloud config get-value account)
previous_project=$(gcloud config get-value project)

tmp_account=$gcp_account
tmp_project=$gcp_project_name

echo "Setting temporary values"
echo "account=$tmp_account"
echo "project=$tmp_project"
gcloud config set account $tmp_account
gcloud config set project $tmp_project

echo "Pushing image"

docker push us.gcr.io/${gcp_project_name}/${image_name}

echo "Deploying image"

gcloud run services update ${cloud_run_name} --image=us.gcr.io/${gcp_project_name}/${image_name}:latest

echo "Restoring previous values"
echo "account=$previous_account"
echo "project=$previous_project"
gcloud config set account $previous_account
gcloud config set project $previous_project