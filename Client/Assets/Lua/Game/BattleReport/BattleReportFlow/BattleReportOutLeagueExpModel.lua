
-- ս������

local BattleReportOutLeagueExpModel = class("BattleReportOutLeagueExpModel");
function BattleReportOutLeagueExpModel:ctor()

    -- ս���غ��ⲿ������ -- OutOfBattleReportType
    self.OutType = OutOfBattleReportType.LeagueExp
    self.exp = 0;
end

function BattleReportOutLeagueExpModel:_OnDeserialize(byteArray)
    self.exp = byteArray:ReadInt32();
end

return BattleReportOutLeagueExpModel