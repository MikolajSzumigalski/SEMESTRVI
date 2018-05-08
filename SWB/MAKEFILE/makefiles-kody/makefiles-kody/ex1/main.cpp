#include "./main.h"
#include "dbgPrint.h"
using namespace std;

int main()
{
    CPrinter::setDebugLevel(4);
    MSG_PRINT("Moj komunikat");
    printMessage("Hello makefiles");
    return 0;
}
