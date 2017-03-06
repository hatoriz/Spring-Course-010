#Microservices using Java Spring Boot
by Dean 4-5 March 2017 @ Geeky Base
[![Build Status](https://travis-ci.org/hatoriz/Spring-Course-010.svg?branch=master)](https://travis-ci.org/hatoriz/Spring-Course-010)

## How to integrate with Eureka
Put eureka config to file bootstrap.yml
```
eureka:
  client:
    serviceUrl:
      defaultZone: http://${eureka_server}:8761/eureka/
```    

##High Level Architecture
```                                                                           
              ┌─────────────────┐                                             
              │                 │                                             
              │  Eureka Server  │                                             
              │      :8761      │                          ┌─────────────────┐
              │                 │                          │                 │
              └─────────────────┘                          │ Product Service │
                       ▲                            ┌──────│      :8080      │
                       └────────────┐               │      │                 │
                                    │               │      └─────────────────┘
                                    ▼               │                         
                           ┌─────────────────┐◀─────┘      ┌─────────────────┐
                           │                 │             │                 │
                           │   Zuul Server   │             │  Order Service  │
                           │      :6060      ◀─────────────│      :8081      │
                           │                 │             │                 │
                           └─────────────────┘◀─────┐      └─────────────────┘
                                    ▲               │                         
                       ┌────────────┘               │      ┌─────────────────┐
                       │                            │      │                 │
              ┌────────▼────────┐                   │      │Tracking Service │
              │                 │                   └──────│      :8082      │
              │  Config Server  │                          │                 │
              │      :9000      │                          └─────────────────┘
              │                 │                                             
              └─────────────────┘                                          
```
