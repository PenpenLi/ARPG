
-- ս������

local BattleReportOutNullReportReasonModel = class("BattleReportOutNullReportReasonModel");
function BattleReportOutNullReportReasonModel:ctor()

    -- ս���غ��ⲿ������ -- OutOfBattleReportType
    self.OutType = OutOfBattleReportType.NullReportReason
    self.NullReportReasonType = 0;
end

function BattleReportOutNullReportReasonModel:_OnDeserialize(byteArray)
    self.NullReportReasonType = byteArray:ReadInt32();
end

return BattleReportOutNullReportReasonModel