## About
> RVM and Ruby on Debian

## Features

 * Based on `debian:jessie`
 * Latest stable RVM, installed as non-root
 * Ruby 2.3.1
 * Creates non-root user with sudo priveleges
 * Build arguments:
      - `RUBY_VERSION` (default: `2.3.1`)
      - `USERNAME` (default: `app`)

      Example usage:
      ```
      docker build --build-arg RUBY_VERSION=2.1
      ```

