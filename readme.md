# 🖼️ Enable Windows Photo Viewer on Windows 10/11

[![Run Script](https://img.shields.io/badge/Run%20Directly-PowerShell-blue?logo=powershell)](#-option-2--run-directly-powershell-one-liner)  
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

This script will **re-enable the old Windows Photo Viewer** on Windows 10/11.  
By default, Microsoft hides it in favor of the new Photos app, but the viewer is still included in the system.

---

## 📂 Files

- `Enable_PhotoViewer.bat` → Adds registry entries to enable Windows Photo Viewer.

---

## ⚠️ Requirements

- Windows 10 or Windows 11  
- Administrator rights (script auto-requests if not already)

---

## 🚀 How to Use

### ✅ Option 1 — Manual Run
1. **Download or create the BAT file**
   - Open **Notepad**
   - Copy the code from [`Enable_PhotoViewer.bat`](Enable_PhotoViewer.bat)
   - Save as:
     ```
     Enable_PhotoViewer.bat
     ```
     (Choose **Save as type: All Files**)

2. **Run the script**
   - Right-click → **Run as administrator**  
   - The registry entries will be added automatically

3. **Result**
   - You will now see **Windows Photo Viewer** in the **Open with** menu  
   - Example:  
     ```
     Open with → Windows Photo Viewer
     ```

---

### ⚡ Option 2 — Run Directly (PowerShell One-Liner)

Paste this in **PowerShell (Admin)**:

```powershell
irm "https://raw.githubusercontent.com/duyxyz/Enable_PhotoViewer/main/Enable_PhotoViewer.BAT" -OutFile "$env:TEMP\Enable_PhotoViewer.bat"; Start-Process "$env:TEMP\Enable_PhotoViewer.bat" -Verb RunAs
