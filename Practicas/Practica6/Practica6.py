import requests
from urllib import request
from urllib.request import urlopen
from bs4 import BeautifulSoup
#imprimir el titulo de la pagina y los links que se encuentran en ella
url = "https://www.google.com/"
re = requests.get(url)
html = urlopen(url)
info = re.text
soup = BeautifulSoup(html, "lxml")
title = soup.title 
titleText = title.get_text()
print(titleText)
soup = BeautifulSoup(info,'html.parser')
print(soup.find_all('a'))
for link in soup.find_all('a'):
    if link is not None:
        print(link.get('href'))