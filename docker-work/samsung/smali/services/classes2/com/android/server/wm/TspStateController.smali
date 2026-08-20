.class public Lcom/android/server/wm/TspStateController;
.super Ljava/lang/Object;
.source "TspStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TspStateController$TspDebug;,
        Lcom/android/server/wm/TspStateController$DeviceSize;,
        Lcom/android/server/wm/TspStateController$SettingsObserver;,
        Lcom/android/server/wm/TspStateController$H;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE_COMMAND_STRING_DEADZONE_HOLE:Ljava/lang/String; = "0,0,0,0"

.field public static final HISTORY_TAG:Ljava/lang/String; = "tspstatemanager"

.field public static final MSG_CHANGE_IME_POLICY:I = 0x2

.field public static final MSG_CHANGE_WINDOW_POLICY:I = 0x1

.field public static final MSG_SCREEN_TURNED_ON:I = 0x3

.field public static final SETTING_TSP_DEBUG:Ljava/lang/String; = "setting_tsp_debug"

.field public static final SETTING_TSP_LAST_GRIP_CMD:Ljava/lang/String; = "setting_last_grip_cmd"

.field public static final SETTING_TSP_LAST_NOTE_MODE:Ljava/lang/String; = "setting_last_note_mode"

.field public static final SETTING_TSP_THRESHOLD:Ljava/lang/String; = "setting_tsp_threshold"

.field public static final SET_NOTE_MODE:Ljava/lang/String; = "set_note_mode,"

.field public static final SET_SIP_MODE:Ljava/lang/String; = "set_sip_mode,"

.field public static final SET_TUNING_DATA:Ljava/lang/String; = "set_grip_data,"

.field public static final TAG:Ljava/lang/String; = "TspStateManager"

.field public static final TSP_COMMAND_TYPE_HOLE:I = 0x3

.field public static final TSP_COMMAND_TYPE_LAND:I = 0x2

.field public static final TSP_COMMAND_TYPE_NOTE:I = 0x6

.field public static final TSP_COMMAND_TYPE_PORT:I = 0x1

.field public static final TSP_COMMAND_TYPE_SAME:I = 0x4

.field public static final TSP_COMMAND_TYPE_SIP:I = 0x5

.field public static final UPDATE_WINDOW_POLICY_DELAY_MILLIS:I = 0x1f4

.field public static final URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

.field public static final URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;


# instance fields
.field public final m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

.field public mAwake:Z

.field public mContext:Landroid/content/Context;

.field public final mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public mDeadzoneHoleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

.field public mFocusedWindow:Ljava/lang/String;

.field public mGameManager:Lcom/samsung/android/game/SemGameManager;

.field public final mH:Lcom/android/server/wm/TspStateController$H;

.field public mImeTargetWindow:Lcom/android/server/wm/WindowState;

.field public mImeWindowVisible:Z

.field public mIsEnabledCustomSetting:Z

.field public mIsImmShowing:Z

.field public mIsPortrait:Z

.field public mLastDeadzoneHole:Ljava/lang/String;

.field public mLastLandCmd:Ljava/lang/String;

.field public mLastNoteMode:Z

.field public mLastPortCmd:Ljava/lang/String;

.field public mReserveLandCmd:Ljava/lang/String;

.field public mReservePortCmd:Ljava/lang/String;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mSettingsObserver:Lcom/android/server/wm/TspStateController$SettingsObserver;

.field public mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

.field public mTspDebugSetting:I

