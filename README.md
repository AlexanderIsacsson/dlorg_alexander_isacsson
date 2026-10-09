# DLORG Download organizer

Organized the downloads folder to simplify navigation between downloaded files.

Files are sorted into different directories depending on their file extension.

- text = .txt
- images = .png .jpeg .gif .jpg
- audio = .mp3 .wav .ogg
- pdfs = .pdf
- docs = .docx
- videos = .mp4 .mkv .mov .avi
- other = miscellaneous file extensions

# Setup

```
git clone https://github.com/AlexanderIsacsson/dlorg_alexander_isacsson.git
```

# Running the script

Making the script executable
```
chmod +x dlorg.sh
```
Execute the script
```
./dlorg.sh
```
To stop the script, press (crtl+c)

# Testing the script

The script was tested using tmux (splitting the terminal), one for running the script and one to create a file inside "Downloads".
Try adding a file to downloads:
```
touch example.png
```
The file should be moved to the "images" folder. Verify this by moving to the "images" directory or using the command `tree`

Try deleting the `images` directory and then adding a .png file to `Downloads`
```
rmdir videos
touch video_example.mp4
```
The `images` directory should appear and `video_example.mp4` should be added moved to it

# LLM Usage

LLM's where used to understand and explaining both concepts the bash syntax

# Screenshots

## Tmux
<img width="852" height="589" alt="image" src="https://github.com/user-attachments/assets/b8de90ba-d891-4a59-baef-73b090d7ef7b" />

## Running the script
<img width="855" height="588" alt="image" src="https://github.com/user-attachments/assets/494c88b0-115a-4831-b581-9681356d3a29" />

## Sorting files in Downloads
<img width="856" height="588" alt="image" src="https://github.com/user-attachments/assets/79b9f02a-1632-4f30-a1b1-28fe85890794" />

## Downloads file structure
<img width="853" height="592" alt="image" src="https://github.com/user-attachments/assets/cdb5b9ce-4810-4807-9de1-5f4306de817e" />
