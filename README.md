# Script-to-unrar-a-folder-full-of-rars
## Batch File
This is a batch file i'm using for this purpose. It's actually using 7z as command line but you can change the command to unrar if you wish to use it instead. This is the code (run the batch inside the folder with the rars)

## Powershell Script
Run the function while in the parent folder of all the rars you want to extract. If you don't specify a -destination the rars extract to the same folder they're in. So while in like the folder .\Some.Show.S01 which contains a bunch of folders containing each episodes rars.
ide note, all the extractions will start together. Might want to segregate the rars into batches in their own folders if the rars are big. Or add some logic to the little script to only run so many at once. Maybe like while ``` ((get-process *winrar*).count -gt 10) {start-sleep -seconds 1} ``` or something.
