
#TAG=mjbright/docker-mooc-coursera-waa
TAG=mine/mooc_20140617_p2hw1
TAG=mine/mooc

cd /home/mjb/src/git/mjbright/EDX-saas-courserware

time docker build -t $TAG .
echo "Image build with TAG $TAG"
#echo "Run it with:"
#echo "  docker run -i -t $TAG"
echo "Run it via: launchRailsDocker.sh"


#mine/mooc_20140617_p2hw1   latest              52be9422935d        10 days ago         1.707 GB
#mine/mooc_20140604_hw4     latest              c90a6625e214        3 weeks ago         1.706 GB
