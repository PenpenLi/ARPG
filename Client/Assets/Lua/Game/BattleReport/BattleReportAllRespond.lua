--
-- �߼������� --> �ͻ���
-- ս���б�
-- @author czx
--
local GameMessage = require("common/Net/GameMessage");
local BattleReportAllRespond = class("BattleReportAllRespond", GameMessage);
local List = require("common/List");
local BattleReportModel = require("Game/BattleReport/BattleReportModel");
--
-- ���캯��
--
function BattleReportAllRespond:ctor()
    BattleReportAllRespond.super.ctor(self);
    self.AllReportList = List.new();
end

function BattleReportAllRespond:SetByteArray(byteArray)

end

--@Override
function BattleReportAllRespond:_OnDeserialize() 
    local Count = self:ReadInt32();
    for index = 1,Count do
        local mBattleReport = BattleReportModel.new();
        mBattleReport:_OnDeserialize();
        self.AllReportList:Push()
    end
end

return BattleReportAllRespond;