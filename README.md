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

A powerful, visually appealing CLI tool designed to streamline daily Git operations into rapid, single-line commands with built-in safety checks.

## ✨ Key Benefits
* **Speed:** Replaces repetitive sequences (add, commit, push) with single commands.
* **Safety:** Built-in safeguards prevent empty commits and initialize errors. 
* **Visibility:** Replaces verbose Git outputs with clean, colorful, and highly readable terminal layouts.

---

## 🛠️ Installation 

Install `idalgit` globally in seconds via terminal:

```bash
curl -sL https://raw.githubusercontent.com/haidirwf/idal-git/main/install.sh | bash
```

> *Requires `sudo` privileges to write to `/usr/local/bin`.*

---

## 📖 Command Reference

Run `idal help` anywhere to view the command menu.

### 1. New Project Setup (`idal init`)
Initializes a new repository and pushes your first commit to a remote origin instantly.

```bash
idal init
```
* **Process:** `git init` → `git add .` → `git commit` → Prompts for URL → `git push origin main`
* **Safeguards:** Automatically aborts if the directory is already a Git repository.

### 2. Daily Save & Upload (`idal git`)
The core command for rapid development cycles.

```bash
idal git
```
* **Process:** Stages all files → Prompts for commit message → Commits → Pushes to origin.
* **Safeguards:** Aborts if there are no modified files in the working tree.

### 3. Check Status (`idal status`)
A vibrant, clutter-free alternative to `git status` that cleanly highlights modified (`~`), added (`+`), and deleted (`-`) files.

```bash
idal status
```

### 4. View History (`idal log`)
Displays the 10 most recent commits in a beautiful, formatted table.

```bash
idal log
```

### 5. Safe Pull (`idal sync`)
Pulls the latest changes from your remote branch using a rebasing strategy instead of merge commits to maintain a linear history.

```bash
idal sync
```

### 6. Safe Undo (`idal undo`)
Deletes your last commit from the log **while keeping your local file changes intact** in the staging area. Essential for fixing typos in commit messages.

```bash
idal undo
```

---
**Enjoy your new automated workflow! 🎉**
