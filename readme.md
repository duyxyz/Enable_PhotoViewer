# Enable Windows Photo Viewer on Windows 10/11 (with Auto-Admin Request)

This script will **enable the classic Windows Photo Viewer** and set it as the **default viewer** for all common image formats.  
It also automatically requests **Administrator privileges (UAC prompt)**, so you don’t need to right-click → *Run as administrator*.

---

## 📂 Files

- `Enable_PhotoViewer_All_Admin.bat` → The script that updates Windows Registry.

---

## ⚠️ Requirements

- Windows 10 or Windows 11.
- You must accept the **UAC (User Account Control)** prompt when it appears.

---

## 🚀 How to Use

1. **Download or create the BAT file**
   - Open **Notepad**.
   - Copy the code from `Enable_PhotoViewer_All_Admin.bat`.
   - Save it as:
     ```
     Enable_PhotoViewer_All_Admin.bat
     ```
     (Choose **Save as type: All Files**).

2. **Run the script**
   - Double-click the `.bat` file.  
   - Windows will show a **UAC prompt** asking for Administrator permission.  
   - Click **Yes** to continue.  

3. **Wait for confirmation**
   - If successful, you will see:
     ```
     Windows Photo Viewer has been enabled and set as default for:
     JPG, JPEG, PNG, BMP, GIF, TIF, TIFF, WEBP, ICO
     ```

---

## 📸 Supported Image Formats

After running, these image types will open by default with **Windows Photo Viewer**:

- `.jpg`
- `.jpeg`
- `.png`
- `.bmp`
- `.gif`
- `.tif`
- `.tiff`
- `.webp`
- `.ico`

---

## 🔄 Reverting Back

If you want to restore the **default Photos app**:

1. Open **Settings** → **Apps** → **Default apps**.  
2. Scroll to **Photo viewer**.  
3. Select **Photos (default)** or another app.

---

✅ Done! Now your Windows 10/11 will always use the **classic Windows Photo Viewer** 🎉
