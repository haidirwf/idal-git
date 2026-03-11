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

🌍 Choose your language / Pilih bahasa Anda:
* [🇬🇧 English](#-english)
* [🇮🇩 Bahasa Indonesia](#-bahasa-indonesia)

---

## 🇬🇧 English

A custom CLI tool designed to streamline Git workflow with style, color, and robust guardrails.

### 🚀 Features

* **`idal init`**: Instantly initialize a new Git repository, stage all files, make an initial commit, prompt for your remote origin URL, and push to the `main` branch. Checks if it's already a repository naturally.
* **`idal git`**: Automatically stage all changes, prompt for a commit message, and push to your current branch securely. Prevents empty commits if no files were changed.
* **`idal status`**: A colorful, concise, and easy-to-read alternative to `git status` showing modified, added, and deleted files cleanly.
* **`idal log`**: Automatically displays recent commits into a beautiful, colorful tree graph layout.
* **`idal sync`**: Seamlessly pull the newest changes from the remote repository safely using rebase.
* **`idal undo`**: Mess up your last commit message? Safely undo your last commit while keeping your local files fully intact in the staging area!
* **Beautiful UI**: Features a custom-styled banner inspired by Laravel's colorful CLI outputs.

### 🛠️ Instant Installation

You can install `idalgit` globally in seconds using this one-line terminal command:

```bash
curl -sL https://raw.githubusercontent.com/haidirwf/idal-git/main/install.sh | bash
```

**Manual Installation (Alternative)**
If you prefer not to use the curl method, you can clone and link it manually:

1. Clone the repo:
   ```bash
   git clone https://github.com/haidirwf/idal-git.git
   cd idal-git
   ```
2. Make it executable:
   ```bash
   chmod +x idal install.sh
   ```
3. Create a Symlink:
   ```bash
   sudo ln -sf $(pwd)/idal /usr/local/bin/idal
   ```

### 💻 Usage

**Check Available Commands**
To view all commands in your terminal at any time:
```bash
idal help
```

**Initializing a New Project**
When you start a new local project and want to push it to a new empty GitHub repository:
```bash
cd /path/to/your/new/project
idal init
```
*Steps automated:*
1. Verifies the folder is not already a git repository.
2. `git init`
3. Stages everything & initial commit
4. Prompts you for the Git remote URL (e.g., `https://github.com/haidirwf/repo.git`)
5. Renames branch to `main` and pushes.

**Daily Commit & Push**
When you're working on an existing repository and are ready to save and upload your latest changes:
```bash
idal git
```
*Steps automated:*
1. Stops if no files were changed.
2. `git add .`
3. Prompts for commit message.
4. `git commit` & `git push`

---

## 🇮🇩 Bahasa Indonesia

Alat CLI kustom yang dirancang untuk menyederhanakan alur kerja (workflow) Git dengan gaya visual yang menarik, penuh warna, dan perlindungan error yang kuat.

### 🚀 Fitur

* **`idal init`**: Menginisialisasi repositori Git baru, menyiapkan semua file (stage), membuat commit awal, meminta URL origin remote Anda, dan langsung melakukan push ke branch `main`. Secara otomatis mendeteksi jika folder sudah merupakan repositori Git.
* **`idal git`**: Secara otomatis melakukan stage semua perubahan, meminta pesan commit, dan push ke branch Anda saat ini dengan aman. Mencegah commit kosong jika tidak ada perubahan file.
* **`idal status`**: Alternatif berwarna, ringkas, dan mudah dibaca untuk `git status`, memperlihatkan file yang dimodifikasi, ditambah, dan dihapus dengan sangat rapi.
* **`idal log`**: Secara otomatis menampilkan commit-commit terbaru dalam tata letak pohon grafis (tree graph) yang indah dan berwarna.
* **`idal sync`**: Menarik (pull) perubahan terbaru dari repositori remote dengan aman menggunakan metode *rebase*.
* **`idal undo`**: Salah ketik pesan commit terakhir? Batalkan commit terakhir Anda dengan aman sambil tetap mempertahankan file-file lokal Anda utuh di *staging area*!
* **UI Cantik**: Memiliki banner kustom berwarna yang terinspirasi oleh tampilan CLI Laravel.

### 🛠️ Instalasi Instan

Anda dapat menginstal `idalgit` secara global dalam hitungan detik menggunakan perintah terminal satu baris ini:

```bash
curl -sL https://raw.githubusercontent.com/haidirwf/idal-git/main/install.sh | bash
```

**Instalasi Manual (Alternatif)**
Jika Anda memilih untuk tidak menggunakan metode curl, Anda dapat meng-clone dan menautkannya secara manual:

1. Clone repositori:
   ```bash
   git clone https://github.com/haidirwf/idal-git.git
   cd idal-git
   ```
2. Buat file dapat dieksekusi:
   ```bash
   chmod +x idal install.sh
   ```
3. Buat Symlink:
   ```bash
   sudo ln -sf $(pwd)/idal /usr/local/bin/idal
   ```

### 💻 Penggunaan

**Cek Perintah yang Tersedia**
Untuk melihat semua perintah di terminal Anda kapan saja:
```bash
idal help
```

**Menginisialisasi Proyek Baru**
Saat Anda memulai proyek lokal baru dan ingin mengunggahnya ke repo GitHub kosong yang baru:
```bash
cd /path/to/proyek/baru/anda
idal init
```
*Langkah yang diotomatisasi:*
1. Memverifikasi apakah folder sudah merupakan repositori git atau belum.
2. `git init`
3. Stage semua file & commit awal
4. Meminta URL remote Git (misal: `https://github.com/haidirwf/repo.git`)
5. Mengganti nama branch menjadi `main` dan melakukan push.

**Commit & Push Sehari-hari**
Saat Anda bekerja pada repositori yang sudah ada dan siap untuk menyimpan serta mengunggah perubahan terbaru Anda:
```bash
idal git
```
*Langkah yang diotomatisasi:*
1. Berhenti jika tidak ada file yang berubah.
2. `git add .`
3. Meminta pesan commit.
4. `git commit` & `git push`

---
**Enjoy your new automated workflow! 🎉**
