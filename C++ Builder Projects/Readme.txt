If you want to build the PCRE object files yourself, follow the following
procedures:

-Download PCRE 7.9 from http://www.pcre.org/
-Copy this "C++ Builder Projects" directory to a subdirectory of the
 PCRE source directory.
-In the PCRE source directory, rename "pcre.h.generic" to "pcre.h"
-Also rename "config.h.generic" to "config.h"
-Open projectgroup PGPCRE in C++ Builder 2009
-Build the DFTables.exe project
-Run DFDTables.exe with the followingparameters:
   DFTables.exe pcre_default_tables.c
-Copy the generated "pcre_default_tables.c" file to the PCRE source directory
-Build the PCRE.lib project
-Copy the generated OBJ files to the Delphi PCRE Lib directory. You can skip
 the following files:
  -dftables.obj
  -pcre_config.obj
  -pcre_dfa_exec.obj
  -pcre_info.obj
  -pcre_maketables.obj
  -pcre_refcount.obj
  -pcre_version.obj
