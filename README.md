# minecraft-the-1.7.10-mod
Minecraft server running the 1.7.10 mod


## Example

```
version: '2'

services:
  mc-1710-mod:
    image: goarano/minecraft-the-1.7.10-mod
    container_name: 'mc-1710-mod'
    restart: always
    tty: true
    stdin_open: true
    environment:
      - EULA_AGREE=true
    ports:
      - "25565:25565"
    volumes:
      - tekkit-1710-mod-game1:/app
      - /srv/tekkit/1.7.10-mod/game1/server.properties:/app/server.properties
      - /srv/tekkit/1.7.10-mod/game1/ops.json:/app/ops.json
      - /srv/tekkit/1.7.10-mod/game1/whitelist.json:/app/whitelist.json
      - /srv/tekkit/1.7.10-mod/game1/logs/:/app/logs/
      - /srv/tekkit/1.7.10-mod/game1/world/:/app/world/
      - /srv/tekkit/1.7.10-mod/game1/config/:/app/config/

volumes:
  mc-1710-mod-game1:
```


