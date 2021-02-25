### ReadyNAS SickChill
![sickchill Logo](https://raw.githubusercontent.com/SickChill/readynas-sickchill/master/rn-files/logo.png)

**SickChill** ReadyNAS app are available from the [ReadyNAS App Store](https://apps.readynas.com/pages/?page_id=9) or [Latest Release](https://github.com/sickchill/readynas-sickchill/releases/latest).

Early releases will be available from the [GitHub Releases](https://github.com/sickchill/readynas-sickchill/releases).

**You must have python 3.6 or later to use this package!**
An example script that might work for you directly is available here: `https://github.com/SickChill/readynas-sickchill/blob/master/build_python.sh`
The script must be run as root or you can input the commands one by one as root.

#### Deb build process:
```bash
sudo apt-get install devscripts build-essential lintian
debuild -i -us -uc -b
```
