# TFC Packer - Image Build Experiment

Normally, organizations must utilize a CI/CD pipeline to build a Packer image. In this experiment, we evaluate the feasibility of conducting the build process within Terraform Cloud.

The main benefits of this approach include:

- Elimination of the CI/CD pipeline as a dependency
- Enhanced security of cloud credentials (Terraform Cloud already possesses cloud credentials, and this integration leverages the existing security model)
- Seamless integration with HCP Packer
- Consolidation of image build and usage within the same platform (Terraform Cloud is used to provision VMs using images built within Terraform Cloud)

What changes are required:
Packer Binary should be bundled in the same image as TFC agent. Dockerfile example provided.