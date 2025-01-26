@echo off

call python ./keyfinder.py
call python ./clean_duplicates.py
call python ./clean_empty.py
PAUSE
