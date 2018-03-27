

-- ս��EffectFlow

local BattleReportSkillFlowModel = class("BattleReportSkillFlowModel");
local BattleFlowType = require("Game/BattleReport/BattleFlowType");
local List = require("common/List");

local BattleReportEffectFlowModel = require("Game/BattleReport/BattleReportFlow/BattleReportEffectFlowModel");
function BattleReportSkillFlowModel:ctor()

    --����
    self.BattleFlowType = BattleFlowType.Skill

    -- ����Ӣ��
    self.AttackHeroId = 0

    --�Ƿ��������Ĺ�����
    self.AIsAttackPart = false;

    -- ����Ӣ��
    self.DefenceHeroId = 0

    --�Ƿ��������Ĺ�����
    self.DIsAttackPart = false;

    -- ����id
    self.SkillId = 0

    -- Ч��List
    self.EffectList = List.new();

end

function BattleReportSkillFlowModel:_OnDeserialize(byteArray)
    self.AttackHeroId = byteArray:ReadInt32();
    self.AIsAttackPart = byteArray:ReadBoolean()
    self.DefenceHeroId = byteArray:ReadInt32();
    self.DIsAttackPart = byteArray:ReadBoolean()
    self.SkillId = byteArray:ReadInt32();
    local flowCount = byteArray:ReadInt32();
    for ind = 1,flowCount do
        local effectflow = BattleReportEffectFlowModel.new();
        effectflow:_OnDeserialize(byteArray);
        self.EffectList:Push(effectflow);
    end
end

return BattleReportSkillFlowModel