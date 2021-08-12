# Pass extensions to generate pin and dice passwords

This is an extension of Pass, the Unix password manager: (https://www.passwordstore.org/) [] 
Written in rust.


## Prerequisites
- Cargo rust compiler

Anything else that is necessary but not installed will be taken care of by Cargo.

## Usage

To generate a random pin just do:
`pass pin filename`.
Alternatively you can choose the pin length:
`pass pin filename 7`.

Then you can run:
```
pass show filename
    3819245
```



## Installation
Just run
```
sudo make install
```


