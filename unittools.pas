unit unitTools;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls, StdCtrls, Buttons, unitFigures;

type
  TTool = class
    ButtonCaption: string;
    FigureClass: TFigureClass;
  end;

var
  Tools: array of TTool;
  Tool: TFigureClass;

implementation

procedure RegisterTool(ATool: TTool; AClass: TFigureClass; AButtonCaption: String);
begin
  SetLength(Tools, Length(Tools) + 1);
  Tools[High(Tools)] := ATool;
  Tools[High(Tools)].FigureClass := AClass;
  Tools[High(Tools)].ButtonCaption := AButtonCaption;
end;

initialization

RegisterTool(TTool.Create, TPolyline, 'Карандаш');
RegisterTool(TTool.Create, TLine, 'Прямая');
RegisterTool(TTool.Create, TRectangle, 'Прямоугольник');
RegisterTool(TTool.Create, TEllipse, 'Эллипс');

end.

