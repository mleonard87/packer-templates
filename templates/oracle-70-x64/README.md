oracle-70-x64
=============
Default installation of Oracle Linux 7. This provides two vagrant boxes, one using the Unbreakable Enterprise Kernel and the other using the Red Hat Compatible Kernel.

Due to the fact that Oracle offer their downloads unlike any other IT company behind a fortress of I-accepts, sign-ins and give-me-all-your-details-including-your-inside-leg-measurements its not possible to provide Packer with a URL at which to find the OL7 iso. Please download the ison from the Oracle E-Delivery service and set the user variables "iso_location" and "iso_md5_checksum" in template.json.

Build Steps
-----------
- Navigate to the oracle-linux-70-x86_64 directory.
- Run `packer build template.json`.
- Once complete you will find the Vagrant boxes created in ../../virtualbox

Output
------
- OracleLinux-R7-U0-Server-x86_64-rhck.box - uses the Red Hat Compatible Kernel.
- OracleLinux-R7-U0-Server-x86_64-uek.box - uses the Unbrekable Enterprise Kernel.
