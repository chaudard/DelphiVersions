program ProjectDelphiVersions;
{see :
http://delphi.wikia.com/wiki/CompilerVersion_Constant
}
{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  cNbVersions = 26;
  cVersions: array [1..cNbVersions] of string = ( 'Delphi 1',              // 1
                                                  'Delphi 2',              // 2
                                                  'Delphi 3',              // 3
                                                  'Delphi 4',              // 4
                                                  'Delphi 5',              // 5
                                                  'Delphi 6',              // 6
                                                  'Delphi 7',              // 7
                                                  'Delphi 8',              // 8
                                                  'Delphi 2005',           // 9
                                                  'Delphi 2006',           // 10
                                                  'Delphi 2007',           // 11
                                                  'Delphi 2007 for NET',   // 12
                                                  'Delphi 2009',           // 13
                                                  'Delphi 2010',           // 14
                                                  'Delphi XE',             // 15
                                                  'Delphi XE2',            // 16
                                                  'Delphi XE3',            // 17
                                                  'Delphi XE4',            // 18
                                                  'Delphi XE5',            // 19
                                                  'AppMethod 1',           // 20
                                                  'Delphi XE6',            // 21
                                                  'Delphi XE7',            // 22
                                                  'Delphi XE8',            // 23
                                                  'Delphi 10 Seattle',     // 24
                                                  'Delphi 10.1 Berlin',    // 25
                                                  'Delphi 10.2 Tokyo');    // 26

  cConditionalSymbols: array [1..cNbVersions] of string = ( 'VER80',       // 1
                                                            'VER90',       // 2
                                                            'VER110',      // 3
                                                            'VER120',      // 4
                                                            'VER130',      // 5
                                                            'VER140',      // 6
                                                            'VER150',      // 7
                                                            'VER160',      // 8
                                                            'VER170',      // 9
                                                            'VER180',      // 10
                                                            'VER185',      // 11
                                                            'VER190',      // 12
                                                            'VER200',      // 13
                                                            'VER210',      // 14
                                                            'VER220',      // 15
                                                            'VER230',      // 16
                                                            'VER240',      // 17
                                                            'VER250',      // 18
                                                            'VER260',      // 19
                                                            'VER265',      // 20
                                                            'VER270',      // 21
                                                            'VER280',      // 22
                                                            'VER290',      // 23
                                                            'VER300',      // 24
                                                            'VER310',      // 25
                                                            'VER320');     // 26

  cCompilerVersions: array [1..cNbVersions] of single = ( 0,               // 1
                                                          0,               // 2
                                                          0,               // 3
                                                          0,               // 4
                                                          0,               // 5
                                                          14,              // 6
                                                          15,              // 7
                                                          16,              // 8
                                                          17,              // 9
                                                          18,              // 10
                                                          18.5,            // 11
                                                          19,              // 12
                                                          20,              // 13
                                                          21,              // 14
                                                          22,              // 15
                                                          23,              // 16
                                                          24,              // 17
                                                          25,              // 18
                                                          26,              // 19
                                                          26.5,            // 20
                                                          27,              // 21
                                                          28,              // 22
                                                          29,              // 23
                                                          30,              // 24
                                                          31,              // 25
                                                          32);             // 26

  cMessage: string = 'Your Delphi vesion is : %s . The matching compiler version is : %s';
var
  vIndex: word;
  vVersion: string;
  vCompilerVersion: string;
begin
  try
    { TODO -oUtilisateur -cCode du point d'entrée : Placez le code ici }

    {$IFDEF VER80}
    vIndex := 1;
    {$ENDIF}
    {$IFDEF VER90}
    vIndex := 2;
    {$ENDIF}
    {$IFDEF VER110}
    vIndex := 3;
    {$ENDIF}
    {$IFDEF VER120}
    vIndex := 4;
    {$ENDIF}
    {$IFDEF VER130}
    vIndex := 5;
    {$ENDIF}
    {$IFDEF VER140}
    vIndex := 6;
    {$ENDIF}
    {$IFDEF VER150}
    vIndex := 7;
    {$ENDIF}
    {$IFDEF VER160}
    vIndex := 8;
    {$ENDIF}
    {$IFDEF VER170}
    vIndex := 9;
    {$ENDIF}
    {$IFDEF VER180}
    vIndex := 10;
    {$ENDIF}
    {$IFDEF VER185}
    vIndex := 11;
    {$ENDIF}
    {$IFDEF VER180}
    vIndex := 12;
    {$ENDIF}
    {$IFDEF VER200}
    vIndex := 13;
    {$ENDIF}
    {$IFDEF VER210}
    vIndex := 14;
    {$ENDIF}
    {$IFDEF VER220}
    vIndex := 15;
    {$ENDIF}
    {$IFDEF VER230}
    vIndex := 16;
    {$ENDIF}
    {$IFDEF VER240}
    vIndex := 17;
    {$ENDIF}
    {$IFDEF VER250}
    vIndex := 18;
    {$ENDIF}
    {$IFDEF VER260}
    vIndex := 19;
    {$ENDIF}
    {$IFDEF VER265}
    vIndex := 20;
    {$ENDIF}
    {$IFDEF VER270}
    vIndex := 21;
    {$ENDIF}
    {$IFDEF VER280}
    vIndex := 22;
    {$ENDIF}
    {$IFDEF VER290}
    vIndex := 23;
    {$ENDIF}
    {$IFDEF VER300}
    vIndex := 24;
    {$ENDIF}
    {$IFDEF VER310}
    vIndex := 25;
    {$ENDIF}
    {$IFDEF VER320}
    vIndex := 26;
    {$ENDIF}
    vVersion := cVersions[vIndex];
    vCompilerVersion := floattostr(cCompilerVersions[vIndex]);
    writeln(Format(cMessage, [vVersion, vCompilerVersion]));

    {$IF CompilerVersion>=22.0}
    writeln('Delphi XE is including fire monkey.');
    {$ELSE}
    writeln('You are an old fashion Delphi user. Try fire monkey with a more recent version ;-) .');
    {$IFEND}

    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
