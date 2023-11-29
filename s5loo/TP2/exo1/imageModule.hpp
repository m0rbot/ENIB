#ifndef	IMAGEMODULE_HPP
#define	IMAGEMODULE_HPP
// lib definition
//###############################
#include <string>
#include <vector>
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <fstream>
//##############################

namespace im{
class Image{
	private:
	  std::string nom;
	  int hauteur, largeur;
	  std::vector<std::vector<int>> pixel;
	public:
	  void print();
	  
	  void setPixelAt(int x, int y, int color) {pixel[x][y] = color;};
	  int getPixelAt(int x, int y) {return pixel[x][y];};
	  
	  Image(std::string _nom2, int _hauteur2, int _largeur2, int _pixel2);
	  
	  void fillColor(int color);
	  void generateRandom(int height, int width);
	  
	  int getWidth() {return largeur;};
	  void setWidth(int width) {largeur = width;};
	  
	  std::string getName() {return nom;};
	  void setName(std::string name) {nom = name;};
	  
	  void writePGM();
	  void readPGM();
};
}

#endif
