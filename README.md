
        ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗███████╗██████╗  █████╗  ██████╗███████╗
        ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝
        ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ███████╗██████╔╝███████║██║     █████╗  
        ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  
        ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗███████║██║     ██║  ██║╚██████╗███████╗
         ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝
                                                                           

## About

> A command line utility enabling a way to create and manage workspaces in the terminal.
> Instead of having project folders all over the place, they can all be in one place.
> All workspaces are put into a dedicated workspaces directory called **.workspace**
> located in the users home folder which makes it easier to manage its contents.

## Commands


```bash
# create a new workspace
workspace create <-d DIRECTORY | -f FILE> <NAME>

# delete an existing workspace
workspace delete <-d DIRECTORY | -f FILE> <NAME>

# get help on workspace commands and options
workspace helper [-u] [COMMAND]

# search a workspace for a file or directory
workspace search <-d DIRECTORY | -f FILE> <NAME>
```
