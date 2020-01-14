input = "/Users/ttivey/Desktop/DataAnalysis/apo/";
output = "/Users/ttivey/Desktop/DataAnalysis/apoout/";

setBatchMode(true);
list = getFileList(input);
for (i = 0; i <list.length; i++)
	action(input, output, list[i]);
setBatchMode(false);

	
function action(input, output, filename) {
open(input + filename);		

run("Split Channels");

//hoecsht channel 5

run("3D Objects Counter", "slice=1 min.=5 max.=500 statistics summary centres_of_masses objects");
selectWindow("Results");
saveAs("Text", output + filename);
run("Close");
selectWindow("Centres of mass map of C4-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Centres of mass map of C4-" + filename);
close();
selectWindow("Objects map of C4-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Objects map of C4-" + filename);
close();

//EdU channel
close();
//brightfield
close();
//last algal channel
close();

selectWindow("Log");
saveAs("Text", output + "/hoechst-log.txt");

}
