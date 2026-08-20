.class public Lcom/android/server/am/FreecessTrigger;
.super Ljava/lang/Object;
.source "FreecessTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;
    }
.end annotation


# static fields
.field public static final ACTION_SMARTSWITCH_FINISHED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

.field public static final ACTION_SMARTSWITCH_ONGOING:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

.field public static final ACTION_SMARTSWITCH_STARTED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

.field public static final SCPM_BROADCAST_MESSAGE_FREECESS:Ljava/lang/String; = "sec.app.policy.UPDATE.ssrm_update_freecess"

.field public static TAG:Ljava/lang/String; = "FreecessTrigger"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIntentReceiverForBird:Landroid/content/BroadcastReceiver;

.field public mIsRegisteredReceiverForBird:Z

.field public final mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mSmartSwitchIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsRegisteredReceiverForBird(Lcom/android/server/am/FreecessTrigger;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForBird:Z

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForBird:Z

    .line 87
    new-instance v0, Lcom/android/server/am/FreecessTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$1;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$2;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v0, Lcom/android/server/am/FreecessTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$3;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/android/server/am/FreecessTrigger$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$4;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/FreecessTrigger-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/FreecessTrigger;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/FreecessTrigger;
    .registers 1

    .line 38
    invoke-static {}, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessTrigger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/android/server/am/FreecessTrigger;->unregisterReceiver()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/android/server/am/FreecessTrigger;->registerReceiver()V

    return-void
.end method

.method public registerReceiver()V
    .registers 10

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "sec.app.policy.UPDATE.ssrm_update_freecess"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 62
    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 66
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 67
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.wssnps.permission.COM_WSSNPS"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public registerReceiverForBird()V
    .registers 4

    .line 182
    iget-boolean v0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForBird:Z

    if-eqz v0, :cond_5

    return-void

    .line 184
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1e
    const/16 v1, 0x3e8

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 190
    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForBird:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_45

    :catch_2e
    move-exception p0

    .line 193
    sget-object v0, Lcom/android/server/am/FreecessTrigger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception registerReceiverForBird "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method public unregisterReceiver()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iget-boolean v0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForBird:Z

    if-eqz v0, :cond_15

    .line 82
    iget-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForBird:Z

    :cond_15
    return-void
.end method
