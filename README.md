# file-organizer

A simple bash script to organize files in a directory by their extension.

## Features

- Automatically sorts files into subfolders by extension
- Handles any file type
- Files without extension go into `others/`
- Works on Linux and macOS

## Usage

```bash
chmod +x organize.sh

# Organize current directory
./organize.sh

# Organize specific directory
./organize.sh /path/to/folder
```

## Example

Before:
```
downloads/
  photo.jpg
  report.pdf
  notes.txt
  video.mp4
```

After running `./organize.sh downloads/`:
```
downloads/
  jpg/
    photo.jpg
  pdf/
    report.pdf
  txt/
    notes.txt
  mp4/
    video.mp4
```
