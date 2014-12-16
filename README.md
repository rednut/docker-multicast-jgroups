# Multicast Group Testing using jgroups

thanks:http://www.linuxproblems.org/wiki/How_to_check_Multicasting


## Reciever
`docker run -i -t --rm rednut/mcast-jgroups` or `docker run -i -t --rm rednut/mcast-jgroups`

## Sender
`docker run -i -t --rm rednut/mcast-jgroups sender`

# Environmental Variables
- `MCAST_ADDR=231.12.21.132` set the multicast address for the sender / receiver
- `MCAST_PORT=45566` port to listen / send on 


## Full Example

### SENDER
`docker run -i -t --rm -e MCAST_ADDR=231.12.21.132 -e MCAST_PORT=45566 -e ACTION=sender rednut/mcast-jgroups`

### RECEIVER
`docker run -i -t --rm -e MCAST_ADDR=231.12.21.132 -e MCAST_PORT=45566 -e ACTION=receiver rednut/mcast-jgroups`


