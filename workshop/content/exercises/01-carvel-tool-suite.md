[Carvel](https://carvel.dev/) is an open source project created by VMware and
is used as a key component in managing installations of extensions and
applications to Kubernetes clusters.

Some like to try and compare Carvel to other templating tools for Kubernetes
such as Kustomize and Helm. Although Carvel can be used to perform tasks
which those others tools handle, that is only a subset of the functionality
that the Carvel tools can be used for. The Carvel tools aim to solve much
bigger problems than Kustomize and Helm can handle, including helping with
the task of installation to disconnected environments.

In this workshop we are going to first look at how the templating features of
the Carvel ``ytt`` tool can be use to create a set of resource templates for
deploying a Jupyter notebook. We will then look at how other Carvel tools can
be used to package up the resources to permit sharing the deployment resources
as a package bundle.
