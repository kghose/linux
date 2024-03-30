# Multiple history files for Bash

TL;DR

```
# In ~/.bashrc or your startup file

# Create a directory for history files if needed.
HISTDIR="${HOME}/.history.d"
mkdir -p ${HISTDIR}

# Create a separate history file for each tty.
export HISTFILE="${HISTDIR}/tty`tty|cut -c10-`.hist"
# Append to history rather than overwrite it
shopt -s histappend
```

If you like to keep multiple terminals open for different purposes and you 
wanted a way to keep the command history for each of them, and keep them 
separate, then read on!

---


I keep separate terminals open for differnet purposes. One terminal is for 
system maintenance (installing packages, configurations etc).  A few terminals 
for writing, a few for coding, a few for experiments.

The default behavior of `bash` is to write out the history at the end of each 
session, overwriting the default history file (`~/.bash_history`). This is 
unsatisfactory because the history in all the other terminals is important. 

I love linux because systems can have uptimes in years, but I usually I have to 
reboot my laptop once a week to apply security updates that come along. My 
browser can restart its tabs, but I have to manually reopen all my terminals, 
and now I've lost their history.

Fortunately, we have a solution to the history issue by using the following 
features bash and the linux kernel offers us:

1. We can customize what history file bash saves to _on a per session basis._
1. There is a command (`tty`) that tells us which `terminal` we are currently 
   on, and each terminal we open gets a unique number.

Using these two features we can set things up so that whenever we open a 
terminal we tell bash to save history to a file tied to the terminal, rather 
than a common shared file.

Here is the relevant part of my `~/.bashrc`

 ```
# Create a directory for history files if needed.
HISTDIR="${HOME}/.history.d"
mkdir -p ${HISTDIR}

# Create a separate history file for each tty.
export HISTFILE="${HISTDIR}/tty`tty|cut -c10-`.hist"
# Append to history rather than overwrite it
shopt -s histappend

# These are personal preferences,
# not needed for multiple history files
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

# A creature comfort to remind ourselves that
# we're saving to non default history files
echo "History file: ${HISTFILE}"
```

With this setup, whenever we open a terminal it either creates or _reuses_ a 
history file based on its `tty` identity allowing us multiple histories for 
different terminals that perist across us closing and opening terminals. 

