#encoding:UTF-8
import urllib.request

url = "http://next-st.nhn-playart.com/"
data = urllib.request.urlopen(url).read()
data = data.decode('UTF-8')
print(data)
