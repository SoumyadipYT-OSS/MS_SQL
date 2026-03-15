# Install SQL Server

This guide explains how to install **Microsoft SQL Server** on your system. SQL Server can be installed in several editions such as **Developer, Express, Standard, or Enterprise**. For learning and development purposes, the **Developer Edition** is recommended because it includes all features of the Enterprise edition and is free for development.

---

# Prerequisites

Before installing SQL Server, ensure that your system meets the following basic requirements:

- A supported **Windows operating system**
- At least **4 GB RAM** (8 GB recommended)
- Minimum **6 GB of available disk space**
- Administrative privileges on your computer
- Internet connection (for downloading installation packages)

---

# Step 1: Download SQL Server

1. Visit the official Microsoft SQL Server download page:  
   https://www.microsoft.com/sql-server/sql-server-downloads

2. Choose the **Developer** or **Express** edition.

3. Click **Download Now** to download the SQL Server installer.

After downloading, run the installer file.

---

# Step 2: Launch the SQL Server Installer

When the installer starts, you will see three installation options:

- **Basic**
- **Custom**
- **Download Media**

### Basic Installation
The **Basic** option installs SQL Server with default settings. It is the easiest way to install SQL Server quickly.

### Custom Installation
The **Custom** option allows you to configure installation options such as:

- Installation location
- SQL Server instance name
- Feature selection

### Download Media
This option allows you to download the full installation package for **offline installation**.

For most beginners, the **Basic installation** is sufficient.

---

# Step 3: Accept the License Terms

After selecting the installation type:

1. Review the **License Terms**.
2. Check **I accept the license terms**.
3. Click **Install**.

The installer will begin downloading and installing SQL Server components.

---

# Step 4: Installation Process

During installation, SQL Server setup performs several tasks:

- Downloading required packages
- Installing the SQL Server Database Engine
- Configuring system components
- Setting up services

The process may take several minutes depending on your system and internet speed.

---

# Step 5: Complete the Installation

After the installation is finished, the setup window will display:

- **Instance name**
- **SQL Server version**
- **Installation path**
- **Connection details**

Save these details because they will be needed when connecting to SQL Server.

Click **Close** to finish the installation.

---

# Install SQL Server Management Studio (SSMS)

After installing SQL Server, it is recommended to install **SQL Server Management Studio (SSMS)**. SSMS is a graphical tool used to manage databases and run SQL queries.

## Steps to Install SSMS

1. Go to the official download page:  
   https://aka.ms/ssms

2. Download the **SSMS installer**.

3. Run the installer and click **Install**.

4. Wait until the installation is complete.

5. Restart your computer if required.

---

# Connect to SQL Server

Once SQL Server and SSMS are installed, you can connect to your database server.

## Steps

1. Open **SQL Server Management Studio (SSMS)**.
2. In the **Connect to Server** window:
   - Server Type: `Database Engine`
   - Server Name: `localhost` or your instance name
   - Authentication: `Windows Authentication`

3. Click **Connect**.

If the connection is successful, you will see the **Object Explorer**, where you can manage databases and run SQL queries.

---

# Verify the Installation

To verify that SQL Server is working correctly, run the following query in SSMS:

```sql
SELECT @@VERSION;
```

## Official Guide 
|| Installation 
For detailed installation instructions, see the official guide:

[Install SQL Server](https://www.sqlservertutorial.net/getting-started/install-sql-server/)

---

