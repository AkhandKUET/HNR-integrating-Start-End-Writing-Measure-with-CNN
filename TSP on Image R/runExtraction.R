
source( 'R/extractStrokes_TSP.R' )
source( 'R/findEndpoints_rowcol.R' )
source( 'R/turn.R' )
source( 'R/constructInputData.R' )
source( 'R/removeSmallComponents.R' )
source( 'R/processImages.R' )
source( 'R/plotstrokes.R' )
source( 'R/getPointList.R' )
library( TSP )

imagefolder = 'output/thinned_txts'
resultfolder = 'output/sequences/'

processImages( imagefolder, resultfolder )