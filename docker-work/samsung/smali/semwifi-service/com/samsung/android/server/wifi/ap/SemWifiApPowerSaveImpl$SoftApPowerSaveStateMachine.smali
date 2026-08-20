.class Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SemWifiApPowerSaveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApPowerSaveStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveAggressiveState;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveState;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyThreeState;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyOneState;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;
    }
.end annotation


# static fields
.field public static final CMD_AP_DISABLED:I = 0x4

.field public static final CMD_LCD_OFF:I = 0x6

.field public static final CMD_LCD_ON:I = 0x5

.field public static final CMD_MAX_CLIENTS_CONNECTED:I = 0x8

.field public static final CMD_NUM_ASSOCIATED_STATIONS_CHANGED:I = 0x3

.field public static final CMD_PLUGGED_IN:I = 0x2

.field public static final CMD_PLUGGED_OUT:I = 0x1

.field public static final CMD_TIMEOUT:I = 0x0

.field public static final CMD_TIMEOUT_PACKET_CHECK:I = 0x7


# instance fields
.field private NumOfClientsConnected:I

.field private mApInterfaceName:Ljava/lang/String;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mElnaEnable:Z

.field private mGetTime:Ljava/lang/String;

.field private mPacketScheduled:Z

.field private final mPowerSaveAggressiveState:Lcom/android/internal/util/State;

.field private final mPowerSaveNoBeaconModeState:Lcom/android/internal/util/State;

.field private final mPowerSaveState:Lcom/android/internal/util/State;

.field private final mReadyOneState:Lcom/android/internal/util/State;

.field private final mReadyThreeState:Lcom/android/internal/util/State;

.field private final mReadyTwoState:Lcom/android/internal/util/State;

.field private mSoftApPacketCheckTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mStateScheduled:Z

.field private mTempClientsConnected:I

