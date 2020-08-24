#include "mousehelper.h"
#include <QGuiApplication>

MouseHelper::MouseHelper(QObject *parent) : QObject(parent) {}

void MouseHelper::setCursorPosition(int x, int y) {
    QCursor::setPos(x, y);
}
