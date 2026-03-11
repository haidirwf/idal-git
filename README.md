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

A simple, colorful, and powerful CLI tool to make your daily Git workflow faster and easier.

## ✨ Why use idalgit?
Instead of typing `git add .`, then `git commit -m "..."`, and finally `git push` every single time, you can just type **`idal git`**, enter your message, and you're done! 

It also comes with beautiful colorful outputs and safety checks to prevent common Git mistakes.

---

## 🛠️ Installation 

You can install `idalgit` globally on your computer in seconds. 

Open your terminal and run this single command:

```bash
curl -sL https://raw.githubusercontent.com/haidirwf/idal-git/main/install.sh | bash
```

> **Note:** You might be asked for your computer password because it installs the tool globally so you can use it in any folder.

---

## 📖 How to Use

Once installed, you can use the `idal` command in any project folder.

### 1. Starting a New Project (`idal init`)
Use this when you have a brand new folder on your computer and want to upload it to a new GitHub repository.

```bash
idal init
```
**What it does for you:**
1. Turns the folder into a Git project (`git init`).
2. Saves all your current files (`git add` & `git commit`).
3. Asks you to paste your new GitHub URL.
4. Uploads everything to the `main` branch immediately.

### 2. Saving Your Work (`idal git`)
Use this every time you make changes to your code and want to save and upload them.

```bash
idal git
```
**What it does for you:**
1. Checks if you actually changed any files (prevents empty saves).
2. Stages all changes (`git add .`).
3. Asks you to type a message explaining what you changed.
4. Saves (`git commit`) and uploads (`git push`) automatically.

### 3. Seeing What Changed (`idal status`)
A much cleaner, colorful version of `git status`. It simply tells you exactly which files were added, modified, or deleted without the confusing extra text.

```bash
idal status
```

### 4. Viewing History (`idal log`)
Want to see your past commits? This draws a beautiful, color-coded tree diagram of your recent saves.

```bash
idal log
```

### 5. Getting Updates from Team (`idal sync`)
If you are working with others and need to download their latest changes from GitHub without messing up your own files, use this safe pull command.

```bash
idal sync
```

### 6. Oops, I made a mistake! (`idal undo`)
Did you just run `idal git` but realized you misspelled your commit message or forgot a file? Don't panic!

```bash
idal undo
```
This will delete the last commit you made, BUT it **keeps all your file changes safe** so you can fix your mistake and try `idal git` again.

---
**Enjoy your new automated workflow! 🎉**
