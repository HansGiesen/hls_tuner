#!/usr/bin/Rscript
Data = read.csv("20161103_filter_pipeline.csv")
Maximum = 2e6
#Data = Data[1:30, ]
Data = Data[order(Data$id), ]
for (Row in seq_len(nrow(Data)))
{
  Data$Minimum[Row] = min(Data$time[1 : Row])
}
Data$Minimum[Data$Minimum > Maximum] = Maximum
Data$time[Data$time > Maximum] = Data$Minimum[Data$time > Maximum]

pdf(file = "20161103_filter_pipeline.pdf", width = 6 + 2 / 3, height = 4.3)
plot(Data$id, Data$time / 1e6, type = 'l', xlab = "Run", ylab = "Latency (Mcycles)", col = "blue")
#axis(2, axTicks(2), labels = parse(text = paste("10^", trunc(log10(axTicks(2))))), las = 1)
lines(Data$id, Data$Minimum / 1e6, col = "red")
grid()
legend("top", legend = c("All runs", "Minimum so far"), lwd = 1, col = c("blue", "red"), bg = "white")
Dummy = dev.off()

pdf(file = "20161103_filter_pipeline_log.pdf", width = 6 + 2 / 3, height = 4.3)
plot(Data$id, Data$time / 1e6, type = 'l', xlab = "Run", ylab = "Latency (Mcycles)", col = "blue", log = "x")
#axis(2, axTicks(2), labels = parse(text = paste("10^", trunc(log10(axTicks(2))))), las = 1)
lines(Data$id, Data$Minimum / 1e6, col = "red")
grid()
legend("bottomleft", legend = c("All runs", "Minimum so far"), lwd = 1, col = c("blue", "red"), bg = "white")
Dummy = dev.off()

