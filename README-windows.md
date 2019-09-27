# Yate on Windows

> This was tested on Microsoft Windows 10 (version 1703) with  Microsoft Visual Studio Community 2019 (version 16.3.1) and Qt 5.13.1 for Windows.

## Build with Visual Studio 2019

1. Install Microsoft Visual Studio Community 2019
2. Download and install Qt for Windows Host [Offline Installers](https://www.qt.io/offline-installers)
3. Generate Visual Studio solution and projects:
  1. Open "Developer Command Prompt for VS 2019"
     - Click Start button
     - Search for "dev
  2. In the Command Prompt:
     - `cd \Users\name\path\to\yate`
     - `qmake -tp vc -r Yate.pro`
4. Open Visual Studio:
   1. Open a project or solution
   2. Navigate to `\Users\name\path\to\yate\Yate.sln`
   3. Open
5. Build the Yate engine:
   1. In the Solution Explorer (on the right)
   2. Right click on `yate`
   3. Build

**There will be build errors!**

## Build Errors in Yate engine on Windows

```
Severity	Code	Description	Project	File	Line	Suppression State
Error (active)	E0413	no suitable conversion function from "TelEngine::String" to "LPCWSTR" exists	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp 681	
Error (active)	E0349	no operator "+" matches these operands	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	691	
Error (active)	E0167	argument of type "WCHAR *" is incompatible with parameter of type "const char *"	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp 694	
Error (active)	E0167	argument of type "WCHAR *" is incompatible with parameter of type "const char *"	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp 695	
Error (active)	E0349	no operator "+" matches these operands	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	696	
Error (active)	E0167	argument of type "const char *" is incompatible with parameter of type "LPCWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1025	
Error (active)	E0144	a value of type "const wchar_t *" cannot be used to initialize an entity of type "LPWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1036	
Error (active)	E0167	argument of type "const char *" is incompatible with parameter of type "LPCWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1327	
Error (active)	E0167	argument of type "const char *" is incompatible with parameter of type "LPCWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1466	
Error (active)	E0413	no suitable conversion function from "TelEngine::String" to "LPCWSTR" exists	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp 1991	
Error (active)	E0415	no suitable constructor exists to convert from "WCHAR [260]" to "TelEngine::String"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1997	
Error (active)	E0167	argument of type "const char *" is incompatible with parameter of type "LPCWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	2780	
Error (active)	E0167	argument of type "char *" is incompatible with parameter of type "LPWSTR"	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	2800	
Error (active)	E0167	argument of type "const char *" is incompatible with parameter of type "LPCWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	2815	
Error (active)	E0167	argument of type "const char *" is incompatible with parameter of type "LPCWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	2815	
Error (active)	E0167	argument of type "const char *" is incompatible with parameter of type "LPCWSTR"	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	2817	
Error	C2664	'HANDLE FindFirstFileW(LPCWSTR,LPWIN32_FIND_DATAW)': cannot convert argument 1 from 'TelEngine::String' to 'LPCWSTR'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	681	
Error	C2679	binary '+': no operator found which takes a right-hand operand of type 'WCHAR [260]' (or there is no acceptable conversion)	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	691	
Error	C2664	'size_t strlen(const char *)': cannot convert argument 1 from 'WCHAR [260]' to 'const char *'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	694	
Error	C2664	'int strcmp(const char *,const char *)': cannot convert argument 1 from 'WCHAR *' to 'const char *'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	695	
Error	C2679	binary '+': no operator found which takes a right-hand operand of type 'WCHAR [260]' (or there is no acceptable conversion)	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	696	
Error	C2660	'completeOneModule': function does not take 4 arguments	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	696	
Error	C2664	'SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerW(LPCWSTR,LPHANDLER_FUNCTION)': cannot convert argument 1 from 'const char [5]' to 'LPCWSTR'	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	1025	
Error	C2440	'initializing': cannot convert from 'const wchar_t [5]' to 'LPWSTR'	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	1036	
Error	C2664	'HMODULE LoadLibraryW(LPCWSTR)': cannot convert argument 1 from 'const char *' to 'LPCWSTR'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1327	
Error	C2664	'HMODULE GetModuleHandleW(LPCWSTR)': cannot convert argument 1 from 'const char [10]' to 'LPCWSTR'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1466	
Error	C2664	'HANDLE FindFirstFileW(LPCWSTR,LPWIN32_FIND_DATAW)': cannot convert argument 1 from 'TelEngine::String' to 'LPCWSTR'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	1991	
Error	C2664	'void TelEngine::Engine::tryPluginFile(const TelEngine::String &,const TelEngine::String &,bool)': cannot convert argument 1 from 'WCHAR [260]' to 'const TelEngine::String &'	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	1997	
Error	C2664	'SC_HANDLE OpenServiceW(SC_HANDLE,LPCWSTR,DWORD)': cannot convert argument 2 from 'const char [5]' to 'LPCWSTR'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	2780	
Error	C2664	'DWORD GetModuleFileNameW(HMODULE,LPWSTR,DWORD)': cannot convert argument 2 from 'char [1024]' to 'LPWSTR'	yate C:\Users\name\source\repos\yate\engine\Engine.cpp	2800	
Error	C2664	'SC_HANDLE CreateServiceW(SC_HANDLE,LPCWSTR,LPCWSTR,DWORD,DWORD,DWORD,DWORD,LPCWSTR,LPCWSTR,LPDWORD,LPCWSTR,LPCWSTR,LPCWSTR)': cannot convert argument 2 from 'const char [5]' to 'LPCWSTR'	yate	C:\Users\name\source\repos\yate\engine\Engine.cpp	2815	
Error	C2664	'BOOL GetVersionExW(LPOSVERSIONINFOW)': cannot convert argument 1 from 'OSVERSIONINFOA *' to 'LPOSVERSIONINFOW'	yate C:\Users\name\source\repos\yate\engine\Resolver.cpp	70	
Error	C2664	'TelEngine::SrvRecord::SrvRecord(void)': cannot convert argument 4 from 'PWSTR' to 'const char *'	yate C:\Users\name\source\repos\yate\engine\Resolver.cpp	441	
Error	C2660	'insertRecord': function does not take 3 arguments	yate	C:\Users\name\source\repos\yate\engine\Resolver.cpp	441	
Error	C2664	'TelEngine::NaptrRecord::NaptrRecord(void)': cannot convert argument 4 from 'PWSTR' to 'const char *'	yate C:\Users\name\source\repos\yate\engine\Resolver.cpp	529	
Error	C2660	'insertRecord': function does not take 3 arguments	yate	C:\Users\name\source\repos\yate\engine\Resolver.cpp	529	
Error	C2664	'TelEngine::TxtRecord::TxtRecord(void)': cannot convert argument 2 from 'PWSTR' to 'const char *'	yate C:\Users\name\source\repos\yate\engine\Resolver.cpp	789	
Error	C2664	'HANDLE CreateFileW(LPCWSTR,DWORD,DWORD,LPSECURITY_ATTRIBUTES,DWORD,DWORD,HANDLE)': cannot convert argument 1 from 'const char *' to 'LPCWSTR'	yate	C:\Users\name\source\repos\yate\engine\Socket.cpp	1096	
Error	C2664	'HANDLE FindFirstFileW(LPCWSTR,LPWIN32_FIND_DATAW)': cannot convert argument 1 from 'const char *' to 'LPCWSTR'	yate C:\Users\name\source\repos\yate\engine\Socket.cpp	1399	
Error	C2660	'regexec': function does not take 5 arguments	yate	C:\Users\name\source\repos\yate\engine\String.cpp	1943	
Error	C2660	'regcomp': function does not take 3 arguments	yate	C:\Users\name\source\repos\yate\engine\String.cpp	1967	
Error	C2660	'regfree': function does not take 1 arguments	yate	C:\Users\name\source\repos\yate\engine\String.cpp	1969	
Error	C2660	'regfree': function does not take 1 arguments	yate	C:\Users\name\source\repos\yate\engine\String.cpp	1984	
Error	C2664	'DWORD FormatMessageA(DWORD,LPCVOID,DWORD,DWORD,LPSTR,DWORD,va_list *)': cannot convert argument 5 from 'LPTSTR' to 'LPSTR'	yate	C:\Users\name\source\repos\yate\engine\Thread.cpp	834	
Error	C2664	'TelEngine::String &TelEngine::String::assign(char,unsigned int)': cannot convert argument 1 from 'LPTSTR' to 'const char *'	yate C:\Users\name\source\repos\yate\engine\Thread.cpp	839
```