# `qDebug()` not showing output
Navigate to the following location:
Qt creator > Tools > Options > Kits, select your kit, find Environment, click change and add
```console
QT_ASSUME_STDERR_HAS_CONSOLE=1
```
## Debug Options
```console
qDebug() << x;
qWarning() << "Let me warn you";
qInfo() << "Just FYI!";
qCritical() << "The end is near!";
qFatal() << "Ok here it is!";
```
`qFatal()` sends a kill signal to the running application

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
1. __A__ = **The object that will send** the connection. (Sender)
2. __B__ = The **sender** function. (&Sender)
3. __C__ = **The object that will receive** the signal. (Receiver)
4. __D__ = The **updater** function. (&Receiver)
In general the connection will have the following form:
```console
connect(Sender, &Sender::valueChanged, receiver, &Receiver::updateValue)
```

## Example 1
For example if we want a line edit pass the info to another line edit:
```console
connect(ui->m_lineEdit1, &QLineEdit::textChanged, [=]{QLineEdit::textChanged(m_lineEdit1->text());})
```
The above example has only three elements, which then has the following form:
```connect
connect(Sender, &Sender::valueChanged, &Receiver::updateValue)
```
We can tell that the receiver is optional and is up to the `&Receiver` to determine
which objects is/are the receiver(s) in its implementation.

## Example 2
```console
connect(this->m_firstValue, &QLineEdit::textChanged, this->m_result ,[=]{valueChanged(m_firstValue->text(), m_secondValue->text());});
```
In the above example are the most common four arguments for a connection. Omission of the third arguments flags a warning using
the Clang compiler.

**Note:** The symbol `[=]` is the lambda-introducer in the C++ notation.

## Parts of a Lambda function (properties):

`[=] () mutable throw() -> int 
{
  int n = x + y;
  x = y; y = n;
  return n;
}`

1. `[=]` is the lambda-introducer in the C++ notation.
2. `()` lambda-declarator to list parameters (__optional__)
3. `mutable` mutable specification (__optional__)
4. `throw()` exception specification (__optional__)
5. `-> int` return specification (__optional__)
6. `{ ... }` lambda body.


## Change the cc compiler of your system
Check the line before depending on your system
```console
cmake -G Ninja -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang ..
```

## Check your `CCache` statistics
```console
ccache -s
```

## Pre Compiled Header Support (`PHC`)
Make sure you have pre-compile header support ON
If you have pre compiled header support then include a file (e.g `KDABViewer_pch.h`) following headers:
```console
#pragma once

#include <QApplication>
#include <QBoxLayout>
#include <QLabel
#include <QVariant>
#include <QWidget>
#include <memory>
```

