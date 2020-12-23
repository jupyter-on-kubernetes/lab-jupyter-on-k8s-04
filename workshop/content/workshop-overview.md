This is the fourth workshop exploring the options for deploying Jupyter notebooks to Kubernetes. The prior workshops covered how to run a Jupyter notebook locally and within a container in Kubernetes. The workshops also explored using an operator to manage the deployment of a Jupyter notebook, as well as using JupyterHub.

For running JupyterHub on Kubernetes, the solution supported by the Jupyter project is the [Zero to JupyterHub with Kubernetes](https://github.com/jupyterhub/zero-to-jupyterhub-k8s) project. Although this solution can be made to work, it uses a rather complex default configuration out of the box which requires cluster admin privileges in order to deploy it, and a lot of resources. For that reason, when showing how to deploy JupyterHub in the previous workshop, a more basic deployment using raw Kubernetes resources and a customized JupyterHub image was used.

In this workshop we will explore how the process of deploying JupyterHub could be simplified by using custom resources and an operator designed just for the task of deploying JupyterHub to Kubernetes.

Using this approach the process of deploying the JupyterHub can be restricted to knowing about a single custom resource type, with the operator working behind the scenes to do the more complicated work of handling the deployment.
