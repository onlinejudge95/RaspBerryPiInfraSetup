RaspberryPiInfraSetup
=====================

This ansible repo hosts the codebase for managing raspberrypi setups.

## Usage
In order to provision the system using ansible, use the following steps.
1. Make sure you have installed the dependencies in your system `pip install --requirement requirements.txt`.
2. Make sure you have a user with sudo privileges on the pi.
3. Make sure you have access to ssh-key for that user.
4. Create a copy of the file from `ansible/inventory/raspberrypi.example` and fill the required block, with the IP of your pi.
5. Run the shell script `bin/provision_commandcenter.sh`