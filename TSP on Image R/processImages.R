processImages <- function( imagefolder, resultfolder )
{
    nrimages = length(list.files(path=imagefolder))
    print( paste( 'nrimages', nrimages ))
    
	files <- list.files(path=imagefolder, full.names=TRUE, recursive=FALSE)
	lapply(files, function(file) {
        thinned = as.matrix( read.table( file ))
        img = thinned > 0
        img_denoised = removeSmallComponents( img )
        
        points = extractStrokes_TSP( img_denoised ) #returns points in drawing order, following the extracted strokes in the image
        outfn = paste( resultfolder, tools::file_path_sans_ext(basename(file)), '.txt', sep = '' )
        write.csv(points, file = outfn, quote = F, row.names = F )
	})
}
