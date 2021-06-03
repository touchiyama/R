library(ggplot2)
library(ggrepel)

data <- read.delim("/Users/tomoyauchiyama/200925/TX/merge_foldChange", header = TRUE, row.names = 1)
my_data <- data.frame(data)

gene <- rownames(my_data)
selected_gene <- c("lost","Fip1","mRpL1","Sf3b5","Hsc70-4","obe","mdlc","CG6066","mod","Sf3b3","snRNA:U11","CG3335","Tdrd3","l(3)72Ab","barc","CG6209","Cbp80","CG3198","cactin","CG34334","aub","mbl","bru1","how")
gene[!gene %in% selected_gene] <- ""

ggplot(my_data, aes(x = log2FC, y = log10FDR, color = sign, label = gene)) + 
geom_point(size = 0.7, alpha = 1, na.rm = T) + 
xlab(expression(log[2]("FC"))) + 
ylab(expression(-log[10]("FDR"))) + 
geom_hline(yintercept = 1.0, colour="#990000", linetype="dashed") + 
geom_vline(xintercept = 0.5, colour="#990000", linetype="dashed") + 
geom_vline(xintercept = -0.5, colour="#990000", linetype="dashed") + 
scale_colour_manual(values=c("blue","gray","red")) + 
#scale_x_continuous(breaks=seq(-10,10,5),limits=c(-10,10)) + 
geom_label_repel() + theme_classic()


