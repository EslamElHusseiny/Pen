# Pen
A load balancer for simple udp, tcp based protocols such as http or smtp for Unix.

### Build Docker image
```
docker build -t pen:latest .
```

### Run a container examples
```
docker run -d --name MyLB -e UDP_PORT=5050 -e UDP_BACKENDS='1.2.3.4 1.1.1.1'
```

```
docker run -d --name MyLB -e TCP_PORT=8080 -e TCP_BACKENDS='1.2.3.4 1.1.1.1'
```

```
docker run -d --name MyLB -e TCP_PORT=8080 -e TCP_BACKENDS='1.2.3.4 1.1.1.1' -e UDP_PORT=5050 -e UDP_BACKENDS='1.2.3.4 1.1.1.1'
```

TODO: write a description.

[![](https://images.microbadger.com/badges/version/eslam/pen.svg)](http://microbadger.com/images/eslam/pen "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/license/eslam/pen.svg)](http://microbadger.com/images/eslam/pen "Get your own license badge on microbadger.com") [![](https://images.microbadger.com/badges/image/eslam/pen.svg)](http://microbadger.com/images/eslam/pen "Get your own image badge on microbadger.com")
