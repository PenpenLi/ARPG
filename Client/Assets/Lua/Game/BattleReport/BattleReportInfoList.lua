
--ĳ��ص�����ս�� û������ս����ֻ��һ��
local BattleReportInfoList = class("BattleReportInfoList");
local List=require("common/List");

function BattleReportInfoList:ctor()
    --
    -- ������ս��
    --
    self._continueList = List.new();
end

return BattleReportInfoList;