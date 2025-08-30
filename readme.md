# Enable Windows Photo Viewer on Windows 10/11

This script will **enable the old Windows Photo Viewer** on Windows 10/11.  
By default, Microsoft hides it in favor of the new Photos app, but the viewer is still included in the system.

---

## 📂 Files

- `Enable_PhotoViewer.bat` → The script that adds registry entries to enable Windows Photo Viewer.

---

## ⚠️ Requirements

- Windows 10 or Windows 11.
- Administrator rights (the script will auto-request admin if not already).

---

## 🚀 How to Use

1. **Download or create the BAT file**
   - Open **Notepad**.
   - Copy the code from `Enable_PhotoViewer.bat`.
   - Save it as:
     ```
     Enable_PhotoViewer.bat
     ```
     (Choose **Save as type: All Files**).

2. **Run the script**
   - Double-click the `.bat` file.  
   - If prompted by UAC, click **Yes** to allow.  
   - The registry entries will be added automatically.

3. **Result**
   - You will now see **Windows Photo Viewer** in the **Open with** menu when you right-click an image.  
   - Example:  
     ```
     Open with → Windows Photo Viewer
     ```

---

## 📸 Setting as Default (Optional)

To make Windows Photo Viewer the default app for images:

1. Open **Settings → Apps → Default apps**.  
2. Scroll to **Photo viewer**.  
3. Select **Windows Photo Viewer**.  

---

## 🔄 Reverting Back

If you want to remove Photo Viewer again, you can reset the default photo viewer in Settings, or create a script to delete the registry entries.

---

✅ Done! Now your Windows 10/11 has the classic **Windows Photo Viewer** back 🎉
