# idalgit

```text
  _     _       _       _ _   
 (_)   | |     | |     (_) |  
  _  __| | __ _| | __ _ _| |_ 
 | |/ _` |/ _` | |/ _` | | __|
 | | (_| | (_| | | (_| | | |_ 
 |_|\__,_|\__,_|_|\__, |_|\__|
                   __/ |      
                  |___/       
```
**Automated Git Workflow CLI**

A custom CLI tool designed to streamline initializing and pushing Git repositories with style.

## 🚀 Features

* **`idal init`**: Instantly initialize a new Git repository, stage all files, make an initial commit, prompt for your remote origin URL, and push to the `main` branch.
* **`idal git`**: Automatically stage all changes, prompt for a commit message, and push to your current branch securely.
* **Beautiful UI**: Features a custom-styled banner inspired by Laravel's colorful CLI outputs.

## 🛠️ Installation Step-by-Step

Follow these steps to install `idalgit` globally on your system:

### 1. Clone the Repository

Choose where you want to store the script, then clone this repository:

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/idalgit.git
cd idalgit
```

*(Remember to replace `YOUR_GITHUB_USERNAME` with your actual username once you upload this!)*

### 2. Make the Script Executable

Before you can run the tool, you need to grant it execution permissions:

```bash
chmod +x idal
```

### 3. Create a Global Symlink

To use the `idal` command from anywhere inside your terminal menus, create a standard symbolic link to your system's binaries folder (this might prompt for your computer's `sudo` password):

```bash
sudo ln -sf $(pwd)/idal /usr/local/bin/idal
```
*(Note: The `-f` flag safely overwrites any existing `idal` link if you ever need to re-link it).*

---

## 💻 Usage

### Initializing a New Project

When you start a new local project and want to push it to a new empty GitHub repository:

```bash
cd /path/to/your/new/project
idal init
```
**What happens automatically:**
1. Displays the `idalgit` banner
2. Runs `git init`
3. Runs `git add .`
4. Commits with the initial message `"Commit"`
5. **Prompts you for the Git remote URL** (e.g., `https://github.com/username/repo.git`)
6. Renames the branch to `main` (`git branch -M main`)
7. Pushes the code to your repository!

### Daily Commit & Push

When you're working on an existing repository and are ready to save and upload your latest changes:

```bash
idal git
```
**What happens automatically:**
1. Displays the `idalgit` banner
2. Runs `git add .`
3. **Prompts you for your commit message**
4. Commits the changes.
5. Dispatches a `git push` to your remote repository.

---
**Enjoy your new automated workflow! 🎉**
