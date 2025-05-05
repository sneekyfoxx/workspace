
            ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗███████╗██████╗  █████╗  ██████╗███████╗
            ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝
            ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ███████╗██████╔╝███████║██║     █████╗  
            ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  
            ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗███████║██║     ██║  ██║╚██████╗███████╗
             ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝
                                                                           

## What is ***workspace***?

> **workspace** ***is a command line utility that allows your projects to***
> ***live side-by-side. It enables manageable and maintianable projects by***
> ***simplifying the ability to access and control each project and their contents.***

## Commands

```bash
# add contents to a workspace
workspace add NAME [+dirs ARGS] [+files ARGS]

# clear the trash or cache directory
workspace clr [+trash] [+cache]

# delete an existing workspace
workspace del NAME [+dirs ARGS] [+files ARGS]

# find contents in a particular workspace
workspace fnd NAME [+dirs ARGS] [+files ARGS]

# get command help
workspace hlp [+usage]

# jump to a partictular workspace
workspace jmp NAME

# create a new workspace
workspace new NAME

# restore / revert workspace changes
workspace res NAME

# track changes in a particular workspace
workspace trk NAME [+stop]
```
