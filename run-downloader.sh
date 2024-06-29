#!/bin/bash
rm rf ./venv
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt

../bandcamp-downloader.py --browser firefox --format flac --directory ./mycollection/flac <username>

../bandcamp-downloader.py --browser firefox --format mp3-320 --directory ./mycollection/mp3 <username>
