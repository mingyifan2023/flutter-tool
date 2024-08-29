


1. flutter 安装配置 
使用snap install  flutter 直接安装即可

在flutter doctor 时，会有[✗] Android toolchain - develop for Android devices
的问题，这个用第二步解决

最后用非root来执行flutter run 
Startup Error: Unable to detect graphics environment 必须是非root



2. 安装android studio 

参考：LinuxMintでFlutter開発環境構築
https://qiita.com/pamyupamyuKAWAII/items/9123bf744539a68d3142



直接启动这个ide，在windows和linux都不合适，
最终只是在linux下解决 android toolchain的问题
顺利执行flutter doctor 而已


安装后，在非root下，启动这个ide
在SDK Manager 下安装「Android SDK Command-line Tool」
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

flutter doctor --android-licenses



最后flutter doctor的问题解决，可以在非root下创建项目






3. 使用genymotion来创建和启动模拟器

安装教程找之前的资料



 windows下安装 


1. 安装 Genymotion
前往 Genymotion 官网 下载并安装 Genymotion。
创建一个账户并登录。
2. 安装 VirtualBox
Genymotion 依赖于 VirtualBox 来虚拟化 Android 环境。如果尚未安装，请从 VirtualBox 官网 下载并安装它。
3. 配置 Genymotion
打开 Genymotion，点击“Add”或“+”按钮以添加新的虚拟设备。
选择合适的设备模型和 Android 版本，然后点击“Next”并完成安装。
4. 启动 Genymotion 模拟器
在 Genymotion 主界面中，选择你刚才创建的虚拟设备并点击“Start”来启动模拟器。
5. 确保 ADB 可用
Genymotion 会自带一个 ADB（Android Debug Bridge），确保在终端（或命令提示符）中可以访问到它。通常 Genymotion 的 ADB 路径如下：
Windows: C:\Program Files\Genymobile\Genymotion\tools\
macOS: /Applications/Genymotion.app/Contents/MacOS/tools/
您可能需要将此路径添加到系统的环境变量中，以便从任何地方调用 adb 命令。
6. 确定 Flutter 使用正确的 ADB
通过执行以下命令来检查 Flutter 是否识别了 Genymotion 模拟器：
bash
flutter devices
如果 Genymotion 设备出现在列表中，说明配置成功。
7. 运行 Flutter 应用
导航到您的 Flutter 项目目录。
使用以下命令来运行您的 Flutter 应用：
bash
flutter run
Flutter 将自动检测到连接的 Genymotion 模拟器并在其上运行应用。
8. 解决潜在问题
ADB 连接问题：如果 Flutter 无法找到设备，请确保 Genymotion 模拟器正在运行，并检查是否有其他实例的 ADB 正在运行（例如，Android Studio 的 ADB）。可以尝试重启 Genymotion 或手动杀掉 ADB 进程。

网络设置：确保 Genymotion 的网络设置正确。有时，如果模拟器无法访问互联网，可能会导致一些功能受限。

9. 调试
在运行应用后，您可以在终端中查看输出日志，以进行调试和了解应用的运行状态。
总结
通过以上步骤，您应该能够顺利通过 Genymotion 模拟器运行 Flutter 应用。如果有任何问题或疑问，请随时询问！




linux下安装

在 Linux Mint 上使用 Genymotion 运行 Flutter 应用的步骤与其他操作系统类似，但会有一些特定于 Linux 的配置。以下是详细步骤：

1. 安装 Genymotion
下载 Genymotion:

前往 Genymotion 官网。
注册并下载适用于 Linux 的版本。
安装依赖项（如果尚未安装）:

bash
sudo apt-get install virtualbox
安装 Genymotion:

打开终端，导航到下载目录并解压下载的文件：
bash
cd ~/Downloads
chmod +x genymotion-*.bin
./genymotion-*.bin
按照提示完成安装。
2. 启动 Genymotion
在终端中启动 Genymotion：
bash
~/genymotion/genymotion
或者通过应用菜单找到并启动 Genymotion。
3. 创建和启动虚拟设备
创建虚拟设备:

