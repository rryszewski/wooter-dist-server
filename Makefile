FLAGS = -Wall -g 

all: wooter

wooter: network.cpp
	g++ ${FLAGS} network.cpp -o networks -pthread -std=c++11 -Wl,--no-as-needed

RM: net_2.cpp
	g++ ${FLAGS} net_2.cpp -o nets_2 -pthread -std=c++11 -Wl,--no-as-needed

RM_test: nets_3.cpp
	g++ ${FLAGS} nets_3.cpp -o nets_3 -pthread -std=c++11 -Wl,--no-as-needed

clean: 
	rm -r fids flwes flwrs users woots rm_*
