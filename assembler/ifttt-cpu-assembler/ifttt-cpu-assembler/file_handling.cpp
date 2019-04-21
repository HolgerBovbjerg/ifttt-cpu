#include "pch.h"
#include "file_handling.h"

using namespace std;

int init_mif(int Depth, int Width, const char Address_Radix[4], const char Data_Radix[4]) {
	cout << "Generating new memory instantiation file..." << '\n';
	ofstream file;
	file.open("prog.mif", ofstream::trunc);
	if (file.is_open())
	{
		file << "DEPTH = " << Depth << '\n';
		file << "WIDTH = " << Width << '\n';
		file << "ADDRESS_RADIX = " << Address_Radix << '\n';
		file << "DATA_RADIX = " << Data_Radix << '\n';
		file << '\n';
		file.close();
	}

	else cout << "unable to open file";

	return 0;
}

int write_to_mif() {
	cout << "Writing binary code to memory instantiation file..." << '\n';
	ofstream file;
	file.open("prog.mif", ofstream::app);
	if (file.is_open())
	{
		file << "CONTENT\n";
		file << "BEGIN\n";
		// Write code here to insert machone code
		file << "This is binary code\n";
		file << "END";
		file.close();
		cout << "Done writing memory instantiation file." << '\n';
	}
	else cout << "Unable to open file";
	return 0;
}

int read_from_asm() {
	cout << "Reading assembly code..." << '\n';
	//Write code to read assembly code to buffer

	return 0;
}
