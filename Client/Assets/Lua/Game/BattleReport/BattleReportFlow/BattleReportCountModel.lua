

-- ս��ͳ��

local BattleReportCountModel = class("BattleReportCountModel");

function BattleReportCountModel:ctor()

    -- �佫
    self.cardID = 0

    -- ��ͨɱ��
    self.normalDamage = 0

    -- ս��ɱ��
    self.SkillDamage = 0

    -- ս���ͷ�
    self.DoSkillTimes = 0

    -- ��Ԯ
    self.helpNum = 0

    -- ��ʧ
    self.losseNum = 0

    -- �����˲�
    self.theWoundNum = 0

    -- ���˲�
    self.woundNumSum = 0
end

function BattleReportCountModel:_OnDeserialize(byteArray)
    self.cardID = byteArray:ReadInt32();
    self.normalDamage = byteArray:ReadInt32();
    self.SkillDamage = byteArray:ReadInt32();
    self.DoSkillTimes = byteArray:ReadInt32();
    self.helpNum = byteArray:ReadInt32();
    self.losseNum = byteArray:ReadInt32();
    self.theWoundNum = byteArray:ReadInt32();
    self.woundNumSum = byteArray:ReadInt32();
end

return BattleReportCountModel