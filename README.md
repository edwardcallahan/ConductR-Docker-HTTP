# Example ConductR Docker Webserver

Example of using Docker containers with ConductR

## Use

Run build-bundle.sh to generate a bundle that can be loaded and started in [ConductR](https://conductr.typesafe.com).

## Start Command

Note that the start-command in status uses the endpoint name.

```bash
start-command = ["check", "--initial-delay=5", "docker+$WEBSERVER_HOST"]
```
Where `WEBSERVER_HOST` is an environment variable provided by ConductR because of the endpoint named webserver.

For additional information, please see the [ConductR Documentation](https://conductr.typesafe.com)

