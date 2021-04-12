# fricas_http :construction: :rocket:
FriCAS HTTP Server/Client (cl-hunchentoot/cl-drakma)

## Prerequisites

 * [FriCAS](http://fricas.sourceforge.net/)
 * [ASDF](http://common-lisp.net/project/asdf/) (`sudo apt install cl-asdf`)
 * [Hunchentoot](http://weitz.de/hunchentoot/) (`sudo apt install cl-hunchentoot`)
 * [Drakma](https://edicl.github.io/drakma/) (`sudo apt install cl-drakma`)
 
For other Linux distros you may use the adequate install tool.

## Installation
None, but you have to compile the files. 

``` 
  )compile httpcli
  )compile httpsrv
```

## Start

`fricas_http`


## Test

 * `http://localhost:4242/eval?code=D(x^n,x,2)`
 * `http://localhost:4242/json?code=D(x^n,x,3)`



 

