#load data

file_path <- "/Users/revglue/study/main_work/my_working/dataset_pdf"
length <- length(dir(file_path))
dirpdf <- dir(file_path)
dirpdf[1]

#converting text to pdf

pdftotext <- "/Users/revglue/study/main_work/my_working/pdf-to-text-lib/bin64/pdftotext"

for(i in 1:length)
{
	pdf <- file.path("/Users/revglue//study/main_work/my_working/dataset_pdf", dirpdf[i])
	system(paste("\"", pdftotext,"\" \"",pdf,"\"",sep=""),wait=F)
}
