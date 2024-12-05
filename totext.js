autowatch = 1;

// maxConsoleLogger.js
var f = new File("logfile_neu.txt", "write", "TEXT");

function bang()
{
	outlet(0,"hallona");
}

function list()
{
	var a = arrayfromargs(arguments);
	if(f.isopen)
	{
		post("file open succeeded\n");
		f.writestring(a + "\n");
		f.eof = f.position;
		//f.close();
		//post("file is saved\n");
	//  f.writeline(5);
	//	f.flush();
		bang();
	}
	else 
	{
		post("file open failed\n");
	}
}