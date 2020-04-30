Simple project for setting up GitHub actions with docker-compose and pytest

Run locally:
```
docker-compose up -d
docker-compose exec app pytest
```

# GitHub actions failure
```
Test with pytest1s
##[error]Process completed with exit code 255.
Run docker-compose exec app pytest
[3233] Failed to execute script docker-compose
Traceback (most recent call last):
  File "site-packages/dockerpty/pty.py", line 334, in start
  File "site-packages/dockerpty/pty.py", line 367, in _hijack_tty
  File "site-packages/dockerpty/io.py", line 59, in select
  File "site-packages/dockerpty/io.py", line 351, in fileno
  File "site-packages/dockerpty/io.py", line 103, in fileno
  File "socket.py", line 638, in fileno
ValueError: I/O operation on closed file.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "bin/docker-compose", line 6, in <module>
  File "compose/cli/main.py", line 72, in main
  File "compose/cli/main.py", line 128, in perform_command
  File "compose/cli/main.py", line 519, in exec_command
  File "site-packages/dockerpty/pty.py", line 338, in start
  File "site-packages/dockerpty/io.py", line 32, in set_blocking
  File "site-packages/dockerpty/io.py", line 351, in fileno
  File "site-packages/dockerpty/io.py", line 103, in fileno
  File "socket.py", line 638, in fileno
ValueError: I/O operation on closed file.
##[error]Process completed with exit code 255.
```

# GitHub actions without setting COMPOSE_INTERACTIVE_NO_CLI env variable
```
Test with pytest1s
##[error]Process completed with exit code 1.
Run docker-compose exec app pytest
the input device is not a TTY
##[error]Process completed with exit code 1.
```