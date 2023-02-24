
# Getting Starting with finnts on Synapse

## 1. Check out the Documentation
Before running anything in Synapse, please check out the [official finnts package documentation](https://microsoft.github.io/finnts/index.html). In it you will find vignettes describing the Finn modeling process, types of models that were ran, and how best to tweak the levers and buttons inside of Finn to best suit your forecast needs. 

If you are brand new to Azure Synapse, then please check out the [Azure Synapse documentation](https://learn.microsoft.com/en-us/azure/synapse-analytics/) to get more familiar with Synapse and Apache Spark. 

## 2. Set Up Azure Resources
The finnts package was built to shine on Azure, specifically Azure Synapse to run forecasts at scale using spark. Make sure you have the following Azure resources set up first. 

- [Azure Data Lake Storage](https://learn.microsoft.com/en-us/azure/storage/common/storage-account-create?toc=%2Fazure%2Fstorage%2Fblobs%2Ftoc.json&tabs=azure-portal)
- [Azure Synapse Workspace](https://learn.microsoft.com/en-us/azure/synapse-analytics/quickstart-create-workspace)
    -  Make sure to connect your ADLS blob storage account to your Synapse workspace through managed identity.  
    -  Also [create a linked service](https://learn.microsoft.com/en-us/azure/data-factory/connector-azure-data-lake-storage?tabs=data-factory) between the ADLS and Synapse for easy authetication between Synase and blob storage. 

## 3. Set up a Synapse Spark Pool
Here are [instuctions to create a Synapse spark pool](https://learn.microsoft.com/en-us/azure/synapse-analytics/quickstart-create-apache-spark-pool-studio) that we can run the finnts package on. Please keep the following things in mind when creating a pool. 

- Choose any node size, but note the larger the node size (memory and cores) the more parallelized the finnts forecast process can be. 
- Allow autoscale if you'd like to run different amounts of time series.
- Either use Apache Spark version 3.3 or 3.2, both allow for R code
- Allow session level packages
- Allow automatic pausing the shut down pool when not in use to save money
- Create your own custom apache spark config, [follow these steps](https://github.com/MicrosoftDocs/azure-docs/blob/main/articles/synapse-analytics/spark/apache-spark-azure-create-spark-configuration.md)
    - The only config value you need to get going with the finnts package is to set spark.executor.cores equal to 1. 

## 4. Run the finnts Demo Notebook
Download the `DEMO_finnts_ds_toolkit.json` file from the `synapse-notebooks` folder of this repo, and import it into your Synapse workspace. More info about importing Synapse notebooks can be [found here](https://learn.microsoft.com/en-us/azure/synapse-analytics/spark/apache-spark-development-using-notebooks). 

With the notebook open in Synapse studio, make sure to select the R language option and attach the notebook to the pool you created in step 3. 

Now comes the fun part! Run each cell in the notebook to learn more about how you can run a scalable time series forecast in Spark using the finnts package. From downloading the package dependencies all the way to analyzing the forecast output along with the trained models. 

**Important Note**: Make sure you mount your own ADLS blob storage container in the notebook when prompted. 

## 5. Run Your Own Data
After following the example forecast process in step 4, create a copy of the notebook and use your own data to create a forecast. 

## 6. Getting to Production
Once you can run your own data through Finn, take it to the final step by creating an [Azure Synapse pipeline](https://learn.microsoft.com/en-us/azure/synapse-analytics/get-started-pipelines) that can pull historical input data from your ADLS, create a forecast, and push the final outputs back into your ADLS.

Now you are a forecasting expert with finnts, happy forecasting!