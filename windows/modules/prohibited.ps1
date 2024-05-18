$FileName = "prohibited_media_files.txt"

Get-ChildItem -Path C:\Users -Recurse |
    Where-Object { $_.Extension -match '\.(mp3|mov|mp4|avi|mpg|mpeg|flac|m4a|flv|ogg|oga|ogv|png|gif|jpg|jpeg|bmp|svg|csv|xls|xlsx|doc|docx|ppt|pptx|bat|php|exe|ps1|txt)$' -ireplace '\.','' } |
    ForEach-Object { $_.FullName } |
    Out-File -FilePath $FileName -Append