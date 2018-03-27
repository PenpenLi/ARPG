
-- ս������

local BattleReportOutOccupyModel = class("BattleReportOutOccupyModel");
function BattleReportOutOccupyModel:ctor()

    -- ս���غ��ⲿ������ -- OutOfBattleReportType
    self.OutType = OutOfBattleReportType.Occupy
    self.tileIndex = 0;
    self.OccupyType = 1;
    self.buildingID = 0;
    self.name = "";
end

function BattleReportOutOccupyModel:_OnDeserialize(byteArray)
    self.tileIndex = byteArray:ReadInt32();
    self.OccupyType = byteArray:ReadInt32();
    self.buildingID = byteArray:ReadInt64();
    self.name = byteArray:ReadString();
end

return BattleReportOutOccupyModel