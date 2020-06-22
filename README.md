# fsc-demo-pack

We have cleaned up extra metadata which is not required for setting up basic FSC ADK. Following is what you will get in this repo:
- Scratch org
- FSC package and extension installation
- Standard Permission set assignmment
- Optional Permission set assignment for data load script

You can run orgInit.sh for above settings. 

## Data Load

If you are intersted in sample data too then we can have created some data load using a new plugin: https://github.com/forcedotcom/SFDX-Data-Move-Utility/wiki.

If interested, you can run orgInitAndData.sh for an extra command of data (or you can run it manually). Currently, you get some promots where you need to answer "y" . We have an open feature request with the developer to change default option to "y" (or allow us to change default option).

Data is stored in CSV files in https://github.com/Vchalem/fsc-demo-pack/tree/DataLoad/data/sfdmu. Data was extracted from another org and will be imported using https://github.com/Vchalem/fsc-demo-pack/blob/DataLoad/data/sfdmu/export.json.

You can read more options for that plugin at plugin's Wiki page.

