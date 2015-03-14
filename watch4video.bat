IF NOT "%~nx1" == "TeraCopyTestFile-1234567890" (
	start "" cmd.exe /s /c ""C:\Program Files\TeraCopy\TeraCopy.exe" Copy %1 "\\MYNETN900C\Public\Shared Videos" /Close"
)