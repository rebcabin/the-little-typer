from typing import List

import re


lang_re = re.compile(r'#lang')
triple_backtick_re = re.compile(r'^`[`]`((\w+)?\s*(id=([0-9a-fA-F-]+))?)')


if __name__ == "__main__":
    lines: List[str]
    with open("playground.html.pmd", "r") as infile:
        lines = infile.readlines()
    i: int = 0
    write_it: bool = False
    with open("test.pie", "w") as outfile:
        for line in lines:
            if not write_it and triple_backtick_re.match(line):
                write_it = True
                continue
            if write_it and triple_backtick_re.match(line):
                write_it = False
                continue
            if write_it:
                outfile.write(line)
    pass
