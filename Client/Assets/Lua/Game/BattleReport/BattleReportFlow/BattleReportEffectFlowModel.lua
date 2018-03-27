

-- ս��EffectFlow

local BattleReportEffectFlowModel = class("BattleReportEffectFlowModel");
local BattleFlowType = require("Game/BattleReport/BattleFlowType");

function BattleReportEffectFlowModel:ctor()
    --����
    self.BattleFlowType = BattleFlowType.Effect

    -- ����Ӣ��
    self.AttackHeroId = 0

    --�Ƿ��������Ĺ�����
    self.AIsAttackPart = false;

    -- ����Ӣ��
    self.DefenceHeroId = 0

    --�Ƿ��������Ĺ�����
    self.DIsAttackPart = false;

    -- Ч��Type
    self.EffectType = 0

    -- Ч��id
    self.EffectId = 0

    -- Ч������
    self.EffectParam = 0

    -- Ч������
    self.EffectParam2 = 0

    -- Ч������
    self.EffectParam3 = 0

    -- �Ƿ��Ǳ��ɫ
    self.isgray = false;

end

function BattleReportEffectFlowModel:_OnDeserialize(byteArray,isgray)
    self.isgray = byteArray:ReadBoolean();
    self.BattleFlowType = byteArray:ReadInt32();
    self.AttackHeroId = byteArray:ReadInt32();
    self.AIsAttackPart = byteArray:ReadBoolean()
    self.DefenceHeroId = byteArray:ReadInt32();
    self.DIsAttackPart = byteArray:ReadBoolean()
    self.EffectType = byteArray:ReadInt32();
    self.EffectId = byteArray:ReadInt32();
    self.EffectParam = byteArray:ReadInt32();
    self.EffectParam2 = byteArray:ReadInt32();
    self.EffectParam3 = byteArray:ReadInt32();
    -- 
end
return BattleReportEffectFlowModel