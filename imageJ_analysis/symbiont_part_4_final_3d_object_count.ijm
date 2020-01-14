input = "/Users/ttivey/Desktop/DataAnalysis/sym_watershed2/";
output = "/Users/ttivey/Desktop/DataAnalysis/sym_c1_final/";

setBatchMode(true);
list = getFileList(input);
for (i = 0; i <list.length; i++)
	action(input, output, list[i]);
setBatchMode(false);

	
function action(input, output, filename) {
open(input + filename);		


//algae
run("3D Objects Counter", "threshold=1 slice=1 min.=150 statistics summary centroids surfaces centres_of_masses objects");
selectWindow("Results");
saveAs("Text", output + filename);
run("Close");
selectWindow("Centroids map of " + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Centroids map of " + filename);
close();
selectWindow("Centres of mass map of " + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Centres of mass map of " + filename);
close();
selectWindow("Surface map of " + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Surface map of " + filename);
close();
selectWindow("Objects map of " + filename);
t=getTitle;
saveAs("Tiff", output + t);
selectWindow("Objects map of " + filename);
close();




selectWindow("Log");
saveAs("Text", output + "/symbiont-log.txt");

}
