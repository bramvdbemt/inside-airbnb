## Main build rule

all: plot.pdf plot_all.pdf

## Sub - builds
reviews.csv listings.csv: download_data.R
	R --vanilla < download_data.R
	
aggregated_df.csv: Cleaning.R reviews.csv listings.csv
	R --vanilla < Cleaning.R
	
pivot_table.csv: aggregated_df.csv Pivot.R
	R --vanilla < Pivot.R

plot.pdf: plots.R pivot_table.csv
	R --vanilla < plots.R

