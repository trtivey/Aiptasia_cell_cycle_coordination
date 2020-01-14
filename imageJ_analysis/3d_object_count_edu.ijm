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

//hoecsht channel

close();

//EdU channel
run("3D Objects Counter", "slice=1 min.=10 max.=500 statistics summary centroids surfaces centres_of_masses objects");
selectWindow("Results");
saveAs("Text", output + filename);
run("Close");
selectWindow("Centroids map of C3-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Centroids map of C3-" + filename);
close();
selectWindow("Centres of mass map of C3-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Centres of mass map of C3-" + filename);
close();
selectWindow("Surface map of C3-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Surface map of C3-" + filename);
close();
selectWindow("Objects map of C3-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Objects map of C3-" + filename);
close();

// Brightfield channel

close();

// Algal channel
close();

selectWindow("Log");
saveAs("Text", output + "/edu-log.txt");

}
