
-- ս������

local BattleReportHeroCardModel = class("BattleReportHeroCardModel");

function BattleReportHeroCardModel:ctor()

    -- ��ID
    self.heroid = 0

    -- Ӣ�۵ȼ�
    self.cardLevel = 0

    -- ��ʼӵ�еı�����
    self.startTroopNum = 0

    --�������ڵ�λ��
    self.position = 0

    --���״���
    self.advanceTimes = 0

     --�Ƿ����
    self.isAwake = false

     --�Ƿ����
    self.CardType = 0
end

function BattleReportHeroCardModel:_OnDeserialize(byteArray)
    self.heroid = byteArray:ReadInt32();
    self.cardLevel = byteArray:ReadInt32();
    self.startTroopNum = byteArray:ReadInt32();
    self.position = byteArray:ReadInt32();
    self.advanceTimes = byteArray:ReadInt32();
    self.isAwake = byteArray:ReadBoolean();
    self.CardType = byteArray:ReadInt32();
    --[[print("self.heroid",self.heroid)
    print("self.cardLevel",self.cardLevel)
    print("self.startTroopNum",self.startTroopNum)
    print("self.position",self.position)
    print("self.advanceTimes",self.advanceTimes)
    print("self.isAwake",self.isAwake)
    print("self.CardType",self.CardType)]]
end

return BattleReportHeroCardModel