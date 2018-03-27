-- region *.lua
-- ͬ��ϵͳ������
-- Date16/10/12

local GameService = require("FrameWork/Game/GameService");

local LeagueHandler = require("Game/League/LeagueHandler");
local LeagueManage = require("Game/League/LeagueManage");

LeagueService = class("LeagueService", GameService);


function LeagueService:ctor()

    print("LeagueService:ctor")
    LeagueService._instance = self;
    LeagueService.super.ctor(self, LeagueManage.new(), LeagueHandler.new());

end




function LeagueService:Instance()
    return LeagueService._instance;
end

--ͬ���⽻�ĺ��
function LeagueService:SetForeignBool(args)
 self._logic:SetForeignBool(args);
end

function LeagueService:GetForeignBool()
  return self._logic:GetForeignBool();
end

function LeagueService:GetChatTeamName()
    return self._logic:GetChatTeamName();
end

function LeagueService:GetCanInventList()
    return self._logic:GetCanInventList();
end

-- ��������
function LeagueService:getBeDimsePlayerID()
    return self._logic:getBeDimsePlayerID();
end


function LeagueService:GetTeamList()
    return self._logic:GetTeamList();
end

function LeagueService:GetLeagueChatTeam()
    return self._logic:GetLeagueChatTeam();
end

function LeagueService:FindLeagueChatTeam(id)
    return self._logic:FindLeagueChatTeam(id);
end

-- �������
function LeagueService:Clear()
    self._logic:ctor()
end

-- ˢ�¹���
function LeagueService:RefreshLeagueNotice(notice)
    self._logic:RefreshLeagueNotice(notice)
end

function LeagueService:SetApplyNum(num)

    self._logic:SetApplyNum(num)

end

-- ��ȡͬ��ְλ������
function LeagueService:GetTitleNum()
    return self._logic:GetTitleNum()
end

function LeagueService:RemoveLeagueMark(coord)
    self._logic:RemoveLeagueMark(coord)
end

function LeagueService:SetBeDimsePlayerID(id)
    self._logic:SetBeDimsePlayerID(id)
end

function LeagueService:GetApplyNum()

    return self._logic:GetApplyNum()

end


function LeagueService:GetMyLeagueInfo()

    return self._logic:GetLeague()

end

-- ͬ��������Ϣ

function LeagueService:GetLeagueInfluenceList()

    return self._logic:GetLeagueInfluenceList()

end

-- ͬ���⽻��Ϣ
function LeagueService:GetLeagueForeignAll()

    return self._logic:GetLeagueForeignAll()

end

function LeagueService:GetLeagueforeignfriend()

    return self._logic:GetLeagueforeignfriend()

end

function LeagueService:GetLeagueforeignenemy()

    return self._logic:GetLeagueforeignenemy()

end


-- ���ͬ�˱��

function LeagueService:SendAddLeagueMarkMessage(_name, _coord, _description)

    self._logic:SendAddLeagueMarkMessage(_name, _coord, _description)

end

-- ͬ�˱��
function LeagueService:SendLeagueMarkMessage()

    self._logic:SendOpenLeagueMarkQuest()

end

-- ������ս��Ϣ
function LeagueService:SetWildPlayerInfo(a)
    self._logic:SetWildPlayerInfo(a)
end


function LeagueService:GetLeagueMarkList()

    return self._logic:GetLeagueMarkList()

end

function LeagueService:GetWildPlayerInfo()

    return self._logic:GetWildPlayerInfo()
end



function LeagueService:GetJoinTime()
    return self._logic:GetJoinTime()
end

-- �򿪷��ѽ���
function LeagueService:SendOpenRebellMsg()

    self._logic:SendOpenRebellMsg()

end

--- ���͵��Ҳ������
function LeagueService:SendRequestOccupyLeagueInfo(tiledIndex)

    self._logic:SendRequestOccupyLeagueInfo(tiledIndex)

end

-- ȡ��������Ϣ
function LeagueService:CancelApplyJoin(PlayerID, targetId)

    self._logic:_SendCancelApplyJoin(PlayerID, targetId)
end

-- ��ͬ����Ϣ
function LeagueService:SendLeagueMessage(PlayerID)

    self._logic:_SendOpenLeagueMessage(PlayerID)
end

-- ��ͬ�˳�Ա��Ϣ
function LeagueService:SendLeagueMemberMessage(playerId)

    self._logic:_SendOpenLeagueMemberMessage(playerId)

end

-- ������
function LeagueService:RebellDonate(leagueid, wood, iron, grain, stone)

    self._logic:RebellDonate(leagueid, wood, iron, grain, stone)

end

-- ȷ�Ϸ���
function LeagueService:SendEnsureRevoltRequest()

    self._logic:SendEnsureRevoltRequest()

end



function LeagueService:GetUnderMemberList()


    return self._logic:GetUnderMemberList()

end

-- ��������Ա
function LeagueService:SendUnderMemberMessage()

    self._logic:SendUnderMemberMessage()

end

-- ����ͬ����Ϣ
function LeagueService:SendCreatLeagueMessage(playerId, name)

    self._logic:_SendCreatLeagueMessage(playerId, name)

end

-- ���󸽽�ͬ��
function LeagueService:SendAroundLeagueList(playerId)

    self._logic:_SendOpenAroundLeagueMessage(playerId)

end

-- ͬ��������Ϣ
function LeagueService:SendBeInviteLeague(playerId)

    self._logic:_SendBeInviteMessage(playerId)

end

-- ����������Ϣ
function LeagueService:SendPlayerInfo(playerId, targetId)

    self._logic:_SendPlayerInfoInLeague(playerId, targetId)

