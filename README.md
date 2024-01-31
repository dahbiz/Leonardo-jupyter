# Leonardo-jupyter

This guide provides a straightforward approach to executing Jupyter notebooks on a compute node of the Leonardo supercomputer. Initially tested on Leonardo Cineca, these steps are adaptable to various clusters.




### Cluster Side

 Prior to proceeding, confirm that Jupyter Notebook is installed in your home directory on the login node. Once verified, follow these steps:

Generate a configuration file for jupyter:

1. ```jupyter notebook --generate-config```


Generate a hashed password that you will use to login to jupyter:

2. ```jupyter notebook password```
 


3. Modify the configuration file t ```vim ~/.jupyter/jupyter_notebook_config.py``` and put this:

```
c.NotebookApp.open_browser = False
c.NotebookApp.port = 6666   
```

where ``` 6666 ``` is the port (you can change it: choose any 4 numbers!).


4.  Choose the resources you want to allocate by modifying the job script ``` jupy_leonardo.job``` and execute the job.

```sbatch jupy_leonardo.job```

5. Do ```squeue -u your_username``` and get the get the name of the allocated node (something like ```lrdnxxxx```).  

### Local terminal side

6. Modify line 3 of the script ```run_jupy.sh``` by changing username with the username you use to login to the cluster.

6. For a local terminal, run the script by passing the name of the node from the command line ```./run_jupy.sh lrdnxxxx```

8. If you have followed the steps correctly. You will be able to access jupyter notebook in the compute node from the browser through:

```http://127.0.0.1:6666``` 

a. Replace `6666` with the port number you specified in the configuration file.

b. Enter the password you set in step 2 to access Jupyter Notebook.


### Done!
