# Mosh 2
A simple but powerful alternative frontend for Mosh

### Key Features
 - Simple and portable
 - Supports SSH command line arguments without any change
 - Developed for performance. Connect in as low as `~0.020s`.
 - Provides session caching for instant connection

### Requirements
- [Mosh](https://mosh.mit.edu/)
- Not a requirement, but tested only on Ubuntu

### Installation
- Just run `wget -q https://raw.githubusercontent.com/VarunAgw/Mosh-2/master/install.sh -O - | bash` and then restart your shell program!

### Features

#### Supports SSH command format
In SSH you do `ec2 -v -p 2020`

In Mosh you have to do: `mosh ec2 --ssh="-v -p 2020"`

In Mosh 2 you can just do: `mosh ec2 -v -p 2020`

### Support SSH Multiplexing
Original Mosh client disable SSH multiplexing with no workaround to enable it. With multiplexing, you can re-use existing TCP for multiple concurrent SSH sessions rather than creating a new one each time. Result is much faster connections.
    
```bash
# Without SSH Multiplexing
$ time ssh ec2 ls >/dev/null

real    0m1.965s
user    0m0.016s
sys     0m0.008s

# With SSH Multiplexing
$ time ssh ec2 ls >/dev/null

real    0m0.375s
user    0m0.004s
sys     0m0.000s
```

To enable SSH Multiplexing, add this on in your `~/.ssh/config`
```bash
Host *
        ControlPath /var/tmp/ssh-%r@%h:%p
        ControlMaster auto
        ControlPersist 5m
```

For more information regarding Multiplexing, see [this] (https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Multiplexing).

### Session caching
It supports caching of a new SSH session. So a new cached session will always be ready for you to access anytime. It can reduce session connection time to `~0.020s`

To use this feature, just replace `mosh` with `mosh-cache` in your commands.

#### Provide shortcode for `--predict=experimental`
In Mosh you have to do: `mosh ec2 --predict=experimental`

In Mosh 2 you can just do: `mosh ec2 -pe`
