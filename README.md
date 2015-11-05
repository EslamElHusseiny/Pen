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

[![](https://badge.imagelayers.io/eslam/pen:latest.svg)](https://imagelayers.io/?images=eslam/pen:latest 'Get your own badge on imagelayers.io')
