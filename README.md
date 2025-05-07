
            ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗███████╗██████╗  █████╗  ██████╗███████╗███████╗
            ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝
            ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ███████╗██████╔╝███████║██║     █████╗  ███████╗
            ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  ╚════██║
            ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗███████║██║     ██║  ██║╚██████╗███████╗███████║
             ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝╚══════╝
                                                                           

> **workspaces** ***is a command line utility that allows your projects to***
> ***live side-by-side. It enables manageable and maintianable projects by***
> ***simplifying the ability to access and control each project and their contents.***

# Why Bash as The Language of Choice?

**Bash** simplifies the ability to work with the shell by leveraging it's built-in
commands. Though, the plan is to also rewrite **workspaces** in a more performant
language, bash is a great choice as workspaces involve creating, changing, and
deleting directories.

## Commands

```bash
# add contents to a workspace
workspaces add NAME [+dir ARG] [+file ARG]

# clear the trash or cache directory
workspaces clr [+trash] [+cache]

# delete an existing workspace
workspaces del NAME [+dir ARG] [+file ARG]

# find contents in a particular workspace
workspaces fnd NAME [+dir ARG] [+file ARG]

# get command help
workspaces hlp [+usage]

# initialize the .workspace directory
workspaces init

# jump to a partictular workspace
workspaces jmp NAME

# create a new workspace
workspaces new NAME

# restore / revert workspace changes
workspaces res NAME

# track changes in a particular workspace
workspaces trk NAME [+stop]
```
