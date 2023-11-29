#include <iostream>
#include <string>
#include <array>

int main(int argc, char** argv){
	
	//std::cout<<__func__<<std::endl;
	for(int i=1; i<argc; i++){
		std::cout<<"message"<<i<<":"<<argv[i]<<std::endl;
	}
	std::array<std::string, 15> x;
	
	return 0;
}
