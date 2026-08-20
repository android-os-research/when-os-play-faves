.class public Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;
.super Ljava/lang/Object;
.source "GameSDKVrr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDKVrr"


# instance fields
.field private mCurrentGosSetting48:I

.field private mCurrentSetRefreshRate:I

.field private mCurrentSettingRefreshRateMode:I

.field private mIsEnabledGOSVrrControl:Z

.field private final mPackageName:Ljava/lang/String;

.field private mWmi:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/wm/WindowManagerInternal;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "wmi"    # Lcom/android/server/wm/WindowManagerInternal;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentSettingRefreshRateMode:I

    .line 24
    iput v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentGosSetting48:I

    .line 25
    iput v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentSetRefreshRate:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mIsEnabledGOSVrrControl:Z

    .line 30
    iput-object p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    .line 32
    return-void
.end method

.method private SLOGD(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 36
    const-string v0, "GameSDKVrr"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_9
    return-void
.end method

.method private disableGOSVrrControl()V
    .registers 5

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mIsEnabledGOSVrrControl:Z

    if-nez v0, :cond_5

    .line 120
    return-void

    .line 122
    :cond_5
    const/4 v0, 0x0

    .line 124
    .local v0, "gms":Lcom/samsung/android/game/IGameManagerService;
    :try_start_6
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 125
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_11

    .line 126
    invoke-static {v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    move-object v0, v2

    .line 128
    :cond_11
    if-eqz v0, :cond_3d

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRR disableGOSVrrControl, package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->SLOGD(Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mIsEnabledGOSVrrControl:Z

    .line 131
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/game/IGameManagerService;->disableVrrControl(Ljava/lang/String;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_33} :catch_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    goto :goto_3d

    .line 135
    .end local v1    # "b":Landroid/os/IBinder;
    :catch_34
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 137
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    nop

    .line 138
    :goto_3e
    return-void
.end method

.method private removeRefreshRatePolicies()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_10

    .line 66
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->removeFixedRefreshRatePackageInternal(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    .line 69
    :cond_10
    return-void
.end method


# virtual methods
.method public enableGOSVrrControl()V
    .registers 5

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mIsEnabledGOSVrrControl:Z

    if-eqz v0, :cond_5

    .line 97
    return-void

    .line 99
    :cond_5
    const/4 v0, 0x0

    .line 101
    .local v0, "gms":Lcom/samsung/android/game/IGameManagerService;
    :try_start_6
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 102
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_11

    .line 103
    invoke-static {v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    move-object v0, v2

    .line 105
    :cond_11
    if-eqz v0, :cond_3d

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRR enableGOSVrrControl, package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->SLOGD(Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mIsEnabledGOSVrrControl:Z

    .line 108
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/game/IGameManagerService;->enableVrrControl(Ljava/lang/String;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_33} :catch_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    goto :goto_3d

    .line 112
    .end local v1    # "b":Landroid/os/IBinder;
    :catch_34
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v1

    .line 111
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    nop

    .line 115
    :goto_3e
    return-void
.end method

.method public getCurrentSetRefreshRate()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentSetRefreshRate:I

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method setGosSetting48(I)Z
    .registers 3
    .param p1, "gosSetting48"    # I

    .line 57
    iget v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentGosSetting48:I

    if-eq v0, p1, :cond_8

    .line 58
    iput p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentGosSetting48:I

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method setRefreshRate(IIZ)V
    .registers 8
    .param p1, "targetRefreshRate"    # I
    .param p2, "modeId"    # I
    .param p3, "withSave"    # Z

    .line 72
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_71

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->removeRefreshRatePolicies()V

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->disableGOSVrrControl()V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mWmi:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->addFixedRefreshRatePackageInternal(Ljava/lang/String;I)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VRR setRefreshRate, package name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refresh rate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->SLOGD(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;->setCurrentPkgName(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", display id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKVrr"

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 87
    if-eqz p3, :cond_71

    .line 89
    iput p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentSetRefreshRate:I

    .line 92
    :cond_71
    return-void
.end method

.method setSettingRefreshRateMode(I)Z
    .registers 3
    .param p1, "settingRefreshRateMode"    # I

    .line 49
    iget v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentSettingRefreshRateMode:I

    if-eq v0, p1, :cond_8

    .line 50
    iput p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->mCurrentSettingRefreshRateMode:I

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
