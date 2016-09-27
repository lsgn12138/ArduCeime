library("ggplot2")
library("gridExtra")

# Load and parse file into factors and measures
res <- read.csv("/Users/bryanfeeney/Workspace/ArduCeime/Chap1/plots/summary-all-on-all-clean.csv")
res$algor <- factor(res$algor)
res$algor_props_alpha <- factor(res$algor_props_alpha)
res$algor_props_beta <- factor(res$algor_props_beta)
res$algor_props_clustercount <- factor(res$algor_props_clustercount)
res$algor_props_distance <- factor(res$algor_props_distance)
res$algor_props_hypersvaryonquery <- factor(res$algor_props_hypersvaryonquery)
res$algor_props_iterations <- factor(res$algor_props_iterations)
res$algor_props_kmeans_distance <- factor(res$algor_props_kmeans_distance)
res$algor_props_kmeans_iterations <- factor(res$algor_props_kmeans_iterations)
res$algor_props_proposalstdev <- factor(res$algor_props_proposalstdev)
res$algor_props_samplehypers <- factor(res$algor_props_samplehypers)
res$algor_props_usekmeans <- factor(res$algor_props_usekmeans)
res$burn_in <- factor(res$burn_in)
res$cat_groups <- factor(res$cat_groups)
res$chain_count <- factor(res$chain_count)
res$clusters <- factor(res$clusters)
res$command <- factor(res$command)
res$cross_folds <- factor(res$cross_folds)
res$dataset <- factor(res$dataset)
res$dict_size <- factor(res$dict_size)
res$iters <- factor(res$iters)
res$job <- factor(res$job)
res$max_word <- factor(res$max_word)
res$min_freq <- factor(res$min_freq)
res$min_word <- factor(res$min_word)
res$output_file <- factor(res$output_file)
res$sample_lag <- factor(res$sample_lag)
res$seed <- factor(res$seed)
res$start_time <- factor(res$start_time)
res$stem <- factor(res$stem)
res$stop <- factor(res$stop)
View(res)

# Graphing hints
# 
qplot(data=subset(res, corpus='reuters'), y=perplexity, color=algor facets=beta~alpha)
# 
# l <- qplot (data=res, x=SampleLag, y=HardMisClass, color=BurnIn)
# r <- qplot (data=res, x=SampleLag, y=Perplexity, color=BurnIn)
# grid.arrange(l, r, ncol=2)