# elena web
portfolio / cv for Elena García Maldonado 
https://www.linkedin.com/in/elenagarciamaldonado/

# project links
- Container registry https://console.cloud.google.com/gcr/images/elena-web?project=elena-web
- Cloud run https://console.cloud.google.com/run?project=elena-web

# pyhton on mac
```commandline
brew install pyenv
pyenv install --list
pyenv versions
pyenv install 3.10.5
pyenv global 3.10.5
```

Add `eval "$(pyenv init --path)"` to ~/.zprofile (or ~/.bash_profile or ~/.zshrc, whichever you need)
```commandline
vim ~/.zshrc
```

# cloud run port error
```
"Failed to start and then listen on the port defined by the PORT environment variable."
```

solution ->  https://stackoverflow.com/questions/66127933/cloud-run-failed-to-start-and-then-listen-on-the-port-defined-by-the-port-envi
```
build your Docker container with the --platform linux/amd64 flag before deploying the image to Cloud Run
```

# useful information
- base theme:
https://themewagon.com/themes/free-bootstrap-5-html5-organic-food-website-template-foody/
- base project:
https://github.com/nicanor-romero/cloud-run-web-scaffolding
