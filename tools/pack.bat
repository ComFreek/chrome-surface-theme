SET inputname=src
SET input=%cd%\..\%inputname%
SET output=%cd%\..\
SET keyfile=%cd%\..\%inputname%.pem

SET chrome=%userprofile%\AppData\Local\Google\Chrome\Application\chrome.exe

if exist %keyfile% (
  cls
  echo Using existing keyfile...
  %chrome% --pack-extension=%input% --pack-extension-key=%keyfile%
) else (
  cls
  echo Creating new keyfile...
  %chrome% --pack-extension=%input%
)

MOVE %output%%inputname%.crx %output%surface-theme.crx

PAUSE