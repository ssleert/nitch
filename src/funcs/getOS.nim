proc getOS*(): string =
    when defined linux:
        result = "linux"
    elif defined windows:
        result = "windows"
    elif defined android:
        result = "android"
    else:
        result = "unknown"