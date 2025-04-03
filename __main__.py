import sys
import os
import platform
from modules import w_commands, w_utils

def pre_validation() -> tuple[int, str]:
    home_folder: str | None = os.getenv("HOME")
    wroot = ".workspace"

    if not w_utils.has_wroot():
        if not home_folder:
            return (1, "Cannot find the HOME directory.")
        else:
            status: int = w_utils.make_wroot(home_folder, wroot)
            if status == 0:
                os.mkdir(home_folder + wroot)
                return (0, "")
            else:
                return (1, f"Failed to create '{wroot}' in '{home_folder}'")
    else:
        return (0, "")

def main(argc: int, argv: list[str], /) -> int:
    is_valid: tuple[int, str] = pre_validation()

    if is_valid[0] == 1:
        sys.stderr.write(is_valid[1])
        raise SystemExit(is_valid[0])
    else:
        return 0

if __name__ == '__main__':
    if platform.system() != "Linux":
        sys.stderr.write("Platform not supported.")
        raise SystemExit(1)

    else:
        argv: list[str] = sys.argv[1:]
        argc: int = len(argv)
        main(argc, argv)
