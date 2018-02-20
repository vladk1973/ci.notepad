library ci.notepad;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  Windows,
  Messages,
  System.SysUtils,
  System.Classes,
  Easy.diaplugin in 'Easy.diaplugin.pas',
  CIFormUnit in 'CIFormUnit.pas' {CIForm},
  ciUnit in 'ciUnit.pas' {ci},
  NppDockingForms in '..\npp.connections\lib\NppDockingForms.pas' {NppDockingForm},
  NppForms in '..\npp.connections\lib\NppForms.pas' {NppForm},
  nppplugin in '..\npp.connections\lib\nppplugin.pas',
  SciSupport in '..\npp.connections\lib\SciSupport.pas';

{$D-}
{$L-}

{$R *.res}
{$R diaplugin.res}

{$Include 'NppPluginInclude.pas'}
begin
  { First, assign the procedure to the DLLProc variable }
  DllProc := @DLLEntryPoint;
  { Now invoke the procedure to reflect that the DLL is attaching to the process }
  DLLEntryPoint(DLL_PROCESS_ATTACH);
end.