在 Genymotion 窗口中，点击“Add”或“+”按钮来添加一个新的虚拟设备。
选择合适的设备型号和 Android 版本，然后完成安装。
启动虚拟设备:

选择你刚才创建的虚拟设备，然后点击“Start”来启动它。
4. 确保 ADB 可用
Genymotion 自带一个 ADB（Android Debug Bridge）。确保在终端中能访问到它。你可以通过以下命令检查 ADB 路径：
bash
which adb
如果需要，你可以手动配置 ADB 的路径，通常 Genymotion 的 ADB 路径如下：
bash
~/genymotion/tools/
5. 确保 Flutter 使用正确的 ADB
使用以下命令检查 Flutter 是否识别了 Genymotion 模拟器：
bash
flutter devices
如果 Genymotion 设备出现在列表中，说明配置成功。
6. 运行 Flutter 应用
导航到您的 Flutter 项目目录：
bash
cd /path/to/your/flutter_project
使用以下命令来运行 Flutter 应用：
bash
flutter run
7. 解决潜在问题
ADB 连接问题:

如果 Flutter 无法找到设备，请确保 Genymotion 模拟器正在运行，并检查是否有其他实例的 ADB 正在运行。例如，您可能需要杀掉 Android Studio 的 ADB 进程。
通过执行以下命令重启 ADB：
bash
adb kill-server
adb start-server
网络设置:

确保 Genymotion 的网络配置正确，以便模拟器可以访问互联网。
8. 调试
在运行应用后，您可以在终端中查看输出日志，以进行调试和了解应用的运行状态。
总结
按照以上步骤，您应该能够在 Linux Mint 上通过 Genymotion 模拟器运行 Flutter 应用。如果您遇到任何问题或有其他疑问，请随时提问！





没有找到adb

2024/8/29 11:14:40

如果在 Linux Mint 上未找到 ADB（Android Debug Bridge），可能是由于 Genymotion 的 ADB 工具未被正确识别或未添加到系统路径中。请按照以下步骤来解决此问题：

1. 确保 Genymotion 已成功安装
确认 Genymotion 是否已正确安装，您可以通过终端运行以下命令启动 Genymotion：

bash
~/genymotion/genymotion
2. 查找 Genymotion 中的 ADB
Genymotion 自带 ADB 工具，通常位于以下目录：

bash
~/genymotion/tools/
您可以使用以下命令检查该目录是否存在，并查看其中的 ADB 文件：

bash
ls ~/genymotion/tools/
3. 使用 Genymotion 的 ADB
在您的终端中，您可以直接使用 Genymotion 的 ADB 工具执行命令。例如：

bash
~/genymotion/tools/adb devices
这将列出所有连接的设备，包括虚拟设备。

4. 将 Genymotion 的 ADB 添加到 PATH
为了方便起见，您可以将 Genymotion 的 ADB 路径添加到系统的环境变量中，这样就可以在任何地方使用 adb 命令。

打开终端，编辑 .bashrc 文件（如果您使用的是 Bash）：

bash
nano ~/.bashrc
在文件末尾添加以下行：

bash
export PATH=$PATH:~/genymotion/tools
保存并退出（在 nano 中按 CTRL + X，然后按 Y 键确认保存）。

使更改生效：

bash
source ~/.bashrc
5. 验证 ADB 是否可用
现在您可以在终端中使用 adb 命令，例如：

bash
adb devices
如果一切正常，您应该能够看到正在运行的 Genymotion 模拟器的设备列表。

6. 启动 Flutter 应用
确保 Genymotion 模拟器正在运行，然后导航到您的 Flutter 项目目录并执行：

bash
flutter run
总结
如果您仍然遇到问题，请确保 Genymotion 正在运行且没有其他实例的 ADB 或 Android Studio 的 ADB 干扰。如果还有疑问或需要进一步帮助，请随时询问！




使用流程

先保证genymotion的模拟器正常运行，virtualbox 正常

然后在非root下执行flutter run 

第一次会花费一些时间，最后模拟器会显示flutter 的应用程序


