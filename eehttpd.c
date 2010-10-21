#include <st.h>
#include <zlib.h>
#include <lua5.1/lua.h>

int main(int argc,char **argv)
{

// Initialise StateThreads BEFORE the fork:
   st_init();

// THEN the SQLite subsystem AFTER forking:
   return 0;
}
