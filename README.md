# Tools for the Unacloud Task Scheduler

## Compilation

To compile the tools, and produce a `.deb` package installer

```
fakeroot debian/rules binary
```

To just compile the tools

```
make
```

## Installation

Once, you have compiled and generated the `.deb` file to install the tools

```
cd ..
sudo dpkg -i unacloud-task-tools_0.1_amd64.deb
```
 
## Running the tools

Once installed the sofware, you can run the tools

```
register_uc <pid>
```