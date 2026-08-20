.class public Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;
.super Ljava/lang/Object;
.source "SemWifiApPowerSaveImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;
    }
.end annotation


# static fields
.field public static final ACTION_SCREEN_OFF_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

.field public static final ACTION_SCREEN_ON_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

.field public static final CMD_QUIT_STATE_MACHINE:I = 0x65

.field public static final CMD_START_STATE_MACHINE:I = 0x64

.field private static final MHSDBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiApPowerSaveImpl"


# instance fields
.field private SOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

.field private SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsEnabledSoftAp:Z

.field private mIsLcdOn:Z

.field private mMaxClient:I

.field private mPowerSaveChecked:I

.field private mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

.field private mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private final mSoftApReceiver:Landroid/content/BroadcastReceiver;

.field private final mSoftApReceiverFilter:Landroid/content/IntentFilter;

.field private mStartTimeOfHotspot:J

.field private mStateMachineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mUSBpuggedin:Z

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$dzGXTZFyKGOkwlCWSXYJgmsuwWQ(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetSOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetSOFT_AP_SEND_MESSAGE_TIMEOUT_TAG(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabledSoftAp(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsEnabledSoftAp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLcdOn(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxClient(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerSaveChecked(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTimeOfHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStartTimeOfHotspot:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachineMap(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBpuggedin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabledSoftAp(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsEnabledSoftAp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLcdOn(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTimeOfHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStartTimeOfHotspot:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBpuggedin:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMaxClient(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->checkMaxClient()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->MHSDBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->MHSDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/HashMap;

    const-string v1, "SemWifiApPowerSaveImpl Soft AP Send Message Timeout"

    .line 61
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    const-string v1, "SemWifiApPowerSaveImpl Soft AP Packet check Send Message Timeout"

    .line 63
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStartTimeOfHotspot:J

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsEnabledSoftAp:Z

    .line 83
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 84
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 114
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void
.end method

.method private checkMaxClient()V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_b

    .line 323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    if-eqz v2, :cond_b

    .line 325
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmTempClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    .line 329
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMaxClient totalNoOfClients: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mMaxClient: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiApPowerSaveImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    if-ne v1, v0, :cond_50

    const/16 v0, 0x8

    .line 331
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    :cond_50
    return-void
.end method

.method private cmdToString(I)Ljava/lang/String;
    .registers 2

    const/16 p0, 0x64

    if-eq p1, p0, :cond_e

    const/16 p0, 0x65

    if-eq p1, p0, :cond_b

    const-string p0, "POWER_STATE_MACHINE_STATE_COMMANDS"

    goto :goto_10

    :cond_b
    const-string p0, "CMD_QUIT_STATE_MACHINE"

    goto :goto_10

    :cond_e
    const-string p0, "CMD_START_STATE_MACHINE"

    :goto_10
    return-object p0
.end method

.method private isPlugged(Landroid/content/Context;)Z
    .registers 3

    .line 234
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "plugged"

    const/4 v0, -0x1

    .line 235
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 239
    :cond_1e
    :goto_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iisPlugged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApPowerSaveImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 115
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    const-string v0, "SemWifiApPowerSaveImpl"

    if-eqz p1, :cond_10

    const-string p1, "Lcd ON"

    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    goto :goto_19

    :cond_10
    const-string p1, "Lcd OFF"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    :goto_19
    return-void
.end method

.method private sendMessage(I)V
    .registers 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->cmdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApPowerSaveImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_24

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    if-eqz v0, :cond_24

    const/16 v1, 0x64

    if-eq p1, v1, :cond_4a

    const/16 v1, 0x65

    if-eq p1, v1, :cond_46

    .line 158
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->sendMessage(I)V

    goto :goto_24

    .line 155
    :cond_46
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->quitNow()V

    goto :goto_24

    :cond_4a
    const/4 v1, 0x0

    .line 149
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 150
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmPacketScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 151
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmElnaEnable(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->start()V

    goto :goto_24

    :cond_58
    return-void
.end method


# virtual methods
.method public registerSoftApCallback(Ljava/lang/String;I)V
    .registers 6

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSoftApCallback with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Max clients"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApPowerSaveImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    .line 246
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 247
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_6c

    .line 248
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "wifi_ap_powersave_mode_checked"

    const/16 v2, 0xa

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    if-ne p2, v2, :cond_47

    .line 250
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 253
    :cond_47
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 254
    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    .line 255
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    invoke-virtual {p2, v0, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 257
    :cond_6c
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    if-eqz p2, :cond_b1

    if-nez p1, :cond_73

    goto :goto_b1

    .line 262
    :cond_73
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_ab

    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->isPlugged(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBpuggedin:Z

    .line 264
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-nez p1, :cond_8b

    const/4 p1, 0x0

    goto :goto_8f

    .line 265
    :cond_8b
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    :goto_8f
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 270
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    const-string v0, "swlan0"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x64

    .line 272
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 273
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_ab
    const-string p0, "registerSoftApCallback end"

    .line 275
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b1
    :goto_b1
    const-string p0, "PowerSaveMode is not enabled"

    .line 258
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterSoftApCallback()V
    .registers 6

    const-string v0, "SemWifiApPowerSaveImpl"

    const-string v1, "unregisterSoftApCallback"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    const-string v2, "Error: "

    if-eqz v1, :cond_40

    .line 280
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v3, 0xa

    const-string v4, "wifi_ap_powersave_mode_checked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 281
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 283
    :try_start_27
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_40

    :catch_2d
    move-exception v1

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    const/4 v1, 0x0

    .line 288
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    .line 289
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    if-nez v1, :cond_4d

    const-string p0, "PowerSaveMode is not enabled"

    .line 290
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6a

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_56} :catch_57

    goto :goto_6a

    :catch_57
    move-exception v1

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    const/16 v0, 0x65

    .line 300
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    return-void
.end method
