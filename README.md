# Monero GNURoot Installer

This is a simple setup shell script that makes it easier to start using the current Monero version on Android in GNURoot. 

### Installation

`wget https://raw.githubusercontent.com/JamesCullum/Monero-GNURoot-Installer/master/Setup.sh -O - | sh`

### Considerations

- Downloads the current ARM version from getmonero.org without a checksum validation. This allows the same script to work for all future versions, but allows for MITM under certain conditions. Make sure that you are in a trusted WiFi before running the script.
- Creates a /monero folder, that contains folders for every version, like /monero/monero-v0.10.3.1
- Automatically creates a shortcut called "start.sh", that helps to use a remote node. If you have enough storage and want better privacy, you can download the blockchain locally and run it in the classic node-wallet scenario.
