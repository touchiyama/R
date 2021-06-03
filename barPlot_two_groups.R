library(ggplot2)

data <- read.delim("/Users/tomoyauchiyama/200925/motif_freq/pre_histgrm", header = TRUE)
my_data <- data.frame(data)
ggplot(my_data, aes(x = gene, y = num, fill = strain)) + geom_bar(position = 'dodge', stat='identity') + theme_bw() + scale_fill_manual(values = c("blue", "green")) + geom_text(aes(label=num), position=position_dodge(width=0.9), vjust=-0.25) + ylab(expression("# of AS target exon")) + xlab(expression("motif")) + scale_y_continuous(limits=c(0,90)) + theme_classic() 
