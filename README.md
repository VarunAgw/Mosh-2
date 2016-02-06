# Mosh 2
A simple but powerful alternative frontend for Mosh

### Key Features
 - Simple and portable
 - Supports SSH command line arguments without any change
 - Created for speed. Supports SSH Multiplexing unlike original Mosh client.
 - Provides session caching for instant connection

### Requirements
- [Mosh](https://mosh.mit.edu/)
- Not a requirement, but tested only on Ubuntu

### Installation
- Just run `wget https://raw.githubusercontent.com/VarunAgw/Mosh-2/master/install.sh -O - | bash` on your bash

### Features

#### Supports SSH command format
In Mosh you do: `mosh ec2 --ssh="-v -p 2020"`
In Mosh 2 you can just do: `mosh ec2 -v -p 2020`. i.e. just replace ssh with mosh

### Support SSH Multiplexing
Original Mosh client disable SSH multiplexing with no way to enable it. With SSH multiplexing, you can reuse same TCP connection for further SSH connection to a server. Result is much faster connections.

time taken now vs 

### Session caching
It supports session caching. So a cached session will already be ready for you to access anytime. 
To use it, just replace `mosh` with `mosh-cache` in your command.
time take nwo vs 


#### Provide shortcode for `--predict=experimental`
In Mosh you do: `mosh ec2 --predict=experimental`
In Mosh 2 you can just do: `mosh ec2 -pe`
