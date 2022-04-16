# docker-symfony

This tool is made so that you can create and use a **Symfony** project inside of a docker container

> This tools will require <a href="https://www.gnu.org/software/make/">_Make_</a> to interact with.

You can copy your project in the root directory and rename it `app` to use it.

> remember to edit the database URL in your symfony's `.env`

## Different command to use with _make_

| command         | description                                                      |
| --------------- | ---------------------------------------------------------------- |
| install         | will start the server and create a new symfony project           |
| fix-permissions | will fix permission to let root and user access to _./app_ files |
| start           | will start the server                                            |
| stop            | will stop the server                                             |
| bash-php        | will let enter in bash for the php container                     |
| remove          | will uninstall the symfony project (without remove the database) |

> example : `make start`

## Ports

| port | container |
| ---- | --------- |
| 3306 | database  |
| 9000 | php       |
| 8080 | nginx     |