end

-- ���ͬ�����
function LeagueService:SendplayerAgreeJoinMsg(playerId, targetId)
    -- print("SendPlayerAgreeMsg..........................................")
    self._logic:_SendplayerAgreeJoinMsg(playerId, targetId)

end
-- ͬ�����ͬ��
function LeagueService:SendAgreeJoin(playerId, targetId)

    self._logic:_SendAgreeJoinMsg(playerId, targetId);

end

-- ��������
function LeagueService:SendApplyDemiseMsg(playerId, targetId)

    self._logic:_SendApplyDemiseMsg(playerId, targetId);

end

function LeagueService:SendRefuseJoin(playerId, targetId)

    self._logic:_SendRefuseJoin(playerId, targetId);

end

-- �������ͬ����Ϣ
function LeagueService:SendApplyJoin(playerId, targetId)
    -- print()
    self._logic:_SendApplyJoinMsg(playerId, targetId);

end

-- ��ָ��ͬ��
function LeagueService:SendOpenAppiontLeague(playerId, targetId)

    self._logic:_SendOpenAppiontLeague(playerId, targetId);

end



function LeagueService:SendShutMsg(playerId, isShut)

    self._logic:_SendShutMsg(playerId, isShut);

end



function LeagueService:ImmediateApply(playerId, name)

    self._logic:_ImmediateApplyJoinMsg(playerId, name);

end


function LeagueService:SetTargetId(TargetId)

    self._logic:_SetTargetId(TargetId);

end

-- ������Ա��Ϣ
function LeagueService:SendAppiontOfficerMsg(playerId, targetId, title)

    self._logic:_SendAppiontOfficer(playerId, targetId, title);

end
-- ������Ϣ
function LeagueService:SendKickMemberMsg(playerId, targetId)

    self._logic:_SendKickMemberMsg(playerId, targetId)

end

-- �����Ա��Ϣ
function LeagueService:SendReCallOfficeMsg(playerId, targetId)

    self._logic:_SendReCallOfficeMsg(playerId, targetId)

end

-- ����̫��

function LeagueService:SendAppiontChiefMsg(playerId, targetId, chifeid)

    self._logic:_SendAppiontChiefMsg(playerId, targetId, chiefid)

end

-- ��������
function LeagueService:SendGiveUpLeaderMsg(playerId)

    self._logic:_SendGiveUpLeaderMsg(playerId)

end

-- �˳�ͬ��
function LeagueService:SendQuitLeague(playerId)

    self._logic:_SendQiutLeagueMsg(playerId)

end

-- ��ɢͬ��
function LeagueService:SendDissloveLeague(playerId)

    self._logic:_SendDissloveLeague(playerId)

end

-- �洢������Ϣ
function LeagueService:SetBaseMsg(playerId, targetId, titleId)

    self._logic:_SetBaseMsg(playerId, targetId, titleId)

end
-- ���͸��������Ϣ
function LeagueService:SendRoundPlayerMsg(playerId)

    self._logic:_SendAroundPlayerMsg(playerId);

end


function LeagueService:ImmediateInvite(playerId, targetId)

    self._logic:ImmediateInviteOther(playerId, targetId);

end


-- ���͸��������Ϣ
function LeagueService:SendCancelDemise(playerId, targetId)

    self._logic:_SendCancelDemiseMsg(playerId, targetId);

end

-- �����Ƴ�ͬ�˱��
function LeagueService:RemoveLeagueMark(markIndex)

    self._logic:RemoveLeagueMark(markIndex);

end

-- ����������Ϣ

function LeagueService:SendInviteMsg(playerId, targetId)

    self._logic:_SendInvitePlayerMsg(playerId, targetId);

end


--
function LeagueService:GetMyinfo()

    return self._logic:GetMyinfo()

end

function LeagueService:GetLeagueInfo()

    return self._logic:GetLeagueInfo()

end

-- �������������Ϣ

function LeagueService:SendOpenApplyList(playerId)

    self._logic:_SendOpenApplyList(playerId);

end



function LeagueService:GetNextDemiseTime()

    return self._logic:GetNextDemiseTime()

end

function LeagueService:SetNextDemiseTime(time)

    self._logic:SetNextDemiseTime(time);
end


-- ����ͬ�˾�����Ϣ

function LeagueService:SendLeagueDonate(_leagueid, _wood, _iron, _grain, _stone)

    self._logic:SendLeagueDonate(_leagueid, _wood, _iron, _grain, _stone)

end

-- ��ӵ��Ұ�⽨������

function LeagueService:SendOpenWildBDingMessage()
    self._logic:SendOpenWildBDingMessage()
end


-- ��ͬ���⽻
function LeagueService:SendLeagueForiegn()

    self._logic:SendLeagueForiegn()
end

-- �����Ա�б�
function LeagueService:GetLeagueMemberList()

    return self._logic:GetLeagueMemberList()

end

-- ����ͬ�˹�ϵ
function LeagueService:SendLeagueRelationMsg(id, relationtype)

    self._logic:SendLeagueRelationMsg(id, relationtype)

end

function LeagueService:SendOpenImmLeague(_name)

    self._logic:SendOpenImmLeague(_name)

end 


function LeagueService:GetFlag(args)

    return self._logic:GetFlag(args)

end

-- �洢���ξ���ֵ
function LeagueService:SetDonateValue(param)

    self._logic:SetDonateValue(param)

end

function LeagueService:GetDonateValue()

    return self._logic:GetDonateValue()

end


return LeagueService
-- endregion
