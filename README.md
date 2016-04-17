## Fork of `fb.debugger`: dependency-free

`fb.debugger` is an excellent debugger for torch and lua in general, and can be found at <https://github.com/facebook/fblualib>.
However, `fblualib` and its dependencies are quite heavy but you may just want the debugger. This repository is a fork of `fb.debugger` with dependencies integrated and/or removed. 

### Install:
```
luarocks install https://raw.githubusercontent.com/bshillingford/fbdebugger-minimal/master/fbdebugger-standalone-1.rockspec 
```

### Dependencies:

* `penlight >= 1.3.1`
* `libedit` installed in your system (`libedit.so` anywhere in the library search path).

