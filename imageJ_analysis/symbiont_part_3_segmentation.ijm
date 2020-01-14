input = "/Users/ttivey/Desktop/DataAnalysis/sym_c1_watershed1_out/";
output = "/Users/ttivey/Desktop/DataAnalysis/sym_watershed2/";

setBatchMode(true);
list = getFileList(input);
for (i = 0; i <list.length; i++)
	action(input, output, list[i]);
setBatchMode(false);

	
function action(input, output, filename) {
open(input + filename);		

run("3D Watershed Split", "binary=Objects seeds=Automatic radius=5");
selectWindow("Split");
//run("3D Watershed Split", "binary=Split seeds=Automatic radius=5");
saveAs("Tiff", output + filename + "_2");
run("Close All");


}
