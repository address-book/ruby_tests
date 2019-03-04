# RubyTests

This open source code is for use in introductory Selenium workshops.
See [LICENSE](https://github.com/address-book/ruby_tests/LICENSE.txt) file for details.


## Description

Different workshops and lessons will be managed by different branches. To ensure you are getting
the correct code for your workshop, go to the [Releases Page](https://github.com/address-book/ruby_tests/releases)
and download the tutorial zip file that corresponds with your workshop.

## Workshop Prerequisites

1. [Install Git](https://github.com/address-book/ruby_tests#install-git)
2. [Install Ruby](https://github.com/address-book/ruby_tests#install-ruby)
3. [Install RubyMine](https://github.com/address-book/ruby_tests#install-rubymine)
4. [Set up Project](https://github.com/address-book/ruby_tests#set-up-this-project-in-rubymine)

### Install Git

[Git](https://git-scm.com/doc) is a version control system that lets you check out code from a repository, 
work with that code on your own branch, and then merge that code with any changes that have been made by other developers. 
Git is an essential tool for distributed development teams, and is a critical component of the continuous 
integration/continuous development toolchain.

#### MacOSX ([screen cast](https://youtu.be/N0cNxpbWUXs)):

1. Go to [https://git-scm.com/downloads](https://git-scm.com/downloads).
2. Under **Downloads**, click **Mac OS X**.
3. When the download completes, double-click the `.dmg` file open the installer package.
4. Double-click the installer package to begin the installation.
    > *Security Warning*
    >
    > You may see a warning message that the package can't be opened because it's not from a recognized developer. 
    If this happens, go to System Preferences > Security and Privacy Settings, and click Open Anyway.
5. Click **Continue** for the installation, and enter your local password to authorize the installation.

#### Windows ([screen cast](https://youtu.be/rQX7-Xataa0)):

1. Go to [https://git-scm.com/downloads](https://git-scm.com/downloads)
2. Under **Downloads**, click on **Windows**.
3. When the dialog opens asking if you want to allow the app to make changes to your device, click Yes.
4. Follow the steps in the setup wizard to complete the installation. You should accept all the default settings.
<br />

### Install Ruby

[Ruby](https://www.ruby-lang.org/en/) is a A dynamic, open source programming language with a focus on simplicity and 
productivity. Early Ruby enthusiasts were also Test Driven Development evangelists and strong open source supporters,
making Ruby ideal for learning to write test automation code. Ruby installation on Watir is straightforward, while on
MacOSX, it requires also installing a version manager.

#### MacOSX 

1. Go to [http://watir.com/guides/ruby/#mac](http://watir.com/guides/ruby/#mac)
2. Follow directions to install XCode command-line tools
3. Follow directions to install HomeBrew
4. Follow directions to install and configure rbenv

#### Windows

1. Go to [https://rubyinstaller.org/downloads/](https://rubyinstaller.org/downloads/)
2. Click to download `Ruby+Devkit 2.5.X (x64)`.
3. Double-click the installer package to begin the installation. You should accept all the default settings.
<br />

### Install RubyMine

[RubyMine](https://www.jetbrains.com/ruby/download/) is an integrated development environment that incorporates several tools
 for developing and running Ruby code. You will be using RubyMine to write and edit the sample Selenium scripts used 
 in the exercises. JetBrains provides a free 30 day license, if you have any license issues, contact the workshop
 organizer
 
 #### MacOSX\
 
 1. Go to [https://www.jetbrains.com/ruby/download/](https://www.jetbrains.com/ruby/download/)
 2. On the **Downloads** page, select **macOS**.
 3. Click **Download**.
 4. When the download completes, double-click the .dmg file open the installer package.
 5. Double-click the installer package to begin the installation.
 6. Drag and drop the RubyMine icon into the **Applications** folder.
 
 #### Windows\
 
 1. Go to [https://www.jetbrains.com/ruby/download/](https://www.jetbrains.com/ruby/download/)
 2. On the **Downloads** page, select **Windows**.
 3. Click **Download**.
 4. When the download completes, double-click the `.exe` file to launch the installation wizard. 
 You should accept all the default settings.
 <br />

 

### Set Up This Project in RubyMine

#### MacOSX:

1. Downloading the Project Files
    * Go to [https://github.com/address-book/ruby_tests/releases](https://github.com/address-book/ruby_tests/releases).
    * Download and extract the latest `tutorial_mac.zip` file, or the one that matches the name of your workshop.
        > You can save the zip file to any directory you want, including Downloads. You will just need to remember the 
        directory when you want to open the tutorial files in RubyMine. 

2. Opening the Project in RubyMine
    * Launch RubyMine.
    * Click **Open**.
    * Browse to the **ruby_tests** directory, and click **Open**.
    * Click the **Sidebars** icon in the lower left corner of RubyMine to open the sidebars.
    * Open the **Project** sidebar and expand the **spec** directory.
    * In the **spec** directory, double click **selenium_script.rb**, and ruby file will load into the editor window.

3. Configure the Project SDK

    When the file loads, you'll see a tool-tip notification at the top of the file that the SDK for the project is not defined.
    * Click **Setup SDK**, and then **Configure**; or select **RubyMine > Preferences > Languages & Frameworks > Ruby SDK and gems**
    * Click the button for **rbenv: 2.5.3**.
    * Click **OK**.

4. Confirm that Selenium is Working
    * In the file list on the left, right-click on the **selenium_script.rb** file.
    * Select **Run 'selenium_script'**.
        >You should see the console window open, then the driver opens and 
        close a browser, confirming that the Selenium environment is running on your local machine.

### Windows:

1. Downloading the Project Files
    * Go to [https://github.com/address-book/ruby_tests/releases](https://github.com/address-book/ruby_tests/releases).
    * Download and extract the `tutorial_windows.zip` file, or the one that matches the name of your workshop.
        > You can save the zip file to any directory you want, including Downloads. You will just need to remember the 
        directory when you want to open the tutorial files in RubyMine.

2. Opening the Project in RubyMine
    * Launch RubyMine.
    * Click **Open**.
    * Browse to the **ruby_tests** directory, and click **Open**.
    * Click the **Sidebars** icon in the lower left corner of RubyMine to open the sidebars.
    * Open the **Project** sidebar and expand the **spec** directory.
    * In the **spec** directory, double click **selenium_script.rb**, and ruby file will load into the editor window.

3. Configure the Project SDK

    When the file loads, you'll see a tool-tip notification at the top of the file that the SDK for the project is not defined.
    * Click **Setup SDK**, and then **Configure**; or select **RubyMine > Preferences > Languages & Frameworks > Ruby SDK and gems**
    * Click the button for Ruby 2.5.3.
    * Click **OK**.

4. Confirm that Selenium is Running
    * In the file list on the left, right-click on the **selenium_script.rb** file.
    * Select **Run 'selenium_script'**.
        >You should see the console window open, then the driver opens and 
        close a browser, confirming that the Selenium environment is running on your local machine.

