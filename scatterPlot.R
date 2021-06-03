# 2つのデータ間の相関
ggplot(my_data, aes(dUpf2KD, dUpf1KD)) + geom_point(size = 0.7, alpha = 1, na.rm = T) + theme_classic() + xlab(expression(ΔUpf2KD("whole_body"))) + ylab(expression(ΔUpf1KD("S2_cell"))) + stat_smooth(method = "lm", se = FALSE, colour = "black", size = 0.5)

#
data <- read.delim("/Users/tomoyauchiyama/AutoReg_R/plot_RBP_autoReg_event.mod", header = TRUE)
my_data <- data.frame(data)
ggplot(my_data, aes(dSelf, dUpf1,color = sign)) + geom_point(size = 1.2, alpha = 1, na.rm = T) + theme_bw(base_family = "sans") + theme_test() + scale_x_continuous(breaks=seq(-0.8,0.8,by=0.2),limits=c(-0.8,0.8)) + scale_y_continuous(breaks=seq(-0.8,0.8,by=0.2),limits=c(-0.8,0.8)) + ylab("ΔPSI (Upf1KD-Ctrl)") + xlab("ΔPSI (SelfKD-Ctrl)") + scale_colour_manual(values=c("cyan4","cornflowerblue","gray80","salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines")) + geom_hline(yintercept = 0.05, colour="gray80", linetype="dashed") + geom_hline(yintercept = -0.05, colour="gray80", linetype="dashed") +geom_vline(xintercept = 0.05, colour="gray80", linetype="dashed") + geom_vline(xintercept = -0.05, colour="gray80", linetype="dashed")   
