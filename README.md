GeoSearch.Rmd contains codes that are neccesary for the first part of our pipeline. This R script filters in all series that might have samples that we can use. The script creates a metadata that is important for the thrid and final step for our pipeline. It then ends by creating a text file to uplaod the raw sample data in elja.
	
OpenAI_API_(GPT3.5).Rmd contains the function for GPT3.5 called "chat". Note, it is neccessary to have you own API key. Go to the OpenAI website to buy your own key (cheap).

sort_datq.sh sorts the file paths into the correct folders into correct folder

download_links_improved.sh is a shell script used in elja to download all the raw data after having sorted the file paths into the folders

kallisto_quant_human/mouse_paired/single.sh are shell scripts that are in corresponding folders.

Kallisto_qaunt.sh is a shell script that then calls all the other kallisto_quant shell scripts and runs them.

