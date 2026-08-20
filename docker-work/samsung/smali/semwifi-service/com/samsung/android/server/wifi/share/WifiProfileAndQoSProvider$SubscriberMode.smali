.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
.super Lcom/android/internal/util/StateMachine;
.source "WifiProfileAndQoSProvider.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubscriberMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;
    }
.end annotation


# static fields
.field static final CMD_CLEAR_CACHED_SCORES:I = 0xe

.field static final CMD_QOS_POLL:I = 0x3

.field static final CMD_REQ_PASSWORD:I = 0x5

.field static final CMD_REQ_PASSWORD_TIMEOUT:I = 0xa

.field static final CMD_REQ_QOS:I = 0x4

.field static final CMD_REQ_QOS_TIMEOUT:I = 0x8

.field static final CMD_SCORE_RECOMMENDATION_SETTING_CHANGED:I = 0xc

.field static final CMD_START:I = 0x1

.field static final CMD_STOP:I = 0x2

.field static final CMD_STOP_REQ_PASSWORD:I = 0x6

.field static final CMD_UNBIND_MCF_SERVICE:I = 0xb

.field static final CMD_WIFI_STATE_CHANGED:I = 0x9

.field static final EVENT_MCF_FOUND_DEVICE:I = 0x17

.field static final EVENT_MCF_RESP_PASSWORD:I = 0x14

.field static final EVENT_MCF_RESP_SCORE:I = 0x15

.field static final EVENT_MCF_SERVICE_CONNECTED:I = 0x16

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.Sub"


# instance fields
.field private final mCache:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDeviceIdleState:Lcom/android/internal/util/State;

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

.field private mLastRequestedBssid:Ljava/lang/String;

.field private mLastRequestedConfigKey:Ljava/lang/String;

.field private final mPasswordReqState:Lcom/android/internal/util/State;

.field private final mQoSReqState:Lcom/android/internal/util/State;

.field private mRetryCount:I

.field private final mSubscriberCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;


# direct methods
.method public static synthetic $r8$lambda$VYsAO_sXaswokKB-Ia7uTJpGIP4(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->lambda$start$0(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCache(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mCache:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mDefaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceIdleState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mDeviceIdleState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastRequestedBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRequestedConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastRequestedConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordReqState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mPasswordReqState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQoSReqState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mQoSReqState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriberCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mSubscriberCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastPasswordCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastRequestedBssid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRequestedConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastRequestedConfigKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackToClient(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->callbackToClient(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackToClient(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->callbackToClient(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckConditions(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->checkConditions()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;)V
    .registers 9

    .line 1363
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const-string p1, "WifiProfileShare.Sub"

    .line 1364
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1348
    new-instance p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mDefaultState:Lcom/android/internal/util/State;

    .line 1349
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mDeviceIdleState:Lcom/android/internal/util/State;

    .line 1350
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$QoSRequestedState-IA;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mQoSReqState:Lcom/android/internal/util/State;

    .line 1351
    new-instance v2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState-IA;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mPasswordReqState:Lcom/android/internal/util/State;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    .line 1354
    const-class v3, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/4 v4, 0x0

    aput-object v3, p2, v4

    .line 1355
    invoke-static {p2}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mGetWhatToString:Landroid/util/SparseArray;

    .line 1866
    new-instance p2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mSubscriberCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 1365
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mCache:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    .line 1368
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->addState(Lcom/android/internal/util/State;)V

    .line 1369
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1370
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1371
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1374
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 p1, 0x20

    .line 1375
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setLogRecSize(I)V

    .line 1376
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V

    return-void
.end method

.method private callbackToClient(Z)V
    .registers 4

    .line 1445
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    if-eqz v0, :cond_15

    :try_start_4
    const-string v0, "WifiProfileShare.Sub"

    const-string v1, "found and connected device for password"

    .line 1447
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback;->onAvailable(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p0

    .line 1450
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    :goto_15
    return-void
.end method

.method private callbackToClient(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1456
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    if-eqz v0, :cond_2c

    :try_start_4
    const-string v0, "WifiProfileShare.Sub"

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response from other device. accept:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_22

    .line 1460
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback;->onAccepted(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 1462
    :cond_22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback;->onRejected(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 1465
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private checkConditions()Z
    .registers 4

    .line 1471
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misKeyguardLocked(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiProfileShare.Sub"

    if-eqz v0, :cond_11

    const-string p0, "device is locked"

    .line 1472
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1475
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mgetUltraPowerSaveEnabledFromProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "emergency mode enabled"

    .line 1476
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1479
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSamsungNetworkScore()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v0

    .line 1480
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportWifiProfileRequest()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string p0, "feature is disabled"

    .line 1481
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1485
    :cond_3d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$start$0(II)V
    .registers 5

    const/16 p2, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    .line 1386
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(II)V

    goto :goto_13

    :cond_a
    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    :cond_f
    const/4 p1, 0x0

    .line 1389
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(II)V

    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method asyncClearCachedNetworkScores()V
    .registers 2

    const/16 v0, 0xe

    .line 1407
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    return-void
.end method

.method asyncRegisterPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)Z
    .registers 6

    const-string v0, "WifiProfileShare.Sub"

    if-eqz p2, :cond_2a

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user try to connect network for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    const/4 p2, 0x5

    .line 1414
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    const-string p0, "failed to request password, callback is null"

    .line 1417
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method asyncRequestPassword(Z)V
    .registers 4

    const-string v0, "WifiProfileShare.Sub"

    if-eqz p1, :cond_a

    const-string v1, "user want to request to share network"

    .line 1430
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_a
    const-string v1, "stop to request to share network"

    .line 1432
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    const/4 v0, 0x5

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x2

    :goto_15
    const/4 v1, 0x0

    .line 1434
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(III)V

    return-void
.end method

.method asyncUnregisterPasswordCallback()V
    .registers 3

    const-string v0, "WifiProfileShare.Sub"

    const-string v1, "cancel to request password"

    .line 1423
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1424
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mLastPasswordCallback:Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    const/4 v0, 0x6

    .line 1425
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3

    .line 1503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 1508
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 1512
    :cond_b
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onFailedToBindService()V
    .registers 4

    .line 1496
    iget v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_f

    const-wide/16 v0, 0x1388

    const/4 v2, 0x1

    .line 1497
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IJ)V

    :cond_f
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    const/16 v0, 0x16

    .line 1490
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    const/4 v0, 0x0

    .line 1491
    iput v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mRetryCount:I

    return-void
.end method

.method setEnableSubscriber(Z)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1395
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setEnableSubscriber(ZJ)V

    return-void
.end method

.method setEnableSubscriber(ZJ)V
    .registers 4

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 1400
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IJ)V

    goto :goto_b

    :cond_7
    const/4 p1, 0x2

    .line 1402
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    :goto_b
    return-void
.end method

.method public start()V
    .registers 3

    .line 1381
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 1383
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    return-void
.end method

.method syncGetQoSScores(Ljava/util/List;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x4

    .line 1439
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    .line 1441
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->mCache:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->getScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
