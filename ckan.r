# Load required libraries
library(ckanr)

# Set the CKAN API base URL
ckanr_setup(url = "https://ckan.opendata.swiss/")

# Function to get a list of datasets
get_datasets <- function() {
    datasets <- package_list()
    return(datasets)
}

# Function to get details of a specific dataset
get_dataset_details <- function(dataset_id) {
    dataset_details <- package_show(id = dataset_id)
    return(dataset_details)
}

# Example usage
datasets <- get_datasets()
print(datasets)

# Get details of the first dataset
if (length(datasets) > 0) {
    first_dataset_id <- datasets[1]
    dataset_details <- get_dataset_details(first_dataset_id)
    print(dataset_details)
}
