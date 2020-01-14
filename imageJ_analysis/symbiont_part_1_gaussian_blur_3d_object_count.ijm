input = "/Users/ttivey/Desktop/DataAnalysis/sym/";
output = "/Users/ttivey/Desktop/DataAnalysis/symc1out/";

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
//edu
close();
//brightfield
close();

//gaussian blur
run("Gaussian Blur 3D...", "x=1 y=1 z=1");
//subtract background
run("Subtract Background...", "rolling=50 sliding stack");

//symbiont channel 4
run("3D Objects Counter", "slice=1 min.=150 statistics summary centroids surfaces centres_of_masses objects");
selectWindow("Results");
saveAs("Text", output + filename);
run("Close");
selectWindow("Centroids map of C1-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Centroids map of C1-" + filename);
close();
selectWindow("Centres of mass map of C1-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Centres of mass map of C1-" + filename);
close();
selectWindow("Surface map of C1-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Surface map of C1-" + filename);
close();
selectWindow("Objects map of C1-" + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Objects map of C1-" + filename);
close();



selectWindow("Log");
saveAs("Text", output + "/edu-log.txt");

}
