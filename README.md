# docker-symfony

This tool is made so that you can create and use a **Symfony** project inside of a docker container

> This tools will require <a href="https://www.gnu.org/software/make/">_Make_</a> to interact with.

You can copy your project in the root directory and rename it `app` to use it.

> remember to edit the database URL in your symfony's `.env`

```bash
DATABASE_URL="mysql://root:secret@database:3306/symfony_app?serverVersion=8.0"
```

## Different command to use with _make_

| command         | description                                                                          |
| --------------- | ------------------------------------------------------------------------------------ |
| dev             | will start the docker let you enter in bash in it and stop it after you typed `exit` |
| start           | will start the server                                                                |
| stop            | will stop the server                                                                 |
| restart         | will restart the server                                                              |
| install         | will start the server and create a new symfony project                               |
| fix-permissions | will fix permission to let root and user access to _./app_ files                     |
| bash-php        | will let enter in bash for the php container                                         |
| remove          | will uninstall the symfony project (without remove the database)                     |

> example : `make start`

## Ports

| port | container  |
| ---- | ---------- |
| 3306 | database   |
| 9000 | php        |
| 80   | nginx      |
| 8080 | phpmyadmin |

> <a href="https://www.twilio.com/blog/get-started-docker-symfony">I made this tool using this tutorial</a>

# Xdebug

Xdebug is installed on the php container on the port 9003.

A launch file for vscode can be found vscode in the vscode directory of this project.