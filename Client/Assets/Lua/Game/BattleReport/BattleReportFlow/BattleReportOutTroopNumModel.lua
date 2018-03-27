
-- ս������

local BattleReportOutTroopNumModel = class("BattleReportOutTroopNumModel");
function BattleReportOutTroopNumModel:ctor()

    -- ս���غ��ⲿ������ -- OutOfBattleReportType
    self.OutType = OutOfBattleReportType.TroopNum
    self.cardId = 0;
    self.IsAttackPart = false;
    self.troopNum = 0;
    self.woundNum = 0;
end

function BattleReportOutTroopNumModel:_OnDeserialize(byteArray)
    self.cardId = byteArray:ReadInt32();
    self.IsAttackPart = byteArray:ReadBoolean();
    self.troopNum = byteArray:ReadInt32();
    self.woundNum = byteArray:ReadInt32();
end

return BattleReportOutTroopNumModel