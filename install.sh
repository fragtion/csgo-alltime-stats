#!/bin/bash

virtualenv venv
. venv/bin/activate

pip install requests selenium beautifulsoup4

PLATFORM=linux64
VERSION=$(curl http://chromedriver.storage.googleapis.com/LATEST_RELEASE)
curl http://chromedriver.storage.googleapis.com/$VERSION/chromedriver_$PLATFORM.zip --output chromedriver.zip
rm chromedriver.zip
