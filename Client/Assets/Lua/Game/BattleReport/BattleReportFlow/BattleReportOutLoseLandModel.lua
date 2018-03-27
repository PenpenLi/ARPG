
-- ս������

local BattleReportOutLoseLandModel = class("BattleReportOutLoseLandModel");
function BattleReportOutLoseLandModel:ctor()

    -- ս���غ��ⲿ������ -- OutOfBattleReportType
    self.OutType = OutOfBattleReportType.LoseLand
    self.tileId = 0;
    self.buildingID = 0;
	self.name = "";
end

function BattleReportOutLoseLandModel:_OnDeserialize(byteArray)
    self.tileId = byteArray:ReadInt32();
    self.buildingID = byteArray:ReadInt64();
    self.name = byteArray:ReadString();
end

return BattleReportOutLoseLandModel