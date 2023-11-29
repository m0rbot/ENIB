#include "imageModule.hpp"

namespace im{

Image::Image(std::string _nom2, int _hauteur2, int _largeur2, int _pixel2){
	nom = _nom2;
	hauteur = _hauteur2;
	largeur = _largeur2;
	for(int i=0; i<hauteur; i++){
		std::vector<int> row(largeur, _pixel2);
		pixel.push_back(row);
	}
	
	
}

void Image::print(){
	std::cout<<"Le nom: "<<nom<<"\t"<<"La taille: "<<largeur<<"x"<<hauteur<<"\n";
	for(auto&row : pixel){
		for(const auto&element : row){
			std::cout<<element<<"\t";
		}
		std::cout<<"\n";
	}
}

void Image::fillColor(int color){
	for(auto&row: pixel){
		for(auto&element : row){
			element = color;
		}
	}
}

void Image::generateRandom(int height, int width){
	hauteur = height;
	largeur = width;	//update width and height values.
	std::srand(static_cast<unsigned int>(std::time(0)));	// rand function seed init	
	pixel.clear();	
	pixel.resize(height, std::vector<int>(width, 0));	// resize 2D vector
	for(auto&row: pixel){
		for(auto&element : row){
			element = std::rand()%256;		// fill 2D vector with rand values
		}
	}
}

void Image::writePGM(){
	std::ofstream img;
	img.open(nom+".pnm");
	img<<"P2"<<"\n";
	img<<largeur<<" "<<hauteur<<"\n";
	img<<"256"<<"\n";
	for(auto&row: pixel){
		for(auto&element: row){
			img<<element<<"\t";
		}
		img<<"\n";
	}
	img.close();
}
}

