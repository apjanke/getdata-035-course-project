
if (!file.exists("data")) {
	dir.create("data")
}
if (!file.exists("cache")) {
	dir.create("cache")
}
if (!file.exists("munge")) {
	dir.create("munge")
}

zipFile <- "data/UCI HAR Dataset.zip"
if (!file.exists(zipFile)) {
	download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", zipFile)
}
if (!file.exists("cache/UCI HAR Dataset")) {
	unzip(zipFile, exdir = "cache")
}
