.class public Lcom/samsung/android/server/wifi/share/mcf/McfController;
.super Ljava/lang/Object;
.source "McfController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.MCF"


# instance fields
.field private final mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

.field private mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field private final mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

.field private final mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 42
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 245
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 52
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 53
    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    return-void
.end method

.method private isValidPasswordData(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isValidQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    move-result-object p0

    const/4 p1, 0x3

    aget-byte p0, p0, p1

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private stopScanForPasswordIfRunning()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledSharingPassword()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForPassword()V

    :cond_d
    return-void
.end method

.method private stopScanForQosIfRunning()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledQoSSharing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForQoS()V

    :cond_d
    return-void
.end method

.method private updatePasswordData(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)Z"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledSharingPassword()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->updatePasswordDate(Ljava/util/List;)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bindMcfService(Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)Z
    .registers 3

    .line 61
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mListener:Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isServiceBound()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    .line 66
    :cond_a
    :try_start_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    invoke-static {p1, p0}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_15

    if-eqz p0, :cond_19

    return v0

    :catch_15
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    const-string p0, "WifiProfileShare.MCF"

    const-string p1, "failed to bind mcf service"

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public checkAndUpdatePasswordData(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;",
            "Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;",
            ")V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isBleActivated()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "WifiProfileShare.MCF"

    const-string p1, "failed to update password data, not opened"

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidPasswordData(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopScanForPasswordIfRunning()V

    return-void

    .line 110
    :cond_1a
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->updatePasswordData(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForPassword(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V

    :cond_25
    return-void
.end method

.method public checkAndUpdateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isBleActivated()Z

    move-result v0

    const-string v1, "WifiProfileShare.MCF"

    if-nez v0, :cond_10

    const-string p0, "Fail update QosData, inactive state"

    .line 139
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p1, "stop sharing QosData, invalid data"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopScanForQosIfRunning()V

    return-void

    :cond_1f
    const/4 v0, 0x1

    .line 148
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isEnabledQoSSharing()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 149
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->updateQoSData([B)Z

    move-result v0

    goto :goto_38

    .line 151
    :cond_33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    :goto_38
    if-eqz v0, :cond_3f

    const-string p0, "success update QosData !"

    .line 154
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void
.end method

.method public clearUserRequestPasswordHistory()V
    .registers 3

    const-string v0, "WifiProfileShare.MCF"

    const-string v1, "clearUserConfirmHistory "

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->clearUserRequestPasswordHistory()V

    return-void
.end method

.method public isLowLatencyForCasterPasswordShare()Z
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isLowLatencyForPasswordShare()Z

    move-result p0

    return p0
.end method

.method public isLowLatencyForSubscriberPasswordScan()Z
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isLowLatencyForPasswordScan()Z

    move-result p0

    return p0
.end method

.method public isLowLatencyForSubscriberQoSScan()Z
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isLowLatencyForQoSScan()Z

    move-result p0

    return p0
.end method

.method public isServiceBound()Z
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public setScanMode(ZZZ)V
    .registers 6

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScanModeToLowLatency isLowLatencyForCasterPassword : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subsQosLatency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subsPassLatency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.MCF"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->setScanMode(Z)V

    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->setScanMode(ZZ)V

    return-void
.end method

.method public setUserConfirm(ZLjava/lang/String;)V
    .registers 3

    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendPasswordData(ZLjava/lang/String;)V

    return-void
.end method

.method public startCaster(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;",
            "Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;",
            ")Z"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isBleActivated()Z

    move-result v0

    if-nez v0, :cond_11

    const-string p0, "WifiProfileShare.MCF"

    const-string p1, "failed to start caster, not opened"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 92
    :cond_11
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 95
    :cond_1c
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isValidPasswordData(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startScanForPassword(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public startSubscriberForPassword()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->postStartScanForPassword(Z)V

    goto :goto_16

    :cond_f
    const-string p0, "WifiProfileShare.MCF"

    const-string v0, "failed to start subscriber for password"

    .line 204
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method public startSubscriberForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)Z
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 193
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->preStartScanForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const-string p0, "WifiProfileShare.MCF"

    const-string p1, "startSubscriberForPassword failed"

    .line 196
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public startSubscriberForQoS(Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)Z
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    move-result v0

    const-string v1, "WifiProfileShare.MCF"

    if-eqz v0, :cond_16

    const-string v0, "startSubscriberForQoS"

    .line 179
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_16
    const-string p0, "startSubscriberForQoS failed"

    .line 183
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public stopAllCasterMode()V
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mCasterManager:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopAll()V

    return-void
.end method

.method public stopPostAdvertise()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopPostAdvertise()V

    goto :goto_15

    :cond_e
    const-string p0, "WifiProfileShare.MCF"

    const-string v0, "skip to stop post advertise packet, not opened"

    .line 220
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public stopSubscriberModeForPassword()V
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isBleActivated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 210
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAll()V

    goto :goto_15

    :cond_e
    const-string p0, "WifiProfileShare.MCF"

    const-string v0, "skip to stop subscriber for password, not opened"

    .line 212
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public stopSubscriberModeForQoS()V
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mSubscriberManager:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAll()V

    return-void
.end method

.method public unbindMcfService()V
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    :cond_e
    return-void
.end method
