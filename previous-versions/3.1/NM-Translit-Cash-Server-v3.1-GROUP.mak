object Report: TPDReport
  EngineVer = 1
  Width = 40
  IVars = <>
  UnionTables = <>
  RepParams = <>
  FixedHeight = 0
  TwoPasses = True
  object Sheet1: TPDDocument
    Height = 80
    object bndBandVirtNM1: TPDBand
      Color = 13735574
      Top = 64
      Height = 11
      Header.DoubleHeight = True
      Header.DoubleWidth = True
      Header.Size = 2
      Body.Size = 8
      Footer.DoubleHeight = True
      Footer.DoubleWidth = True
      BandType = btMasterData
      DataSetName = 'Virtual[1]'
      CalcFields = <>
      object MemoNM1: TPDMemo
        Left = 0
        Top = 1
        Width = 40
        Height = 1
        Content.Strings = (
          ' Безналичные чаевые')
      end
      object MemoNM2: TPDMemo
        Left = 0
        Top = 2
        Width = 40
        Height = 6
        Alignment = taCenter
        Content.Strings = (
          ''
          'Чтобы оставить чаевые или отзыв,'
          'наведите камеру на QR-код'
          ''
          'Scan the QR-code to leave a tip ')
      end
      object MemoNM5: TPDMemo
        Left = 0
        Top = 10
        Width = 40
        Height = 1
        Content.Strings = (
          '      нетмонет')
      end
      object MemoNM4: TPDMemo
        Script.Strings = (
          'var'
          '  s,t,sum,nomer,kod:String;'
          '  i,n:byte;'
          '  '
          '  '
          ' begin'
          ' sum := IntToStr(Trunc([PrintChecks.BindedSum]));'
          ' nomer := IntToStr(Trunc([PrintChecks.CheckNum]));'
          ' kod := [System.CashGroup.genRestSys];'
          ' s := [Orders.MainWaiter.Name];'
          ' i:=1; '
          ' '
          'while i <= length(s) do '
          #9'begin'
          '    if (s[i] = '#39'а'#39') or (s[i] = '#39'А'#39') then s[i] := '#39'a'#39';'
          '    if (s[i] = '#39'б'#39') or (s[i] = '#39'Б'#39') then s[i] := '#39'b'#39';'
          '    if (s[i] = '#39'в'#39') or (s[i] = '#39'В'#39') then s[i] := '#39'v'#39';'
          '    if (s[i] = '#39'г'#39') or (s[i] = '#39'Г'#39') then s[i] := '#39'g'#39';'
          '    if (s[i] = '#39'д'#39') or (s[i] = '#39'Д'#39') then s[i] := '#39'd'#39';'
          '    if (s[i] = '#39'е'#39') or (s[i] = '#39'Е'#39') then s[i] := '#39'e'#39';'
          '    if (s[i] = '#39'ё'#39') or (s[i] = '#39'Ё'#39') then '
          '    begin'
          '      s[i] := '#39'o'#39'; '
          '      Insert('#39'y'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'ж'#39') or (s[i] = '#39'Ж'#39') then '
          '    begin'
          '      s[i] := '#39'h'#39'; '
          '      Insert('#39'z'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'з'#39') or (s[i] = '#39'З'#39') then s[i] := '#39'z'#39';'
          '    if (s[i] = '#39'и'#39') or (s[i] = '#39'И'#39') then s[i] := '#39'i'#39';'
          '    if (s[i] = '#39'й'#39') or (s[i] = '#39'Й'#39') then s[i] := '#39'y'#39';'
          '    if (s[i] = '#39'к'#39') or (s[i] = '#39'К'#39') then s[i] := '#39'k'#39';'
          '    if (s[i] = '#39'л'#39') or (s[i] = '#39'Л'#39') then s[i] := '#39'l'#39';'
          '    if (s[i] = '#39'м'#39') or (s[i] = '#39'М'#39') then s[i] := '#39'm'#39';'
          '    if (s[i] = '#39'н'#39') or (s[i] = '#39'Н'#39') then s[i] := '#39'n'#39';'
          '    if (s[i] = '#39'о'#39') or (s[i] = '#39'О'#39') then s[i] := '#39'o'#39';'
          '    if (s[i] = '#39'п'#39') or (s[i] = '#39'П'#39') then s[i] := '#39'p'#39';'
          '    if (s[i] = '#39'р'#39') or (s[i] = '#39'Р'#39') then s[i] := '#39'r'#39';'
          '    if (s[i] = '#39'с'#39') or (s[i] = '#39'С'#39') then s[i] := '#39's'#39';'
          '    if (s[i] = '#39'т'#39') or (s[i] = '#39'Т'#39') then s[i] := '#39't'#39';'
          '    if (s[i] = '#39'у'#39') or (s[i] = '#39'У'#39') then s[i] := '#39'u'#39';'
          '    if (s[i] = '#39'ф'#39') or (s[i] = '#39'Ф'#39') then s[i] := '#39'f'#39';'
          '    if (s[i] = '#39'х'#39') or (s[i] = '#39'Х'#39') then s[i] := '#39'h'#39';'
          '    if (s[i] = '#39'ц'#39') or (s[i] = '#39'Ц'#39') then s[i] := '#39'c'#39';'
          '    if (s[i] = '#39'ч'#39') or (s[i] = '#39'Ч'#39') then '
          '    begin'
          '      s[i] := '#39'h'#39'; '
          '      Insert('#39'c'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'ш'#39') or (s[i] = '#39'Ш'#39') then '
          '    begin'
          '      s[i] := '#39'h'#39'; '
          '      Insert('#39's'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'щ'#39') or (s[i] = '#39'Щ'#39') then s[i] := '#39's'#39';'
          '    if (s[i] = '#39'ъ'#39') or (s[i] = '#39'Ъ'#39') then s[i] := '#39'_'#39';'
          '    if (s[i] = '#39'ы'#39') or (s[i] = '#39'Ы'#39') then s[i] := '#39'i'#39';'
          '    if (s[i] = '#39'ь'#39') or (s[i] = '#39'Ь'#39') then s[i] := '#39'_'#39';'
          '    if (s[i] = '#39'э'#39') or (s[i] = '#39'Э'#39') then s[i] := '#39'e'#39';'
          '    if (s[i] = '#39'ю'#39') or (s[i] = '#39'Ю'#39') then '
          '    begin'
          '      s[i] := '#39'y'#39'; '
          '      Insert('#39'u'#39', s, i);'
          '    end;  '
          '   if  (s[i] = '#39'я'#39') or (s[i] = '#39'Я'#39') then '
          '    begin'
          '      s[i] := '#39'a'#39'; '
          '      Insert('#39'y'#39', s, i);'
          '    end;'
          '    '
          ' '
          '    '
          #9#9'if s[i] = '#39' '#39' then'
          #9#9#9'if s[i-1] = '#39'_'#39' then begin'
          #9#9#9#9'delete(s,i,1);'
          #9#9#9#9'i := i - 1;'
          #9#9#9'end'
          #9#9#9'else begin'
          #9#9#9#9'delete(s,i,1);'
          #9#9#9#9'insert('#39'_'#39',s,i);'
          ''
          #9#9#9'end;'
          #9#9'i := i + 1;'
          #9#9'end;'
          #9#9
          't := [Orders.TableName];'
          ' n :=1;'#9#9
          #9#9
          #9#9'while n <= length(t) do '
          #9'begin'
          '    if (t[n] = '#39'а'#39') or (t[n] = '#39'А'#39') then t[n] := '#39'a'#39';'
          '    if (t[n] = '#39'б'#39') or (t[n] = '#39'Б'#39') then t[n] := '#39'b'#39';'
          '    if (t[n] = '#39'в'#39') or (t[n] = '#39'В'#39') then t[n] := '#39'v'#39';'
          '    if (t[n] = '#39'г'#39') or (t[n] = '#39'Г'#39') then t[n] := '#39'g'#39';'
          '    if (t[n] = '#39'д'#39') or (t[n] = '#39'Д'#39') then t[n] := '#39'd'#39';'
          '    if (t[n] = '#39'е'#39') or (t[n] = '#39'Е'#39') then t[n] := '#39'e'#39';'
          '    if (t[n] = '#39'ё'#39') or (t[n] = '#39'Ё'#39') then '
          '    begin'
          '      t[n] := '#39'o'#39'; '
          '      Insert('#39'y'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'ж'#39') or (t[n] = '#39'Ж'#39') then '
          '    begin'
          '      t[n] := '#39'h'#39'; '
          '      Insert('#39'z'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'з'#39') or (t[n] = '#39'З'#39') then t[n] := '#39'z'#39';'
          '    if (t[n] = '#39'и'#39') or (t[n] = '#39'И'#39') then t[n] := '#39'i'#39';'
          '    if (t[n] = '#39'й'#39') or (t[n] = '#39'Й'#39') then t[n] := '#39'y'#39';'
          '    if (t[n] = '#39'к'#39') or (t[n] = '#39'К'#39') then t[n] := '#39'k'#39';'
          '    if (t[n] = '#39'л'#39') or (t[n] = '#39'Л'#39') then t[n] := '#39'l'#39';'
          '    if (t[n] = '#39'м'#39') or (t[n] = '#39'М'#39') then t[n] := '#39'm'#39';'
          '    if (t[n] = '#39'н'#39') or (t[n] = '#39'Н'#39') then t[n] := '#39'n'#39';'
          '    if (t[n] = '#39'о'#39') or (t[n] = '#39'О'#39') then t[n] := '#39'o'#39';'
          '    if (t[n] = '#39'п'#39') or (t[n] = '#39'П'#39') then t[n] := '#39'p'#39';'
          '    if (t[n] = '#39'р'#39') or (t[n] = '#39'Р'#39') then t[n] := '#39'r'#39';'
          '    if (t[n] = '#39'с'#39') or (t[n] = '#39'С'#39') then t[n] := '#39's'#39';'
          '    if (t[n] = '#39'т'#39') or (t[n] = '#39'Т'#39') then t[n] := '#39't'#39';'
          '    if (t[n] = '#39'у'#39') or (t[n] = '#39'У'#39') then t[n] := '#39'u'#39';'
          '    if (t[n] = '#39'ф'#39') or (t[n] = '#39'Ф'#39') then t[n] := '#39'f'#39';'
          '    if (t[n] = '#39'х'#39') or (t[n] = '#39'Х'#39') then t[n] := '#39'h'#39';'
          '    if (t[n] = '#39'ц'#39') or (t[n] = '#39'Ц'#39') then t[n] := '#39'c'#39';'
          '    if (t[n] = '#39'ч'#39') or (t[n] = '#39'Ч'#39') then '
          '    begin'
          '      t[n] := '#39'h'#39'; '
          '      Insert('#39'c'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'ш'#39') or (t[n] = '#39'Ш'#39') then '
          '    begin'
          '      t[n] := '#39'h'#39'; '
          '      Insert('#39's'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'щ'#39') or (t[n] = '#39'Щ'#39') then t[n] := '#39's'#39';'
          '    if (t[n] = '#39'ъ'#39') or (t[n] = '#39'Ъ'#39') then t[n] := '#39'_'#39';'
          '    if (t[n] = '#39'ы'#39') or (t[n] = '#39'Ы'#39') then t[n] := '#39'i'#39';'
          '    if (t[n] = '#39'ь'#39') or (t[n] = '#39'Ь'#39') then t[n] := '#39'_'#39';'
          '    if (t[n] = '#39'э'#39') or (t[n] = '#39'Э'#39') then t[n] := '#39'e'#39';'
          '    if (t[n] = '#39'ю'#39') or (t[n] = '#39'Ю'#39') then '
          '    begin'
          '      t[n] := '#39'y'#39'; '
          '      Insert('#39'u'#39', t, n);'
          '    end;  '
          '   if  (t[n] = '#39'я'#39') or (t[n] = '#39'Я'#39') then '
          '    begin'
          '      t[n] := '#39'a'#39'; '
          '      Insert('#39'y'#39', t, n);'
          '    end;'
          '    '
          ' '
          '    '
          #9#9'if t[n] = '#39' '#39' then'
          #9#9#9'if t[n-1] = '#39'_'#39' then begin'
          #9#9#9#9'delete(t,n,1);'
          #9#9#9#9'n := n - 1;'
          #9#9#9'end'
          #9#9#9'else begin'
          #9#9#9#9'delete(t,n,1);'
          #9#9#9#9'insert('#39'_'#39',t,n);'
          ''
          #9#9#9'end;'
          #9#9'n := n + 1;'
          #9#9
          '    end;'
          ''
          ''
          
            'memoNM4.text := '#39'<QRcode https://netmonet.co/tip/group/'#39'+kod+'#39'?o' +
            '=3&s='#39'+sum+'#39'&c='#39'+nomer+'#39'&Tn='#39'+t+'#39'&en='#39'+s+'#39'>'#39'; //параметр XXXXXX ' +
            'должен соответствовать коду заведения!!!!'
          'MemoNM4.visible:=false;'
          'if ([Orders.MainWaiter.genCodeSys]='#39#39')then '
          'MemoNM4.visible:=true;'
          'end')
        Left = 0
        Top = 9
        Width = 40
        Height = 1
        Alignment = taCenter
      end
      object MemoNM3: TPDMemo
        Script.Strings = (
          'var'
          '  s,t,sum,nomer,kod:String;'
          '  i,n:byte;'
          '  '
          '  '
          ' begin'
          ' sum := IntToStr(Trunc([PrintChecks.BindedSum]));'
          ' nomer := IntToStr(Trunc([PrintChecks.CheckNum]));'
          ' kod := [Orders.MainWaiter.genCodeSys];'
          ' s := [Orders.MainWaiter.Name];'
          ' i:=1; '
          ' '
          'while i <= length(s) do '
          #9'begin'
          '    if (s[i] = '#39'а'#39') or (s[i] = '#39'А'#39') then s[i] := '#39'a'#39';'
          '    if (s[i] = '#39'б'#39') or (s[i] = '#39'Б'#39') then s[i] := '#39'b'#39';'
          '    if (s[i] = '#39'в'#39') or (s[i] = '#39'В'#39') then s[i] := '#39'v'#39';'
          '    if (s[i] = '#39'г'#39') or (s[i] = '#39'Г'#39') then s[i] := '#39'g'#39';'
          '    if (s[i] = '#39'д'#39') or (s[i] = '#39'Д'#39') then s[i] := '#39'd'#39';'
          '    if (s[i] = '#39'е'#39') or (s[i] = '#39'Е'#39') then s[i] := '#39'e'#39';'
          '    if (s[i] = '#39'ё'#39') or (s[i] = '#39'Ё'#39') then '
          '    begin'
          '      s[i] := '#39'o'#39'; '
          '      Insert('#39'y'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'ж'#39') or (s[i] = '#39'Ж'#39') then '
          '    begin'
          '      s[i] := '#39'h'#39'; '
          '      Insert('#39'z'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'з'#39') or (s[i] = '#39'З'#39') then s[i] := '#39'z'#39';'
          '    if (s[i] = '#39'и'#39') or (s[i] = '#39'И'#39') then s[i] := '#39'i'#39';'
          '    if (s[i] = '#39'й'#39') or (s[i] = '#39'Й'#39') then s[i] := '#39'y'#39';'
          '    if (s[i] = '#39'к'#39') or (s[i] = '#39'К'#39') then s[i] := '#39'k'#39';'
          '    if (s[i] = '#39'л'#39') or (s[i] = '#39'Л'#39') then s[i] := '#39'l'#39';'
          '    if (s[i] = '#39'м'#39') or (s[i] = '#39'М'#39') then s[i] := '#39'm'#39';'
          '    if (s[i] = '#39'н'#39') or (s[i] = '#39'Н'#39') then s[i] := '#39'n'#39';'
          '    if (s[i] = '#39'о'#39') or (s[i] = '#39'О'#39') then s[i] := '#39'o'#39';'
          '    if (s[i] = '#39'п'#39') or (s[i] = '#39'П'#39') then s[i] := '#39'p'#39';'
          '    if (s[i] = '#39'р'#39') or (s[i] = '#39'Р'#39') then s[i] := '#39'r'#39';'
          '    if (s[i] = '#39'с'#39') or (s[i] = '#39'С'#39') then s[i] := '#39's'#39';'
          '    if (s[i] = '#39'т'#39') or (s[i] = '#39'Т'#39') then s[i] := '#39't'#39';'
          '    if (s[i] = '#39'у'#39') or (s[i] = '#39'У'#39') then s[i] := '#39'u'#39';'
          '    if (s[i] = '#39'ф'#39') or (s[i] = '#39'Ф'#39') then s[i] := '#39'f'#39';'
          '    if (s[i] = '#39'х'#39') or (s[i] = '#39'Х'#39') then s[i] := '#39'h'#39';'
          '    if (s[i] = '#39'ц'#39') or (s[i] = '#39'Ц'#39') then s[i] := '#39'c'#39';'
          '    if (s[i] = '#39'ч'#39') or (s[i] = '#39'Ч'#39') then '
          '    begin'
          '      s[i] := '#39'h'#39'; '
          '      Insert('#39'c'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'ш'#39') or (s[i] = '#39'Ш'#39') then '
          '    begin'
          '      s[i] := '#39'h'#39'; '
          '      Insert('#39's'#39', s, i);'
          '    end;'
          '    if (s[i] = '#39'щ'#39') or (s[i] = '#39'Щ'#39') then s[i] := '#39's'#39';'
          '    if (s[i] = '#39'ъ'#39') or (s[i] = '#39'Ъ'#39') then s[i] := '#39'_'#39';'
          '    if (s[i] = '#39'ы'#39') or (s[i] = '#39'Ы'#39') then s[i] := '#39'i'#39';'
          '    if (s[i] = '#39'ь'#39') or (s[i] = '#39'Ь'#39') then s[i] := '#39'_'#39';'
          '    if (s[i] = '#39'э'#39') or (s[i] = '#39'Э'#39') then s[i] := '#39'e'#39';'
          '    if (s[i] = '#39'ю'#39') or (s[i] = '#39'Ю'#39') then '
          '    begin'
          '      s[i] := '#39'y'#39'; '
          '      Insert('#39'u'#39', s, i);'
          '    end;  '
          '   if  (s[i] = '#39'я'#39') or (s[i] = '#39'Я'#39') then '
          '    begin'
          '      s[i] := '#39'a'#39'; '
          '      Insert('#39'y'#39', s, i);'
          '    end;'
          '    '
          ' '
          '    '
          #9#9'if s[i] = '#39' '#39' then'
          #9#9#9'if s[i-1] = '#39'_'#39' then begin'
          #9#9#9#9'delete(s,i,1);'
          #9#9#9#9'i := i - 1;'
          #9#9#9'end'
          #9#9#9'else begin'
          #9#9#9#9'delete(s,i,1);'
          #9#9#9#9'insert('#39'_'#39',s,i);'
          ''
          #9#9#9'end;'
          #9#9'i := i + 1;'
          #9#9'end;'
          #9#9
          't := [Orders.TableName];'
          ' n :=1;'#9#9
          #9#9
          #9#9'while n <= length(t) do '
          #9'begin'
          '    if (t[n] = '#39'а'#39') or (t[n] = '#39'А'#39') then t[n] := '#39'a'#39';'
          '    if (t[n] = '#39'б'#39') or (t[n] = '#39'Б'#39') then t[n] := '#39'b'#39';'
          '    if (t[n] = '#39'в'#39') or (t[n] = '#39'В'#39') then t[n] := '#39'v'#39';'
          '    if (t[n] = '#39'г'#39') or (t[n] = '#39'Г'#39') then t[n] := '#39'g'#39';'
          '    if (t[n] = '#39'д'#39') or (t[n] = '#39'Д'#39') then t[n] := '#39'd'#39';'
          '    if (t[n] = '#39'е'#39') or (t[n] = '#39'Е'#39') then t[n] := '#39'e'#39';'
          '    if (t[n] = '#39'ё'#39') or (t[n] = '#39'Ё'#39') then '
          '    begin'
          '      t[n] := '#39'o'#39'; '
          '      Insert('#39'y'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'ж'#39') or (t[n] = '#39'Ж'#39') then '
          '    begin'
          '      t[n] := '#39'h'#39'; '
          '      Insert('#39'z'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'з'#39') or (t[n] = '#39'З'#39') then t[n] := '#39'z'#39';'
          '    if (t[n] = '#39'и'#39') or (t[n] = '#39'И'#39') then t[n] := '#39'i'#39';'
          '    if (t[n] = '#39'й'#39') or (t[n] = '#39'Й'#39') then t[n] := '#39'y'#39';'
          '    if (t[n] = '#39'к'#39') or (t[n] = '#39'К'#39') then t[n] := '#39'k'#39';'
          '    if (t[n] = '#39'л'#39') or (t[n] = '#39'Л'#39') then t[n] := '#39'l'#39';'
          '    if (t[n] = '#39'м'#39') or (t[n] = '#39'М'#39') then t[n] := '#39'm'#39';'
          '    if (t[n] = '#39'н'#39') or (t[n] = '#39'Н'#39') then t[n] := '#39'n'#39';'
          '    if (t[n] = '#39'о'#39') or (t[n] = '#39'О'#39') then t[n] := '#39'o'#39';'
          '    if (t[n] = '#39'п'#39') or (t[n] = '#39'П'#39') then t[n] := '#39'p'#39';'
          '    if (t[n] = '#39'р'#39') or (t[n] = '#39'Р'#39') then t[n] := '#39'r'#39';'
          '    if (t[n] = '#39'с'#39') or (t[n] = '#39'С'#39') then t[n] := '#39's'#39';'
          '    if (t[n] = '#39'т'#39') or (t[n] = '#39'Т'#39') then t[n] := '#39't'#39';'
          '    if (t[n] = '#39'у'#39') or (t[n] = '#39'У'#39') then t[n] := '#39'u'#39';'
          '    if (t[n] = '#39'ф'#39') or (t[n] = '#39'Ф'#39') then t[n] := '#39'f'#39';'
          '    if (t[n] = '#39'х'#39') or (t[n] = '#39'Х'#39') then t[n] := '#39'h'#39';'
          '    if (t[n] = '#39'ц'#39') or (t[n] = '#39'Ц'#39') then t[n] := '#39'c'#39';'
          '    if (t[n] = '#39'ч'#39') or (t[n] = '#39'Ч'#39') then '
          '    begin'
          '      t[n] := '#39'h'#39'; '
          '      Insert('#39'c'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'ш'#39') or (t[n] = '#39'Ш'#39') then '
          '    begin'
          '      t[n] := '#39'h'#39'; '
          '      Insert('#39's'#39', t, n);'
          '    end;'
          '    if (t[n] = '#39'щ'#39') or (t[n] = '#39'Щ'#39') then t[n] := '#39's'#39';'
          '    if (t[n] = '#39'ъ'#39') or (t[n] = '#39'Ъ'#39') then t[n] := '#39'_'#39';'
          '    if (t[n] = '#39'ы'#39') or (t[n] = '#39'Ы'#39') then t[n] := '#39'i'#39';'
          '    if (t[n] = '#39'ь'#39') or (t[n] = '#39'Ь'#39') then t[n] := '#39'_'#39';'
          '    if (t[n] = '#39'э'#39') or (t[n] = '#39'Э'#39') then t[n] := '#39'e'#39';'
          '    if (t[n] = '#39'ю'#39') or (t[n] = '#39'Ю'#39') then '
          '    begin'
          '      t[n] := '#39'y'#39'; '
          '      Insert('#39'u'#39', t, n);'
          '    end;  '
          '   if  (t[n] = '#39'я'#39') or (t[n] = '#39'Я'#39') then '
          '    begin'
          '      t[n] := '#39'a'#39'; '
          '      Insert('#39'y'#39', t, n);'
          '    end;'
          '    '
          ' '
          '    '
          #9#9'if t[n] = '#39' '#39' then'
          #9#9#9'if t[n-1] = '#39'_'#39' then begin'
          #9#9#9#9'delete(t,n,1);'
          #9#9#9#9'n := n - 1;'
          #9#9#9'end'
          #9#9#9'else begin'
          #9#9#9#9'delete(t,n,1);'
          #9#9#9#9'insert('#39'_'#39',t,n);'
          ''
          #9#9#9'end;'
          #9#9'n := n + 1;'
          #9#9
          '    end;'
          ''
          
            'memoNM3.text := '#39'<QRcode https://netmonet.co/tip/'#39'+kod+'#39'?o=3&s='#39 +
            '+sum+'#39'&c='#39'+nomer+'#39'&Tn='#39'+t+'#39'>'#39'; //параметр 600006 должен соответс' +
            'твовать коду заведения!!!!'
          'MemoNM3.visible:=true;'
          'if ([Orders.MainWaiter.genCodeSys]='#39#39')then '
          'MemoNM3.visible:=false;'
          'end')
        Left = 0
        Top = 8
        Width = 40
        Height = 1
        Alignment = taCenter
      end
    end
    object bndBandVirtNM2: TPDBand
      Color = 11528431
      Top = 75
      Height = 5
      Body.Size = 2
      Footer.DoubleWidth = True
      Footer.Size = 2
      BandType = btMasterData
      DataSetName = 'Virtual[1]'
      CalcFields = <>
      object MemoNM6: TPDMemo
        Left = 0
        Top = 1
        Width = 40
        Height = 2
        Alignment = taCenter
        Content.Strings = (
          'Или зайдите на netmonet.co'
          'и введите код сотрудника:')
      end
      object MemoNM7: TPDMemo
        Script.Strings = (
          'begin MemoNM7.visible:=true;'
          'if ([Orders.MainWaiter.genCodeSys]='#39#39')then '
          'MemoNM7.visible:=false; end')
        Left = 0
        Top = 3
        Width = 40
        Height = 1
        Content.Strings = (
          '       [Orders.MainWaiter.genCodeSys]')
      end
      object MemoNM8: TPDMemo
        Script.Strings = (
          'begin MemoNM8.visible:= false;'
          'if ([Orders.MainWaiter.genCodeSys] ='#39#39')then '
          'MemoNM8.visible:= true; end')
        Left = 0
        Top = 4
        Width = 40
        Height = 1
        Content.Strings = (
          '       [System.CashGroup.genRestSys]')
      end
    end
    object bndBandVirtNM3: TPDBand
      Script.Strings = (
        'begin if ([System.CashGroup.genRestSys]<>'#39#39')'
        'then bndBandVirtNM1.visible:=true'
        'else bndBandVirtNM1.visible:=false; '
        'if ([System.CashGroup.genRestSys]<>'#39#39')'
        'then bndBandVirtNM2.visible:=true'
        'else bndBandVirtNM2.visible:=false; end')
      Color = 16177339
      Top = 62
      Height = 2
      Footer.Size = 0
      BandType = btMasterData
      DataSetName = 'Virtual[1]'
      CalcFields = <>
      object Memo1: TPDMemo
        Visible = False
        Left = 0
        Top = 1
        Width = 40
        Height = 1
        Alignment = taCenter
        Content.Strings = (
          'Invisible')
      end
    end
  end
end
