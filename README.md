# fricas_http :construction: :rocket:
FriCAS web service (cl-hunchentoot)

## Prerequisites

 * Linux (Ubuntu/Debian for the moment)
 * [FriCAS](http://fricas.sourceforge.net/) compiled with a newer [SBCL](http://sbcl.org/)
 * [ASDF](http://common-lisp.net/project/asdf/) (`apt install cl-asdf`)
 * [Hunchentoot](http://weitz.de/hunchentoot/) (`apt install cl-hunchentoot`)

## Installation

`sudo make install`

## Uninstall

`sudo make uninstall` 

## Start

`fricas_http`


## Test

 * `http://localhost:4242/eval?code=D(x^n,x,2)`
 * `http://localhost:4242/json?code=D(x^n,x,3)`



 

