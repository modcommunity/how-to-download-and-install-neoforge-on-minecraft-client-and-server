A guide on how to download, install, and run [NeoForge](https://neoforged.net/) for both the [Minecraft](https://www.minecraft.net/) client and server, including instructions for using the GUI installer and command-line method.

[**View Guide On TMC (Recommended Due To Better Formatting)**](http://blog.moddingcommunity.com/how-to-install-neoforge-for-minecraft-client-server/)

If you've ever modded [Minecraft](https://www.minecraft.net/) before, you probably have heard of [Forge](https://minecraftforge.net).

Forge is a classic modding platform that has kept the modding scene in Minecraft alive for many years. However, it has been criticized for being difficult to use and maintain, especially for newer modders.

Enter [NeoForge](https://neoforged.net/), a modern modding platform that aims to be more user-friendly and accessible for both modders and players. NeoForge is built on top of Forge, but it has been redesigned from the ground up to provide a better experience for everyone involved in the modding community.

## Table of Contents
- [Requirements](#requirements)
- [Downloading](#downloading)
- [Running & Installing](#running--installing)
    - [Through the GUI Installer](#through-the-gui-installer)
        - [Client Installation](#client-installation)
        - [Server Installation](#server-installation)
    - [Through the Command Line (Linux/PowerShell)](#through-the-command-line-linuxpowershell)
        - [Determine Correct Flags to Pass](#determine-correct-flags-to-pass)
            - [Client Installation](#client-installation-1)
            - [Server Installation](#server-installation-1)
        - [Running the Installer](#running-the-installer)
- [Notes](#notes)
    - [Automatic Restarts](#automatic-restarts)
- [See Also](#see-also)
- [Conclusion](#conclusion)

## Requirements
- A computer running **Windows 10** (or later) or Server, or Linux.
- At least 1 GB of free storage space.
- If you're using a hosting provider for your server, make sure they support custom modded servers and allow you to upload custom files.
- Java
    - Download From: [Adoptium](https://adoptium.net/) or [Oracle](https://www.oracle.com/java/technologies/downloads)

## Downloading
The first thing you'll want to do is download the NeoForge installer. This process is fairly simple.

1. Download the version of NeoForge you want from their website [here](https://neoforged.net/).
    * Ensure to select the correct version of Minecraft and NeoForge.
![NeoForge Download Page](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/download_choose.png)
2. Click the **Click Here to Download Installer** button on the right side of the page.
3. Open the folder or directory where the installer was downloaded.
    - If this is for a server on Windows, you can create a new folder for your server that you'll point the GUI installer to later.


On Windows, your file explorer should look like this.

![NeoForge Installer Downloaded](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/win_explorer.png)

## Running & Installing
### Through the GUI Installer
If you intend to run the installer through the GUI, simply double-click the installer JAR file. This will open the NeoForge installer interface.

![NeoForge Installer GUI](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/gui_start.png)

#### Client Installation
If you're installing NeoForge for your client, we recommend creating a new installation profile through the Minecraft Launcher to keep things organized. This way, you can easily switch between different versions of Minecraft and NeoForge without affecting your main installation.

In order to do this, please follow these steps:

1. Open the Minecraft Launcher and click on the **Installations** tab at the top.
2. Click the **New installation** button to create a new installation profile.
![Minecraft Launcher Installations Tab](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/gui_client_new.png)
3. Fill out the installation details:
    - **Name** (1): Give your installation a name (e.g., "NeoForge Test 26.1.2").
    - **Version** (2): Select the version of Minecraft that matches the NeoForge version you downloaded.
    - **Game Directory** (3): You can leave this as default or specify a custom directory if you want to keep it separate from your main Minecraft installation.
4. Click the **Install** button to create the new installation profile.
    - You may want to uncheck the **Launch after Install** option if you want to install NeoForge first before launching the game.
![Minecraft Launcher New Installation Details](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/gui_client_new-2.png)

After creating a new installation profile, you can proceed with the NeoForge installation:

1. Select the **Install Client** option (4) on the left side of the installer.
2. If necessary, change the **installation directory** to the location of your Minecraft installation.
    - By default, it should point to the correct location.
    - On Windows, this is typically: `C:\Users\{USER}\AppData\Roaming\.minecraft`
![NeoForge Client Installation](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/gui_client_install_config.png)
3. Click the **Proceed** button to start the installation process.
4. Wait for the installer to download and set up NeoForge. This may take a few minutes depending on your internet speed and computer performance.
5. Once the installation is complete, you can launch Minecraft using the NeoForge profile that was created during the installation process.

#### Server Installation
The server installation process is similar, but it has the option to create a server setup instead of installing into an existing Minecraft installation.

1. Select the **Install server** option (1)
2. Ensure the **Server Starter Jar** option is selected (2)
3. Change the **Installation Directory** to the folder you created for your server earlier (3)
    - The folder **must** be empty before proceeding with the installation!
4. Click the **Proceed** button to start the installation process.
![NeoForge Server Installation](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/gui_server_config.png)

This will download the necessary server files and set up NeoForge for your server.

![NeoForge Server Install Progress](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/gui_server_progress.png)

Once the installation is complete, you can start your server using the generated `run.bat` file on Windows or `run.sh` on Linux.

![NeoForge Server Run Start Script](https://github.com/modcommunity/how-to-download-and-install-neoforge-on-minecraft-client-and-server/raw/main/images/gui_server_win_run.png)

**WARNING**: When you initially start the server, the server will exit stating you need to accept the EULA. You can do this by opening the `eula.txt` file and changing `eula=false` to `eula=true`. After accepting the EULA, you can restart the server, and it should run with NeoForge installed.

### Through the Command Line (Linux/PowerShell)
If you prefer to use the command line, you can run the installer using Java. This method is especially useful for Linux users or those who are comfortable with terminal commands.

#### Determine Correct Flags to Pass
Before running the installer through the command-line, let's quickly go over the different flags you can pass to the installer to specify what you want to install.

For your convenience, here is  the output of the `--help` flag which lists all the available options.

<details>
<summary>Click to expand</summary>

```bash
java -jar .\neoforge-26.1.2.65-beta-installer.jar --help
Outputting log to file neoforge-26.1.2.65-beta-installer.jar.log
JVM info: Oracle Corporation - 26.0.1 - 26.0.1+8-34
java.net.preferIPv4Stack=true
Current Time: 24/05/2026 02:53:09
Option                                  Description
------                                  -----------
--debug                                 Run in debug mode -- don't delete any
                                          files
--fat, --fat-installer, --generate-fat  Generate a fat installer jar (default:
  [File]                                  E:\servers\minecraft\neoforge-
                                          26.1.2.65-beta-installer-fat.jar)
--fat-include-installer-libs            Include the installer libraries in the
                                          fat installer
--fat-include-minecraft                 Include the Minecraft client / server
                                          jar in the fat installer
--fat-include-minecraft-libs            Include the Minecraft libraries in the
                                          fat installer
--fat-offline, --gen-offline, --        Generate an online fat installer
  generate-offline, --gf
-h, --help                              Help with this installer
--install-client, --installClient       Install a client to the specified
  [File]                                  directory, defaulting to the MC
                                          installation directory (default: C:
                                          \Users\chris\AppData\Roaming\.
                                          minecraft)
--install-server, --installServer       Install a server to the current
  [File]                                  directory (default: .)
--mirror <URL>                          Use a specific mirror URL
--offline                               Don't attempt any network calls
--server-jar, --server-starter, --      Download the server starter jar for
  server.jar                              arg-free executable launches
--skip-hash-check                       Skips the hash check when verifying
                                          outputs
```
</details>

##### Client Installation
For a client installation, you will want to pass the following flags (replacing `{DIR_NAME}` with the actual directory name of your Minecraft installation if you want to specify it, otherwise it will default to the correct location):

```bash
--install-client {DIR_NAME}
```

##### Server Installation
For a server installation, you will want to pass the following flags (replacing `{DIR_NAME}` with the actual directory name of your server folder):

```bash
--install-server {DIR_NAME} --server-starter
```

**NOTE**: The `--server-starter` flag creates a server jar file automatically which is necessary for arg-free launching of the server.

#### Running the Installer
1. Open your terminal (Linux) or PowerShell (Windows).
    - On Windows, you can right-click in the folder where the installer is located and select **Open in Terminal** or **Open in PowerShell** to quickly navigate to the correct directory.
2. Navigate to the directory where the NeoForge installer JAR file is located using the `cd` command.
    - For example:
        - Windows: `cd C:\Users\{USER}\Downloads`
        - Linux: `cd /home/{USER}/Downloads`
3. Run the installer using the following command:
    ```bash
    # On Windows
    java -jar .\neoforge-{VERSION}-installer.jar {FLAGS}

    # On Linux
    java -jar ./neoforge-{VERSION}-installer.jar {FLAGS}
    ```
    - Replace `{VERSION}` with the actual version number of the installer you downloaded.
    - Replace `{FLAGS}` with the appropriate flags that you determined in the previous section based on whether you're installing for the client or server.
4. Follow the prompts in the terminal to complete the installation process for either the client or server, similar to the GUI method.

You can now start the server using the generated `run.bat` file on Windows or `run.sh` on Linux, and launch Minecraft using the NeoForge profile that was created during the installation process.

## Notes
### Automatic Restarts
If you're looking to set up automatic restarts for your server, you can create a simple wrapper script that runs the server and restarts it if the main server script crashes or stops. Here's an example of how you can do this on both Windows and Linux.

#### Windows (Batch Script)
Create a new file called [`start_server.bat`](./scripts/start-server.bat) in the same directory as your server files and `run.bat` with the following contents:

```batch
@echo off
:start
echo Starting Minecraft NeoForge Server...
title Minecraft NeoForge Server (Auto-Restart)

:: Call the official neoforge run script
call run.bat

echo.

echo Server stopped or crashed! Restarting in 10 seconds...
echo Press Ctrl+C to cancel the auto-restart loop.

timeout /t 10

goto start
```

#### Linux (Bash Script)
Create a new file called [`start_server.sh`](./scripts/start-server.sh) in the same directory as your `run.sh` and server files with the following contents:

```bash
#!/bin/bash

while true; do
    echo "Starting Minecraft NeoForge Server..."
    echo "Press Ctrl+C to stop the server and exit the auto-restart loop."
    echo "---------------------------------------------"

    # Call the official neoforge run script
    ./run.sh

    echo "Server stopped or crashed! Restarting in 10 seconds..."
    sleep 10
done
```

##### Using Screen
If you're running your server on Linux, you can use the [`screen`](https://man7.org/linux/man-pages/man1/screen.1.html) command to run your server in a detachable session. This allows you to start the server, detach from the session, and keep it running in the background even if you close your terminal.

You can start the server using `screen` with the automatic restart script above like this:

```bash
screen -S mc-neoforge ./start_server.sh
```

If you'd like to detach from the screen session while keeping the server running, you can press `Ctrl+A` followed by `D`. To reattach to the session later, use:

```bash
screen -r mc-neoforge
```

**NOTE**: If only one session is running, you can simply use `screen -r` to reattach without specifying the session name.

## See Also
* [NeoForge Website](https://neoforged.net/)
* [NeoForge GitHub Organization](https://github.com/neoforged)
* [Pterodactyl](https://pterodactyl.io/) - A popular, free, and open source game server control panel that allows you to easily manage your self-hosted Minecraft servers (with NeoForge support!).

## Conclusion
NeoForge is a fantastic modding platform that offers a more modern and user-friendly experience for both modders and players. Whether you're looking to install it for your client or set up a modded server, the installation process is straightforward and can be done through either a GUI installer or the command line. With NeoForge, you can enjoy a wide variety of mods and custom content in Minecraft while benefiting from improved performance and stability compared to older modding platforms.

If you have any questions or are looking for a modding community to be a part of, consider joining our [Discord server](https://discord.moddingcommunity.com)!

Happy modding!