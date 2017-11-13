# docker-curator

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/morkot/curator/builds/)
[![](https://images.microbadger.com/badges/image/morkot/curator.svg)](https://microbadger.com/images/morkot/curator)

Dockerized version of Curator used for managing indices of Elasticsearch. You can delete, re-index, restore and much more using this tool.

## Usage

### Pull image

```bash
docker pull morkot/curator
```

### Run example

```bash
docker run --rm \
-v ~/Dev/curator/examples/actions/delete_indices.yml:/actions.yml \
-v ~/Dev/curator/examples/curator.yml:/config.yml morkot/curator \
--dry-run \
--config /config.yml \
/actions.yml

2017-08-22 22:30:14,706 INFO      Action ID: 1: "delete_indices" not performed because "disable_action" is set to True
2017-08-22 22:30:14,706 INFO      Job completed.
```

### References

- [Curator Documentation](https://www.elastic.co/guide/en/elasticsearch/client/curator/current/index.html)
- [Curator Github Project](https://github.com/elastic/curator)
