# Docker Homeydash

Docker Homeydash is an open-source project for wall-mounted Homey dashboards...    
Credits to homeydash.com and Homey.ink!    
   
More info and screenshots: https://github.com/daneedk/homeydash.com   

```
docker run -d --name homeydash --restart always -p 5000:5000 r0gger/docker-homeydash   
```
Link and theme:   
`http://ip-address:5000/?theme=web&lang=en&token=<TOKEN>`   
`http://ip-address:5000/?theme=iphone&lang=en&token=<TOKEN>`   
`http://ip-address:5000/?theme=ipad&lang=en&token=<TOKEN>`    
    
> Your token can be acquired by visiting https://homey.ink and looking in the console after logging in.

### Repository builds:   
Running on a Scaleway VI using [NGINX Proxy Manager](https://github.com/jc21/nginx-proxy-manager) and a HomeyDash build ofcourse.   
    
**Daneedk:** https://homeydash.app   
**Athombv:** https://athom.homeydash.app    
**Homeycornelisse**: https://homeycornelisse.homeydash.app   
    
## Build a custom repository yourself.
```
git clone https://github.com/R0GGER/docker-homeydash.git
```

Choose your repo you want to build:   
REPO=athombv or daneedk
```
docker build --build-arg REPO=athombv -t homeydash .
```

Run and test (remove after exit)
```
docker run --rm --name homeydash -p 5000:5000 homeydash
```

Run (and keep it running)
```
docker run -d --name homeydash --restart always -p 5000:5000 homeydash
```
