#include <cmath>
#include <string>
#include <cstdlib>
#include <iostream>
#include <fstream>
# include <iomanip>
# include "stdlib.h"

#include <sys/types.h>
#include <dirent.h>
#include <sys/stat.h>

using namespace std;
ofstream ofile;

int main(){
	int N=200, PORT=0;
	char DIR_REMOTE[N], DIR_LOCAL[N], HOSTNAME[N], FILE_TYPE[N], PERMISO[N];
	char CMD_RSYNC[900], ssh_options[N], filetype_options[N];

	//------- puerto
	cout << " >> PORT [e.g. ssh -p 2224] (0 sin puerto): \n";
	cin >> PORT;
	cout << endl;
	if(PORT!=0)
		sprintf(ssh_options, "\"ssh -p %d\"", PORT);
	else
		sprintf(ssh_options, "\"ssh\"");

	//-------- filetype opt
	cout << " >> filetype exclusion [e.g. *.bz2] (\".\" sin esta opcion): \n";
	cin >> FILE_TYPE;
	cout << endl;
	if(FILE_TYPE[0]!='.')
		sprintf(filetype_options, "--exclude='%s'", FILE_TYPE);
	else
		sprintf(filetype_options, "");

	//------- remote hostname
	cout << " >> remote hostname [e.g. localhost, ccage.in2p3.fr] \n";
	cin >> HOSTNAME;
	cout << endl;

	//------- directorio remoto
	cout << " >> directorio remoto: \n";
	cin >> DIR_REMOTE;
	cout << endl;

	//------- directorio local
	cout << " >> directorio local [e.g. /home/jim/ruta/]: \n";
	cin >> DIR_LOCAL;
	cout << endl;

	//-------- armar el comando
	sprintf(CMD_RSYNC, "rsync -rvubt -e %s %s --suffix=\"_bckp_`hostname`_`date +%%d%%b%%Y_%%H.%%M.%%S`\" masiasmj@%s:%s \"%s\"", ssh_options, filetype_options, HOSTNAME, DIR_REMOTE, DIR_LOCAL);
	cout << endl << " EL COMANDO ES:" << endl << CMD_RSYNC << endl << "ESTA OK?? [y/n]" << endl;
	cin >> PERMISO;
	
	if(PERMISO[0]=='y'){
		cout << "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
		system(CMD_RSYNC);
	}
	else
		cout << " ALGO SALIO MAL :(" << endl;

	return 0;
}
