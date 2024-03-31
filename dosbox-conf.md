# Multiple Dosbox configurations

(AKA Composing Dosbox configurations) 

Different Dosbox applications (ok, sure: games) might require slightly 
customized configurations to run optimally. How can we best use Dosbox features 
to make custom configurations easy to use? Lets look at two examples.

(There are many more examples in the excellent wiki: 
https://github.com/dosbox-staging/dosbox-staging/wiki/Config-file-examples)

## Custom key map example: F22 Lightning

I'll take the example of [F22 Lightning 
II](https://en.wikipedia.org/wiki/F-22_Lightning_II). This game, made in 1996 
expects you to play with an IBM-type keyboard: some of the functions require 
numpad keys to be pressed.

I play on a keyboard with no numpad, so I wanted to remap a few unused keys to 
important numpad keys. I used the 
[keymapper](https://github.com/dosbox-staging/dosbox-staging/wiki/Keymapper) to 
generate a keymap file (`f22.map`). Now I wanted to load this when I played F22, 
but not otherwise.

One way is to use the command `config -set sdl mapperfile=f22.map` once inside 
`dosbox`. However, if I know I'm going to run F22 it's more convenient to have a 
config file just to set up things for F22. Only the changed bits need to be 
added.

```
[sdl]
mapperfile=f22.map
[autoexec]
cd F22
F22.EXE
```


## Custom setup example: Crusader No Regret 

Crusader needs to run from the CD, so we have to first mount the image.

```
[autoexec]
imgmount d /home/kghose/RetroComputing/dosbox/CrusRegr/cd/Crusader_No_Regret.cue -t iso
cd CRUSREGR\REGRET
REGRET.EXE
```
