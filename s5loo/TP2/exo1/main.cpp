#include "imageModule.hpp"

int main(){
	im::Image i1("image1", 7, 24, 0);
	//i1.setPixelAt(0, 0, 255);
	//i1.print();
	i1.fillColor(127);
	//i1.print();
	//i1.generateRandom(10, 5);
	i1.print();
	i1.writePGM();
	//i1.setPixelAt(10, 13, 184);
	//i1.setPixelAt(20, 0, 189);
	//i1.setPixelAt(8, 1, 5);
	//std::cout<<i1.getPixelAt(0, 0)<<"\n";
	//std::cout<<i1.getPixelAt(20, 0)<<"\n";
	
	return 0;
}
