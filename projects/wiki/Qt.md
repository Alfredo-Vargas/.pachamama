# QDebug() not showing output
Navigate to the following location:
Qt creator > Tools > Options > Kits, select your kit, find Environment, click change and add
```console
QT_ASSUME_STDERR_HAS_CONSOLE=1
```

# Convert an integer to string and vice-versa
```console
QString::number(integer);  
string.toInt();
```

# Convert a char to integer
```console
charvalue.digitValue();
```

# Quick view of widget
Key shortcut:
```console
M-S-r
```

# Connection Example
1. __A__ = The object that will **trigger** the connection. (Trigger)
2. __B__ = Pointer to the function that **emits** a signal. (Emitter)
3. __C__ = The object that will **receive** the signal. (Receiver)
4. __D__ = Pointer to the function that will **react** to the signal. (Reactor)
For example:
```console
connect(ui->)
```