.field private mTimeofPowersave:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->NumOfClientsConnected:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmElnaEnable(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mElnaEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGetTime(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mGetTime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPacketScheduled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerSaveAggressiveState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPowerSaveAggressiveState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerSaveState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPowerSaveState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadyOneState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mReadyOneState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadyThreeState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mReadyThreeState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadyTwoState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mReadyTwoState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApPacketCheckTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApPacketCheckTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mStateScheduled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTempClientsConnected:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->NumOfClientsConnected:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmElnaEnable(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mElnaEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGetTime(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mGetTime:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPacketScheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mStateScheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTempClientsConnected:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeofPowersave(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTimeofPowersave:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPsTimeFuntion(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->getPsTimeFuntion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mquitStateMachine(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->quitStateMachine()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBigdataForHotspotPowerSave(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->sendBigdataForHotspotPowerSave(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Ljava/lang/String;)V
    .registers 12

    .line 512
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 513
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "SemWifiApPowerSaveImpl"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 338
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApPacketCheckTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    const/4 v1, 0x0

    .line 339
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mStateScheduled:Z

    .line 340
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mElnaEnable:Z

    .line 341
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPacketScheduled:Z

    const-wide/16 v2, 0x0

    .line 342
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTimeofPowersave:J

    .line 343
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mGetTime:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mApInterfaceName:Ljava/lang/String;

    .line 345
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->NumOfClientsConnected:I

    .line 346
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTempClientsConnected:I

    .line 358
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$DefaultState-IA;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 359
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyOneState;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyOneState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyOneState-IA;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mReadyOneState:Lcom/android/internal/util/State;

    .line 360
    new-instance v4, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyTwoState-IA;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mReadyTwoState:Lcom/android/internal/util/State;

    .line 361
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyThreeState;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyThreeState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$ReadyThreeState-IA;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mReadyThreeState:Lcom/android/internal/util/State;

    .line 362
    new-instance v6, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveState;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveState-IA;)V

    iput-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPowerSaveState:Lcom/android/internal/util/State;

    .line 363
    new-instance v7, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveAggressiveState;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveAggressiveState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveAggressiveState-IA;)V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPowerSaveAggressiveState:Lcom/android/internal/util/State;

    .line 364
    new-instance v8, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;

    invoke-direct {v8, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$PowerSaveNoBeaconModeState-IA;)V

    iput-object v8, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPowerSaveNoBeaconModeState:Lcom/android/internal/util/State;

    .line 514
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 515
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 516
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 517
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 518
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 519
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 520
    invoke-virtual {p0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->addState(Lcom/android/internal/util/State;)V

    const/16 v0, 0x64

    .line 521
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->setLogRecSize(I)V

    .line 522
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 523
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_7b

    .line 526
    :cond_78
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 528
    :goto_7b
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mApInterfaceName:Ljava/lang/String;

    .line 529
    new-instance p2, Lcom/android/internal/util/WakeupMessage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetSOFT_AP_SEND_MESSAGE_TIMEOUT_TAG(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v2, v3, v1}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 531
    new-instance p2, Lcom/android/internal/util/WakeupMessage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetSOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x7

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApPacketCheckTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)Z
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->removeMessages(I)V

    return-void
.end method

.method private forBigdataOfPSTime(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    const-string p0, "ReadyOneState"

    .line 402
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-wide/16 p0, 0x78

    goto :goto_d

    :cond_b
    const-wide/16 p0, 0x18

    .line 405
    :goto_d
    div-long/2addr p2, p0

    const-wide/16 p0, 0x5

    cmp-long p0, p2, p0

    if-ltz p0, :cond_17

    const-string p0, "5"

    return-object p0

    .line 406
    :cond_17
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPsTimeCal(I)I
    .registers 2

    const/16 p0, 0x2d0

    if-lt p1, p0, :cond_5

    return p0

    :cond_5
    return p1
.end method

.method private getPsTimeCalForRatio(II)I
    .registers 3

    mul-int/lit8 p2, p2, 0x64

    .line 411
    div-int/2addr p2, p1

    return p2
.end method

.method private getPsTimeFuntion()V
    .registers 9

    const-string v0, " "

    .line 416
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v1

    if-eqz v1, :cond_e1

    .line 417
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmStartTimeOfHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e1

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmStartTimeOfHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 420
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mGetTime:Ljava/lang/String;

    if-eqz v2, :cond_e1

    if-eqz v1, :cond_e1

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mGetTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mGetTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApPowerSaveImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mGetTime:Ljava/lang/String;

    const-string v4, "=|\\s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    if-le v1, v4, :cond_e1

    const/4 v4, 0x3

    .line 424
    :try_start_59
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_e1

    const/4 v5, 0x5

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_e1

    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x64

    if-gt v6, v7, :cond_e1

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v7, :cond_7d

    goto :goto_e1

    .line 425
    :cond_7d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->getPsTimeCalForRatio(II)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->getPsTimeCalForRatio(II)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeofPsBigdata : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Landroid/content/Context;

    const-string p0, "sem_wifi"

    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v1, "MHPT"

    .line 428
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_d5} :catch_dc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_d5} :catch_d6

    goto :goto_e1

    :catch_d6
    const-string p0, "ArrayIndexOutOfBoundsException occurs"

    .line 433
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_dc
    const-string p0, "NumberFormatException occurs"

    .line 430
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    :goto_e1
    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .registers 5

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApPowerSaveImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private quitStateMachine()V
    .registers 1

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->quitNow()V

    return-void
.end method

.method private sendBigdataForHotspotPowerSave(Ljava/lang/String;)V
    .registers 8

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 391
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sem_wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 392
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTimeofPowersave:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS logging for powersavemode mTimeofPowersave :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTimeofPowersave:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " realUsedTimeOfMhsPowerSave :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds mStateOfPowersave : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWifiApPowerSaveImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->forBigdataOfPSTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MHPS"

    .line 396
    invoke-virtual {v2, p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 4

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->printTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget p0, p1, Landroid/os/Message;->what:I

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onQuitting()V
    .registers 4

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQuitting StateMachine instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApPowerSaveImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 370
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mSoftApPacketCheckTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 371
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmStateMachineMap(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mApInterfaceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mTempClientsConnected:I

    .line 374
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->NumOfClientsConnected:I

    .line 375
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mStateScheduled:Z

    .line 376
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mElnaEnable:Z

    .line 377
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->mPacketScheduled:Z

    return-void
.end method

.method printTime()Ljava/lang/String;
    .registers 3

    .line 446
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " rt="

    .line 447
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    .line 448
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method smToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_34

    .line 507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :pswitch_19
    const-string p0, "CMD_MAX_CLIENTS_CONNECTED"

    goto :goto_33

    :pswitch_1c
    const-string p0, "CMD_TIMEOUT_PACKET_CHECK"

    goto :goto_33

    :pswitch_1f
    const-string p0, "CMD_LCD_OFF"

    goto :goto_33

    :pswitch_22
    const-string p0, "CMD_LCD_ON"

    goto :goto_33

    :pswitch_25
    const-string p0, "CMD_AP_DISABLED"

    goto :goto_33

    :pswitch_28
    const-string p0, "CMD_NUM_ASSOCIATED_STATIONS_CHANGED"

    goto :goto_33

    :pswitch_2b
    const-string p0, "CMD_PLUGGED_IN"

    goto :goto_33

    :pswitch_2e
    const-string p0, "CMD_PLUGGED_OUT"

    goto :goto_33

    :pswitch_31
    const-string p0, "CMD_TIMEOUT"

    :goto_33
    return-object p0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 2

    .line 474
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
