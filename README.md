# Custom rosdep keys definitions for packages not in the official rosdep lists

See [gokart-dependencies.yaml](./gokart-dependencies.yaml) for the list of the defined keys.


## Usage

1. Install the list file using the `./install.sh` script. See [Installation](#installation).
2. Then, periodically run `rosdep update` which will automatically download an up-to-date copy
   of [gokart-dependencies.yaml](./gokart-dependencies.yaml) from this GitHub repository.


### Installation

```bash
./install.sh
```

It will copy the [10-upenn-gokart-dependencies.list](./10-upenn-gokart-dependencies.list) into
the `/etc/ros/rosdep/sources.list.d` directory. Then it will run `rosdep update`.


### Uninstallation

```bash
./uninstall.sh
```

It will remove the [10-upenn-gokart-dependencies.list](./10-upenn-gokart-dependencies.list) (and possibly also the older
variants) from the `/etc/ros/rosdep/sources.list.d` directory. Then it will run `rosdep update`.


## Resources

* https://github.com/ros-infrastructure/rosdep
* [rosdep documentation](http://docs.ros.org/en/independent/api/rosdep/html/)
* [rosdep YAML format](http://docs.ros.org/en/independent/api/rosdep/html/rosdep_yaml_format.html)
