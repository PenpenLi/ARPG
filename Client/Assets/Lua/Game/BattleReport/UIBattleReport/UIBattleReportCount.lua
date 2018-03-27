--[[��Ϸ������]]

local UIBase= require("Game/UI/UIBase");
local UIService=require("Game/UI/UIService");
local UIBattleReportCount=class("UIBattleReportCount",UIBase);
local UIType=require("Game/UI/UIType");
local UIConfigTable=require("Game/Table/model/DataUIConfig");
local UIBattleReportCountArmy = require("Game/BattleReport/UIBattleReport/UIBattleReportCountArmy");
function UIBattleReportCount:ctor()
    UIBattleReportCount.super.ctor(self)
    self.ArmyPrefab = UIConfigTable[UIType.UIBattleReportCountArmy].ResourcePath;
    self.Parent = nil;
    self.OurPartUI = nil;
    self.EnemyUI = nil;
end

--ע��ؼ�
function UIBattleReportCount:DoDataExchange()
    self.backBtn = self:RegisterController(UnityEngine.UI.Button,"backBtn")
    self.Parent = self:RegisterController(UnityEngine.Transform,"ScrollRect/Parent")
end

--ע��ؼ�����¼�
function UIBattleReportCount:DoEventAdd()
    self:AddListener(self.backBtn,self.OnClickbackBtn)
end

--����رհ�ť�߼�
function UIBattleReportCount:OnClickbackBtn()
    UIService:Instance():HideUI(UIType.UIBattleReportCount)
end

--����  1 ������Ӣ���б� 2 ������ͳ�� 3 ��������� 4 ������Ӣ���б� 5 ������ͳ�� 6 ���������
function UIBattleReportCount:OnShow(param)
    if(self.OurPartUI == nil)then
        self.OurPartUI = UIBattleReportCountArmy.new();
        GameResFactory.Instance():GetUIPrefab(self.ArmyPrefab,self.Parent,self.OurPartUI,function (go)
            self.OurPartUI:Init();
            --self.OurPartUI:InitOurPart(true);
            self.OurPartUI:InitArmy(param[1],param[2],param[3],true);
        end);
    else
        self.OurPartUI:InitArmy(param[1],param[2],param[3],true);
    end
    if(self.EnemyUI == nil)then
        self.EnemyUI = UIBattleReportCountArmy.new();
        GameResFactory.Instance():GetUIPrefab(self.ArmyPrefab,self.Parent,self.EnemyUI,function (go)
            self.EnemyUI:Init();
            --self.EnemyUI:InitOurPart(false);
            self.EnemyUI:InitArmy(param[4],param[5],param[6],false);
        end);
    else
        self.EnemyUI:InitArmy(param[4],param[5],param[6],false);
    end
end

return UIBattleReportCount
