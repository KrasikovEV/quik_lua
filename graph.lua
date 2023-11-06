--[[
*******************************************************************
������ ������������� ����������� ��������� ������ � ��������
� �����������. "������" ������������� �� ������.
��� ���������� ����� ��������� ������� ������� tpf.lua.
*******************************************************************
]]

dofile("tpf.lua")

function main(  )
	file = io.open("1.txt", "w+t")
	-- ������ ���� ������ ������ ��� ��������� � ��������������� zzz
	local x = getNumCandles("zzz") 	-- �������� ���������� ������ �� �������
	local y = getLinesCount("zzz") 	-- �������� ���������� ����� � �������
					-- � ��������� ����������� ����� ����� ����
					-- ������ ��� ����
	message("total ".. x .. " candles in " ..y .. " lines", 3)
	for i=0,y-1 do
		file:write("line = ".. i .. "\n")
		-- �������� 10 ������ ������ � ������ �����
		t, num, legend = getCandlesByIndex("zzz", i, 0, 10)
		file:write("num = " .. num ..", legend = ".. legend .. "\n")
		for j=0,num-1 do
			--��������� ������ ������ � ����
			table_save( "candle["..j .. "]", file, t[j])
		end
	end

	file:close()
end
