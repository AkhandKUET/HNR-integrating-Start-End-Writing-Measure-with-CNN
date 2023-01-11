source( 'R/extractStrokes_TSP.R' )
source( 'R/findEndpoints_rowcol.R' )
source( 'R/removeSmallComponents.R' )
source( 'R/getPointList.R' )
library( TSP )

thinned = as.matrix( read.table( 'temporary/image.txt' ))
img = thinned > 0
img_denoised = removeSmallComponents( img )

points = extractStrokes_TSP( img_denoised ) #returns points in drawing order, following the extracted strokes in the image
write.csv(points, file = 'temporary/output.txt', quote = F, row.names = F )

