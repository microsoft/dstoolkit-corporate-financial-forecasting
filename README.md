# Microsoft Finance Time Series Forecasting Framework

<!-- badges: start -->
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/finnts)](https://cran.r-project.org/package=finnts)
<!-- badges: end -->

About this repository
============================================================================================================================================

This repository contains examples of how to implement Microsoft Finance's time series forecasting framework, called Finn, through our [open-source R package called finnts](https://microsoft.github.io/finnts/). 

The Microsoft Finance Time Series Forecasting Framework, aka finnts or Finn, is an automated forecasting framework for producing financial forecasts. While it was built for corporate finance activities, it can easily expand to any time series forecasting problem!

- Automated feature engineering, back testing, and model selection. 
- Access to 25+ models. Univariate, multivariate, and deep learning models all included. 
- Azure integration to run thousands of time series in parallel within the cloud. 
- Supports daily, weekly, monthly, quarterly, and yearly forecasts. 
- Handles external regressors, either purely historical or historical+future values.

Here you can find details around how you can implement Finn using Azure Synapse notebooks to run thousands of time series forecasts at scale using spark. 

Details of the accelerator
============================================================================================================================
-   This repository includes the implementation of the finnts forecast package on Azure Synapse
-   There will be example notebooks walking you through how to set up a Synapse cluster to run Finn and how to approach getting a high quality forecast. 


Prerequisites
============================================================================================================================

In order to successfully complete your solution, you will need to have access to and or provisioned the following:

-   Access to an Azure subscription
-   Access to an Azure Data Lake Storage account for Blob Storage with read/write permission
-   Access to an Azure Synapse Workspace with contributor rights

Getting Started
================================================================================================================================

While Finn can run on a local machine, it shines best when running at scale in Azure. Follow the below resources to learn how to set up an Azure Synapse notebook to start using Finn. 

## How to use this repo

Open `Finn_Walkthrough.md` and follow the notebook.

Contents
================================================================================================================================

| File/Folder         | Description                                                                                     |
|---------------------|-------------------------------------------------------------------------------------------------|
| `docs`              | Finn quick-start guide (`Finn_Walkthrough.md`)                                                  |
| `synapse-notebooks` | Synapse notebook that runs Finn (`Finn_Demo.ipynb`)                                             |
| `src/finn`          | Other Finn scripts you will use for set up                                                      |


General Coding Guidelines
=============================================================================================================================

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
