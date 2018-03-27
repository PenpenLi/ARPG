
--Anchor:
--Date:16/10/26
--�������������ļ��Ϣ������


local GameMessage = require("common/Net/GameMessage");
local GetRecruit=class("GetRecruit",GameMessage);


function GetRecruit:ctor()
    -- ���id
    self._recruitKindID = 0;
    self._recruitKindCount = 0;
    GetRecruit.super.ctor(self);
end


-- @override
function GetRecruit:_OnSerial()
    self:WriteInt32(self._recruitKindID);
    self:WriteInt32(self._recruitKindCount);
end


-- @override
function GetRecruit:_OnDeserialize()
   self._recruitKindID = self:ReadInt32();
   self._recruitKindCount = self:ReadInt32();
end

return GetRecruit;

--endregion
