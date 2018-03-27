﻿using UnityEngine;
using System.Collections;
using System;

public class StartUpCommand : ControllerCommand
{
    private void InitFunc(Action OnLoadStep, Action loadOver)
    {
        GameObject gameMgr = GameObject.Find("GameManager");
        //if (gameMgr != null)
        //{
        //    gameMgr.AddComponent<AppView>();
        //}

        //-----------------关联命令-----------------------
        //AppFacade.Instance.RegisterCommand(NotiConst.DISPATCH_MESSAGE, typeof(SocketCommand));

        AppFacade.Instance.AddManager<LuaManager>();
        ResourceManager resMgr = AppFacade.Instance.AddManager<ResourceManager>();

        //AppFacade.Instance.AddManager<NetworkManager>();
        AppFacade.Instance.AddManager<ThreadManager>();
        AppFacade.Instance.AddManager<SimpleTimerManager>();

        //if (GameSetting.UpdateMode && GameSetting.LuaBundleMode)
        //{
        //    bool canNext = false;

        //    resMgr.LoadAssetPacker("res_asset_packer.unity", "res_asset_packer", delegate(UnityEngine.Object[] objs)
        //    {
        //        if (objs.Length == 0) return;
        //        GameResFactory.Instance().mAssetPacker = objs[0] as AssetPacker;
        //        canNext = true;
        //    });

        //    while (canNext == false) yield return null;
        //}

        if (OnLoadStep != null)
        {
            OnLoadStep();
        }

        AppFacade.Instance.AddManager<GameManager>();

        if (loadOver != null)
        {
            loadOver();
        }
    }

    public override void Execute(IMessage message)
    {
        InitFunc(
            () => { 
               //Debug.Log("OnLoadStep");
                },
            () =>
            {
                //Debug.Log(Application.dataPath);
                //Debug.Log(Application.streamingAssetsPath);
            });
    }
}
