#箱ひげ図

data <- read.delim("/Users/tomoyauchiyama/AutoReg/", header = TRUE)
my_data <- data.frame(data)
ggplot(my_data, aes(x=group, y=score, fill=group)) + geom_boxplot(width=0.6) + scale_y_continuous(breaks=seq(-50,20,by=10),limits=c(-50,20)) + theme_classic() + scale_fill_manual(values = c("grey", "salmon", "grey", "salmon"))

#データフレームから特定の行と列を抽出
x <- my_data[my_data$group=="Ctrl",3]

#ヒストグラム
ggplot(my_data, aes(x = dis)) + geom_histogram(breaks=seq(0,1000,by=10), color="gray41", fill="gray92") + scale_x_continuous(breaks=seq(0,1000,100)) + scale_y_continuous(breaks=seq(0,750,100)) + theme_classic() +  xlab("Distance from 3'end") +  ylab("Frequency of NTC") + geom_vline(aes(xintercept=75), colour="firebrick3", linetype="dashed") + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold"))
#density1
ggplot(my_data, aes(x = rel_dis, y =..density.., color = group, fill = group)) + geom_histogram(position ="identity",breaks=seq(0,1.0,by=0.05),alpha =0.7) + theme_classic() + geom_density(alpha =0.1) +  scale_x_continuous(breaks=seq(0,1.0,0.1)) + scale_fill_manual(values = c("gray92", "salmon")) + scale_color_manual(values = c("gray41", "tomato3")) + xlab(expression("relative distance from 3'end (dist_of_StpCdn_frm_3'end/len_of_gene)"))
#density2
ggplot(my_data, aes(x = rel_dis, y =..density.., color = group, fill = group)) + geom_histogram(position ="identity",breaks=seq(0,1.0,by=0.05),alpha=0.7) + theme_classic() + geom_density(alpha =0.4) +  scale_x_continuous(breaks=seq(0,1.0,0.1)) + scale_fill_manual(values = c("gray80", "salmon")) + scale_color_manual(values = c("gray41", "tomato3")) + xlab(expression("relative distance from 3'end (dist_of_StpCdn_frm_3'end/len_of_gene)")) + geom_vline(xintercept = 0.13, colour="gray41", linetype="dashed") + geom_vline(xintercept = 0.31, colour="tomato3", linetype="dashed")
#GWN_stpcdn
ggplot(my_data, aes(x = dis, color = group, fill = group)) + geom_histogram(breaks=seq(0,10000,by=100)) + scale_x_continuous(breaks=seq(0,10000,by=1000)) + scale_y_continuous(breaks=seq(0,80,by=20),limits=c(0,80)) + theme_bw(base_family = "sans") + theme_test() + xlab("Distance from 3'end") +  ylab("Frequency of NTC and PTC on GWN") +  geom_vline(aes(xintercept=85), colour="gray41", linetype="dashed") + geom_vline(aes(xintercept=650), colour="tomato3", linetype="dashed") + scale_fill_manual(values = c("gray80", "salmon")) + scale_color_manual(values = c("gray41", "tomato3")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold"),  plot.margin = unit(c(1, 1, 1, 4), "lines"))

#ヒストグラムつき散布図
library(ggExtra)
g <- ggplot(my_data, aes(dXRN1, dHepG2)) +  + geom_point(size = 2, alpha = 1, na.rm = T) + theme_classic() + xlab(expression(ΔUPF1KD("XRN1"))) + ylab(expression(ΔUPF1KD("HepG2_rep2"))) + stat_smooth(method = "lm", se = FALSE, colour = "red", size = 1.0) + geom_smooth() 
ggMarginal(g,type = "histogram",margins = "both", size =5, colour = "gray41", fill="gray")

#最頻値の出し方
names(which.max(table(GWN_PTC)))

data <- read.delim("/Users/tomoyauchiyama/AutoReg/barplot_PE_dPsi/01_barplot_PE_dPsi", header = TRUE)
my_data <- data.frame(data)
ggplot(my_data, aes(x=group, y=dpsi, fill=group)) + geom_boxplot(width=0.6) + theme_classic() + scale_fill_manual(values = c("grey", "salmon"))
