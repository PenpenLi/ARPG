--[[��Ϸ������]]

local UIBase= require("Game/UI/UIBase");
local GMCommandItem=class("GMCommandItem",UIBase);

function GMCommandItem:ctor()
    GMCommandItem.super.ctor(self)
end

--ע��ؼ�
function GMCommandItem:DoDataExchange()
    self.des = self:RegisterController(UnityEngine.UI.Text,"des")
end

--������Ͱ�ť
function GMCommandItem:SetText(text)
    self.des.text = text
end

return GMCommandItem
