input = "/Users/ttivey/Desktop/DataAnalysis/sym/";
output = "/Users/ttivey/Desktop/DataAnalysis/sym_volume/";

setBatchMode(true);
list = getFileList(input);
for (i = 0; i <list.length; i++)
	action(input, output, list[i]);
setBatchMode(false);

	
function action(input, output, filename) {
open(input + filename);		

run("Split Channels");

//hoecsht channel 5

close();
// EdU channel 4
close();
// Brightfield
run("3D Objects Counter", "threshold=1000 slice=1 min.=10 statistics summary");
selectWindow("Results");
saveAs("Text", output + filename);
run("Close");

//algal channel
close();

selectWindow("Log");
saveAs("Text", output + "/volume-log.txt");

}
