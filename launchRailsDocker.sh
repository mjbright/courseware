
#TAG=mjbright/docker-mooc-coursera-waa
TAG=mine/mooc
#TAG=mine/mooc3

CMD="rvm rails console"
CMD="mkdir -p /var/run/sshd/;chmod 755 /var/run/sshd/; /etc/init.d/ssh start; mkdir app1; rails new app1; cd app1; rails server"
CMD="/etc/init.d/ssh start; mkdir app1; rails new app1; cd app1; rails server"
CMD="/etc/init.d/ssh restart; bash"
CMD="/etc/init.d/ssh restart; while true; do sleep 10; done'
[ ! -z "$1" ] && CMD="$1"

#MOUNT="-v /home/user:$HOME/DOCKER/WAA"
DIR="$HOME/WebAppArch"
[ ! -d $DIR ] && mkdir -p $DIR

MOUNT="-v $DIR:/home/user"
SSH_PORT=2222
PORTS="-p $SSH_PORT:22 -p 3000:3000"

echo
echo "SSH listening on port $SSH_PORT"
echo "Rails listening on port 3000"
echo
echo "You may want to change the ssh 'user' password"
echo
#echo "docker run -i -t $PORTS $MOUNT $TAG bash -lc "$CMD""
#exit 0
#set -x
docker run -i -t $PORTS $MOUNT $TAG bash -lc "$CMD"


#LATEST_IMAGE=$(docker images | grep mooc | head -1 | awk '{print $1;}')

#docker run -i -t -p 2222:22 -v /home/mjb/RAILS:/tmp mine/mooc:20140518 bash
#docker run -i -t -p 2222:22 -v /home/mjb/RAILS:/tmp $LATEST_IMAGE bash
#docker run -i -t -p 2222:22 -v /home/mjb/RAILS:/tmp $LATEST_IMAGE bash -c '/etc/init.d/sshd start; while true; do sleep 10; done'
#docker run -d -p 2222:22 -v /home/mjb/RAILS:/tmp $LATEST_IMAGE bash -c '/etc/init.d/sshd start; while true; do sleep 10; done'



