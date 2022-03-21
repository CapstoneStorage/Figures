library(tidyverse)
library(viridis)


# DVFS, CPU Frequency
n1_dvfs = c(61/3, 78/3, 83/3, 78/3)
n2_dvfs = c(67/3, 87/3, 82/3, 64/3)
n3_dvfs = c(107/3, 99/3, 71/3, 23/3)

dvfs = cbind(n1_dvfs, n2_dvfs, n3_dvfs)

# Cloud, Offloading Ratio 
n1_offloading = c(77/3, 223/3)
n2_offloading = c(97/3, 203/3)
n3_offloading = c(112/3, 188/3)

offloading = cbind(n1_offloading, n2_offloading, n3_offloading)


## CPU Frequency
barplot(dvfs)
barplot(dvfs, beside=T)
barplot(dvfs, beside = T, names.arg = c("Network1", "Network2", "Network3"), main="CPU Frequency", xlab = "Network", ylab = "Percentage(%)", ylim = c(0,40), col = hue_pal()(4))
legend("topright",legend=c("1","0.5", "0.25", "0.125"),fill=hue_pal()(4))

# Offloading Ratio
barplot(offloading)
barplot(offloading, beside=T)
barplot(offloading, names.arg = c("Network1", "Network2", "Network3"), main="Offloading Ratio", xlab = "Network", ylab = "Percentage(%)", col = hue_pal()(2))
legend("topright",legend=c("Local","Cloud"),fill=hue_pal()(2))

# Single Environment
barplot(c(34, 66), main="Offloading Ratio", names.arg = c("Local", "Cloud"), ylab = "Percentage(%)", col = hue_pal()(2))



# Network uplink data rate
uplink = read.table("uplink.txt")
offloading = read.table("offloading.txt")
df = data.frame(network = uplink, ratio = offloading)
head(df)

ggplot(df, aes(V1.1, V1, group = V1.1))+geom_boxplot()+xlab("Offloading Ratio")+ylab("Uplink Data Rate")+scale_x_continuous(breaks = c(0, 1), labels=c("Local", "Cloud"))

ggplot(offloading, aes(c(1:100),V1))+geom_point(col = "red")
