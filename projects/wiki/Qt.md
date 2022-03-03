# QDebug() not showing output
Navigate to the following location:
Qt creator > Tools > Options > Kits, select your kit, find Environment, click change and add
```console
QT_ASSUME_STDERR_HAS_CONSOLE=1
```

# Convert an int number to string and viceversa
```console
QString::number(integer);
string.toInt();
```

# Convert a char to integer
```console
charvalue.digitValue();
```