.field public mTspThresholdSetting:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Jd-5Ej8nRQZefzI6928fv1rEFWU(Lcom/android/server/wm/TspStateController;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TspStateController;->lambda$writeTspCommandToSysfs$0(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/TspStateController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmTspDebugSetting(Lcom/android/server/wm/TspStateController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/TspStateController;->mTspDebugSetting:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTspThresholdSetting(Lcom/android/server/wm/TspStateController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishScreenTurningOnInner(Lcom/android/server/wm/TspStateController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->finishScreenTurningOnInner()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateImePolicyInner(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateImePolicyInner(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWindowPolicyInner(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateWindowPolicyInner(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetURI_SETTING_TSP_DEBUG()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetURI_SETTING_TSP_THRESHOLD()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "setting_tsp_threshold"

    .line 78
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    const-string/jumbo v0, "setting_tsp_debug"

    .line 80
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 93
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 94
    :goto_e
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 96
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 97
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x6

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x4

    .line 98
    :goto_1c
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 100
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 101
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_2a

    const/16 v1, 0x9

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x7

    .line 103
    :goto_2b
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    .line 105
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 108
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 109
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    .line 112
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    .line 124
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    const-string v1, ""

    .line 130
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    .line 131
    iput v0, p0, Lcom/android/server/wm/TspStateController;->mTspDebugSetting:I

    .line 142
    new-instance v0, Lcom/android/server/wm/TspStateController$H;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TspStateController$H;-><init>(Lcom/android/server/wm/TspStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 672
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 166
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 168
    new-instance p1, Lcom/android/server/wm/TspStateController$SettingsObserver;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/TspStateController$SettingsObserver;-><init>(Lcom/android/server/wm/TspStateController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mSettingsObserver:Lcom/android/server/wm/TspStateController$SettingsObserver;

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wm/TspStateController$SettingsObserver;->observe()V

    .line 171
    new-instance p1, Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-direct {p1}, Lcom/android/server/wm/TspStateController$DeviceSize;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 172
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    .line 175
    new-instance v0, Lcom/android/server/wm/TspStateController$TspDebug;

    iget v3, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    invoke-direct {v0, v3, p1}, Lcom/android/server/wm/TspStateController$TspDebug;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->toggleTspDebug()V

    const-string/jumbo p1, "tspstatemanager"

    const-string v0, "init"

    .line 178
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0,0,0,0"

    .line 179
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 181
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "semcustomdump"

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;

    .line 183
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sepunion/SemCustomDumpManager;->setDumpState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$writeTspCommandToSysfs$0(ILjava/lang/String;)V
    .registers 9

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const-string v1, "TspStateManager"

    if-eqz v0, :cond_cb

    .line 600
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    if-eqz v0, :cond_d0

    const/4 v0, 0x5

    const-string v2, "]"

    const-string v3, "["

    const-string/jumbo v4, "tspstatemanager"

    if-eq p1, v0, :cond_83

    const/4 v5, 0x6

    if-eq p1, v5, :cond_61

    .line 613
    iget-object v5, p0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    if-eqz v5, :cond_43

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]window : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 617
    iput-object v2, p0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    goto :goto_5b

    .line 619
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_5b
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v2, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setGripData(Ljava/lang/String;)I

    goto :goto_a4

    .line 608
    :cond_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setNoteMode(I)I

    goto :goto_a4

    .line 603
    :cond_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSipMode(I)I

    .line 625
    :goto_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrote command: cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_d0

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p2, p1}, Lcom/android/server/wm/TspStateController$TspDebug;->updateTspState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_d0

    :cond_cb
    const-string p0, "mSemInputDeviceManager is null"

    .line 632
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 689
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "deadzone enabled="

    .line 690
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, " deadzone_v3 enabled="

    .line 692
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public finishScreenTurningOn()V
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 318
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final finishScreenTurningOnInner()V
    .registers 3

    .line 514
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    const-string/jumbo v1, "tspstatemanager"

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v0, "finishScreenTurningOn TSP_COMMAND_TYPE_PORT"

    .line 515
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    goto :goto_2e

    .line 518
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    if-eqz v0, :cond_2e

    const-string v0, "finishScreenTurningOn TSP_COMMAND_TYPE_LAND"

    .line 519
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final initDefaultValues()V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 191
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_USE_SMALLER_GRIPZONE_ON_GAME:Z

    if-eqz v0, :cond_22

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    :cond_22
    return-void
.end method

.method public final isForegroundGame()Z
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    if-nez v0, :cond_b

    .line 399
    new-instance v0, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {v0}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 402
    :cond_b
    :try_start_b
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    if-eqz p0, :cond_2f

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/game/SemGameManager;->isForegroundGame()Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in checking isForegroundGame, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TspStateManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 393
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_16

    .line 394
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0xbb7

    if-gt p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final makeLandCommand(Lcom/android/server/wm/TspGripCommand;)Ljava/lang/String;
    .registers 4

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2,1,"

    .line 460
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 462
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    iget p1, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makePortCommand(Lcom/android/server/wm/TspGripCommand;)Ljava/lang/String;
    .registers 4

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1,"

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 440
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz v1, :cond_3d

    .line 448
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    iget p1, p1, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final parseCommand(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    const-string p0, ";"

    .line 222
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 223
    array-length p2, p0

    if-gt p2, p1, :cond_12

    return-object v0

    .line 226
    :cond_12
    aget-object p0, p0, p1

    return-object p0
.end method

.method public printLastGripCmd()V
    .registers 3

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastGripCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController$TspDebug;->updateDebugString()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TspStateManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeAllMessages()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 329
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2a
    return-void
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .registers 13

    .line 526
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string/jumbo v1, "setDeadzoneHole "

    const-string v2, "TspStateManager"

    if-eqz v0, :cond_c

    .line 527
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez p1, :cond_15

    const-string/jumbo p0, "setDeadzoneHole hole is null"

    .line 531
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const/4 v0, 0x0

    const-string v3, "dead_zone_process_name"

    .line 535
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const-string/jumbo p0, "setDeadzoneHole invalid name key"

    .line 537
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const-string v3, "dead_zone_direction"

    const/4 v4, 0x0

    .line 541
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "dead_zone_port_y1"

    .line 542
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "dead_zone_port_y2"

    .line 543
    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz v5, :cond_50

    if-ltz p1, :cond_50

    if-ne v5, p1, :cond_3f

    goto :goto_50

    .line 550
    :cond_3f
    new-instance v6, Landroid/graphics/Rect;

    if-ge v5, p1, :cond_47

    invoke-direct {v6, v4, v5, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4a

    :cond_47
    invoke-direct {v6, v4, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 551
    :goto_4a
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 546
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 547
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_5d
    :goto_5d
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const v5, 0x7fffffff

    move v6, v4

    move v7, v6

    move v8, v5

    :goto_69
    if-ge v6, p1, :cond_88

    .line 558
    iget-object v9, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_85

    .line 560
    iget v10, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 561
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    :cond_88
    if-nez v7, :cond_8b

    goto :goto_8c

    :cond_8b
    move v4, v3

    :goto_8c
    if-ne v8, v5, :cond_8f

    move v8, v7

    .line 571
    :cond_8f
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v3, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    invoke-static {v3, p1, v8}, Lcom/android/server/wm/TspGripCommand;->getTspHeightPixel(III)I

    move-result p1

    .line 573
    iget-object v3, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v5, v3, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget v3, v3, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    invoke-static {v5, v3, v7}, Lcom/android/server/wm/TspGripCommand;->getTspHeightPixel(III)I

    move-result v3

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0,"

    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    .line 578
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 584
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_ea

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", processName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_ea
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    return-void

    .line 592
    :cond_f3
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tspstatemanager"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    return-void
.end method

.method public setDefaultDisplaySizeDensity(IIII)V
    .registers 7

    .line 250
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultDisplaySizeDensity initWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TspStateManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TspStateController$DeviceSize;->set(IIII)V

    .line 256
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    .line 259
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget p2, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/TspStateController$TspDebug;->setInitDisplaySize(II)V

    return-void
.end method

.method public setOrientation(Z)V
    .registers 4

    .line 639
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_5

    return-void

    .line 642
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    if-eq v0, p1, :cond_80

    .line 643
    iput-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    const-string v0, "TspStateManager"

    const-string/jumbo v1, "tspstatemanager"

    if-eqz p1, :cond_54

    .line 646
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    if-nez p1, :cond_1d

    const-string/jumbo p0, "setOrientation mReservePortCmd is null."

    .line 647
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 650
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setOrientation TSP_COMMAND_TYPE_PORT : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 654
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    goto :goto_80

    :cond_47
    const-string/jumbo p1, "setOrientation TSP_COMMAND_TYPE_SAME"

    .line 656
    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    const-string v0, "2,0"

    .line 657
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    goto :goto_80

    .line 660
    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    if-nez p1, :cond_5f

    const-string/jumbo p0, "setOrientation mReserveLandCmd is null."

    .line 661
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 664
    :cond_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setOrientation TSP_COMMAND_TYPE_LAND : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 667
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    :cond_80
    :goto_80
    return-void
.end method

.method public startedGoingToSleep()V
    .registers 2

    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    return-void
.end method

.method public startedWakingUp()V
    .registers 5

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 676
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_16

    .line 677
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-eqz v0, :cond_11

    move-object v0, v1

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 679
    :cond_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 680
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move-object v1, v2

    :goto_24
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    :cond_28
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    const-string v1, "SemInputDeviceManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-nez v0, :cond_16

    const-string p0, "TspStateManager"

    const-string/jumbo v0, "systemReady: failed to get the service"

    .line 245
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public toggleTspDebug()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "setting_tsp_debug"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_14

    move v2, v1

    :cond_14
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TspStateController$TspDebug;->setEnabled(Z)V

    return-void
.end method

.method public final updateCustomValue()V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCustomValue customSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TspStateManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 205
    iput-boolean v1, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    return-void

    .line 210
    :cond_36
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TspStateController;->parseCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v4, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    const/4 v2, 0x1

    .line 213
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/TspStateController;->parseCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v3, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 215
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    return-void
.end method

.method public updateImePolicy(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 308
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->removeAllMessages()V

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateImePolicyInner(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 476
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    const/4 v0, 0x5

    const-string v1, "1"

    .line 478
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 481
    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_16

    return-void

    .line 485
    :cond_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v0, :cond_1f

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0}, Lcom/android/server/wm/TspGripCommand;->reset()V

    .line 489
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 490
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    .line 489
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "SamsungKeypad"

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "honeyboard"

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 495
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    :cond_48
    if-eqz p1, :cond_57

    .line 499
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 501
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)Z

    .line 505
    :cond_57
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_7c

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateImePolicy imeWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", command="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TspStateManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_7c
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V

    return-void
.end method

.method public updateImeTargetWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public updateImeWindowVisibility(Z)V
    .registers 2

    .line 267
    iput-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    return-void
.end method

.method public final updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V
    .registers 4

    .line 412
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    .line 416
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->makePortCommand(Lcom/android/server/wm/TspGripCommand;)Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 419
    iget-boolean v1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    .line 420
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 421
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    .line 424
    :cond_1f
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->makeLandCommand(Lcom/android/server/wm/TspGripCommand;)Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 428
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    if-nez v0, :cond_37

    const/4 v0, 0x2

    .line 429
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 430
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    .line 433
    :cond_37
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    return-void
.end method

.method public updateTspCustomCommand()V
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tspstatemanager"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public updateWindowPolicy(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->removeAllMessages()V

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 299
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final updateWindowPolicyInner(Lcom/android/server/wm/WindowState;)V
    .registers 9

    .line 334
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    const/4 v1, 0x1

    const-string v2, "1"

    const-string v3, "0"

    const/4 v4, 0x0

    if-eqz v0, :cond_2c

    .line 335
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    const/4 v5, 0x5

    if-eqz v0, :cond_1d

    iget-object v6, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_17

    iget-boolean v6, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-nez v6, :cond_1d

    .line 336
    :cond_17
    iput-boolean v4, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    .line 337
    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    goto :goto_2c

    :cond_1d
    if-nez v0, :cond_2c

    .line 338
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_2c

    .line 339
    iput-boolean v1, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    .line 340
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 344
    :cond_2c
    :goto_2c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    if-eqz v0, :cond_44

    if-eqz p1, :cond_44

    .line 345
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isTspNoteMode()Z

    move-result v0

    .line 347
    iget-boolean v5, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    if-eq v5, v0, :cond_44

    .line 348
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    move-object v2, v3

    :goto_40
    const/4 v0, 0x6

    .line 349
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfs(Ljava/lang/String;I)V

    .line 353
    :cond_44
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_49

    return-void

    .line 357
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    if-eqz p1, :cond_a1

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->isSystemWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 364
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_71

    const-string v2, "com.sec.android."

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string v2, "com.samsung."

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_72

    :cond_71
    move v1, v4

    :cond_72
    :goto_72
    move v4, v1

    goto :goto_75

    :cond_74
    move v4, v0

    :goto_75
    if-nez v4, :cond_90

    .line 371
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_USE_SMALLER_GRIPZONE_ON_GAME:Z

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->isForegroundGame()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    goto :goto_90

    .line 374
    :cond_89
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    .line 378
    :cond_90
    :goto_90
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)Z

    .line 384
    :cond_a1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_ce

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWindowPolicy focusedWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isDeviceDefault="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", command="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TspStateManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_ce
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V

    return-void
.end method

.method public updateWindowsPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 4

    if-eqz p2, :cond_b

    if-ne p2, p3, :cond_5

    goto :goto_b

    :cond_5
    if-ne p2, p1, :cond_1c

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    goto :goto_1c

    .line 281
    :cond_b
    :goto_b
    iget-boolean p2, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    if-ne p2, p1, :cond_17

    .line 282
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TspStateController;->updateImePolicy(Lcom/android/server/wm/WindowState;)V

    goto :goto_1c

    :cond_17
    if-eqz p1, :cond_1c

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final writeTspCommandToSysfs(Ljava/lang/String;I)V
    .registers 5

    .line 598
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TspStateController;ILjava/lang/String;)V

    const-string/jumbo p0, "tspStateManager"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
