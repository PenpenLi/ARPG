
--[[
    Name:ui����
    anchor:Dr
    Data:16/9/7
--]]

local List=require("common/List");--ʵ��List
local UIBase = class("UIBase");


-- ���캯��
--ע��:������ֻ֧��ע��Button�������ؼ�(��InputField)��д������
function UIBase:ctor()
--self.mPanel=nil;
	
end


-- ��ʼ��
function UIBase:Init()
	-- body

	--self:SetPanel(panel);
	self:DoDataExchange();
	self:DoEventAdd();
    --print("Init");
	return self:OnInit();
end


---- ���ý���
--function UIBase:SetPanel(panel)
--	-- body
--	self.mPanel = panel;
--end

---- ��ȡ����
--function UIBase:GetPanel()
--	-- body
--	return self.mPanel;
--end

-- ��ʼ����ʱ��
function UIBase:OnInit()
	-- body
end

-- �ͷŽ���
function UIBase:Release()
	-- body
	self:OnRelease();
end

-- ���ͷŽ���
function UIBase:OnRelease()
	-- body
end

-- �ؼ�����
function UIBase:DoDataExchange()
	-- body
end

-- �ؼ��¼����
function UIBase:DoEventAdd()
	-- body
end


-- ��������ʾ��ʱ�����
function UIBase:OnShow(param)
	-- body
end

-- ���������ص�ʱ�����
function UIBase:OnHide(param)
	-- body
end


-- �Ƿ���ʾ
function UIBase:GetVisible()
	-- body

	if self.gameObject == nil then
		--todo
        print("UIΪ��");
		return false;
	end

	return self.gameObject.activeSelf;
end



-- ��ʾ����
function UIBase:SetVisible(mvisible, param)
	-- body

    self.gameObject:SetActive(mvisible);

    --print("visibele"..mvisible);
	if mvisible then
		--todo
		self:OnShow(param);
	else
		--todo
		self:OnHide(param);
	end
end



  --ע��ؼ�
  --control�ؼ�����(��Button)
  --_strName�ڸ������µ�����
  function UIBase:RegisterController(control,_strName)

    local obj =self.transform:Find(_strName);
    print(obj)
  	local  _controle= obj:GetComponent(typeof(control));

    if _controle==nil then
    print("controlΪ��");
    end

    return _controle;
  end



--  function UIBase:ErAddListener(obj, method)
--    return function(...)
--        return method(obj, ...)
--    end
--end

-- --����¼�
--function UIBase:OneAddListener(obj,func)
--  obj:AddListener(
--  function (...)
--  func(self,...);
--  end

--  )

--end


--����¼�
--obj����
--method�ص�����
  function UIBase:AddListener(obj, method)

  self.lua_behaviour:AddClick(obj,function(...)
        return method(self,obj, ...)
        end )

end



return UIBase;