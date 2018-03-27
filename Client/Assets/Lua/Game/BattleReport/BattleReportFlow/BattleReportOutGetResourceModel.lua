
-- ս������
local List = require("common/List");
local BattleReportOutGetResourceModel = class("BattleReportOutGetResourceModel");
function BattleReportOutGetResourceModel:ctor()

    -- ս���غ��ⲿ������ -- OutOfBattleReportType
    self.OutType = OutOfBattleReportType.GetResource
    self.ReserveSoldiers = 0 --Ԥ����
    self.resKey = List.new()
    self.res = {}
end

function BattleReportOutGetResourceModel:_OnDeserialize(byteArray)
    local count = byteArray:ReadInt32();
    for index = 1,count do
        local key = byteArray:ReadInt32();
        local value = byteArray:ReadInt32();
        self.resKey:Push(key)
        self.res[key] = value;
    end
    self.ReserveSoldiers = byteArray:ReadInt32();
end

return BattleReportOutGetResourceModel