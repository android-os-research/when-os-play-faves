.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;
.super Ljava/lang/Object;
.source "SemSupplicantP2pIfaceHalHidlImpl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/p2p/ISemSupplicantP2pIfaceHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;,
        Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;
    }
.end annotation


# static fields
.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceHalHidlImpl"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private mCallback:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

.field private mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

.field private mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

.field private mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private mSehCallback:Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;

.field private final mSehSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

.field private final mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$D0WD46-clmcbMMKamAZdCtNXb-0(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->lambda$getIfaceV1_0$4(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ftf8FzYea7PJjxmhbczpsANcU1g(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->lambda$new$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YhIs0z0J33Y4tGJ1KX_tPzah-UQ(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->lambda$new$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJMJ4xJsLvcV7TxqLJxp1Xw8_fQ(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->lambda$new$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$q0_GiasIfv_l1eVvNl-ynTqYTDE(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->lambda$addSehIface$5(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$slZLeMmi-vdTIZfy_WI1QR5RBGc(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->lambda$getName$6(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xA5PoHWLhCWqwc6HC6t6MTZgw7Q(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->lambda$getIfaceV1_0$3(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitSehSupplicantService(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->initSehSupplicantService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitSupplicantService(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->initSupplicantService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msehSupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msupplicantServiceDiedHandler(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsVerboseLoggingEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sVerboseLoggingEnabled:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .registers 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    .line 66
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$1;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 89
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 97
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 104
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSehSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 113
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mCallback:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    .line 114
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSehCallback:Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;

    .line 117
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-void
.end method

.method private addSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;
    .registers 6

    .line 402
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    new-instance v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;

    invoke-direct {v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;-><init>()V

    .line 404
    iput-object p1, v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 405
    iput p1, v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;->type:I

    .line 406
    new-instance p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_7f

    const/4 v2, 0x0

    .line 408
    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object v3

    if-nez v3, :cond_22

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "ISehSupplicant.addInterface getSehSupplicantMockable is null"

    .line 409
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_20} :catch_66
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_20} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_20} :catch_34
    .catchall {:try_start_13 .. :try_end_20} :catchall_7f

    .line 410
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_7f

    return-object v2

    .line 412
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object p0

    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p0, v1, v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;->addInterface(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$IfaceInfo;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$addInterfaceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2e} :catch_66
    .catch Ljava/util/NoSuchElementException; {:try_start_22 .. :try_end_2e} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2e} :catch_34
    .catchall {:try_start_22 .. :try_end_2e} :catchall_7f

    .line 434
    :try_start_2e
    iget-object p0, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;

    monitor-exit v0

    return-object p0

    :catch_34
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehSupplicant.addInterface exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-exit v0

    return-object v2

    :catch_4d
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehSupplicant.addInterface exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    monitor-exit v0

    return-object v2

    :catch_66
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehSupplicant.addInterface exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit v0

    return-object v2

    :catchall_7f
    move-exception p0

    .line 435
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_2e .. :try_end_81} :catchall_7f

    throw p0
.end method

.method private checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .registers 3

    .line 608
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    if-nez p0, :cond_21

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t call "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ISehSupplicantP2pIface is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method private checkSupplicantIfaceAndLogFailure(Ljava/lang/String;)Z
    .registers 3

    .line 586
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez p0, :cond_21

    .line 587
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t call "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ISupplicant is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method private checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .registers 3

    .line 597
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-nez p0, :cond_21

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t call "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ISupplicantP2pIface is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 140
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sVerboseLoggingEnabled:Z

    .line 141
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->enableVerboseLogging(Z)V

    .line 142
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->enableVerboseLogging(Z)V

    return-void
.end method

.method private getIfaceV1_0(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;
    .registers 9

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 354
    :try_start_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v4, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_70

    .line 366
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_21

    const-string p1, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    .line 367
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    return-object v2

    .line 371
    :cond_21
    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;

    const-string v4, "getInterface()"

    invoke-direct {v3, v4}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    .line 374
    iget v5, v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    iget-object v5, v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 376
    :try_start_45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;)V

    invoke-interface {p1, v4, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4f} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_69

    :catch_50
    move-exception p1

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicant.getInterface exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    return-object v2

    .line 392
    :cond_69
    :goto_69
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    return-object p0

    :catch_70
    move-exception p0

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISupplicant.listInterfaces exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private initSehSupplicantService()Z
    .registers 6

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 249
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_3b
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_a} :catch_22
    .catchall {:try_start_4 .. :try_end_a} :catchall_20

    if-nez v2, :cond_15

    :try_start_c
    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v2, "Got null ISehSupplicant service. Stopping supplicant HIDL startup"

    .line 258
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return v1

    .line 261
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->linkToSehSupplicantDeath()Z

    move-result p0

    if-nez p0, :cond_1d

    .line 262
    monitor-exit v0

    return v1

    .line 264
    :cond_1d
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_20
    move-exception p0

    goto :goto_54

    :catch_22
    move-exception p0

    const-string v2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehSupplicant.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v0

    return v1

    :catch_3b
    move-exception p0

    const-string v2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehSupplicant.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    monitor-exit v0

    return v1

    .line 264
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_c .. :try_end_55} :catchall_20

    throw p0
.end method

.method private initSupplicantService()Z
    .registers 6

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 213
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_22
    .catchall {:try_start_4 .. :try_end_a} :catchall_20

    if-nez v2, :cond_15

    :try_start_c
    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v2, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    .line 219
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    return v1

    .line 222
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->linkToSupplicantDeath()Z

    move-result p0

    if-nez p0, :cond_1d

    .line 223
    monitor-exit v0

    return v1

    .line 225
    :cond_1d
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_20
    move-exception p0

    goto :goto_3b

    :catch_22
    move-exception p0

    const-string v2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISupplicant.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-exit v0

    return v1

    .line 225
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_20

    throw p0
.end method

.method private static synthetic lambda$addSehIface$5(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V
    .registers 5

    .line 414
    iget v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    if-eqz v0, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    .line 417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create ISehSupplicantIface "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$getIfaceV1_0$3(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 4

    .line 356
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_1d

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_1d
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic lambda$getIfaceV1_0$4(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .registers 4

    .line 378
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_1d

    .line 379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get ISupplicantIface "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->setResult(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getName$6(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .registers 3

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->setResult(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(J)V
    .registers 6

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 93
    :try_start_19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    const/4 p2, 0x0

    .line 94
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 95
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private synthetic lambda$new$1(J)V
    .registers 6

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISupplicant/ISupplicantP2pIface died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 101
    :try_start_19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    .line 102
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private synthetic lambda$new$2(J)V
    .registers 6

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicant died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 108
    :try_start_19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 109
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private linkToSehSupplicantDeath()Z
    .registers 7

    .line 230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    return v2

    .line 233
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSehSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v3, "Error on linkToDeath on ISehSupplicant"

    .line 234
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1e} :catch_23
    .catchall {:try_start_a .. :try_end_1e} :catchall_2d

    .line 236
    :try_start_1e
    monitor-exit v0

    return v2

    :cond_20
    const/4 p0, 0x1

    .line 242
    monitor-exit v0

    return p0

    :catch_23
    move-exception p0

    const-string v1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v3, "ISehSupplicant.linkToDeath exception"

    .line 239
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    monitor-exit v0

    return v2

    :catchall_2d
    move-exception p0

    .line 243
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method private linkToSehSupplicantP2pIfaceDeath()Z
    .registers 7

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 269
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 271
    :cond_8
    :try_start_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSehSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "Error on linkToDeath on ISehSupplicantP2pIface"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1d

    return v2

    :cond_1b
    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception p0

    const-string v1, "ISehSupplicantP2pIface.linkToDeath exception"

    .line 277
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private linkToServiceManagerDeath()Z
    .registers 7

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 121
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 123
    :cond_8
    :try_start_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "Error on linkToDeath on IServiceManager"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_20

    return v2

    :cond_1e
    const/4 p0, 0x1

    return p0

    :catch_20
    move-exception p0

    const-string v1, "IServiceManager.linkToDeath exception"

    .line 130
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private linkToSupplicantDeath()Z
    .registers 7

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 196
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 198
    :cond_8
    :try_start_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "Error on linkToDeath on ISupplicant"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1d

    return v2

    :cond_1b
    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception p0

    const-string v1, "ISupplicant.linkToDeath exception"

    .line 204
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private linkToSupplicantP2pIfaceDeath()Z
    .registers 7

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 284
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 286
    :cond_8
    :try_start_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "Error on linkToDeath on ISupplicantP2pIface"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1d

    return v2

    :cond_1b
    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception p0

    const-string v1, "ISupplicantP2pIface.linkToDeath exception"

    .line 292
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method protected static logCompletion(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    .registers 4

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    if-nez p1, :cond_19

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: no status code returned."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 565
    :cond_19
    iget v1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_32

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " completed successfully."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    goto :goto_5a

    .line 568
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2

    .line 557
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 558
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;)Z
    .registers 7

    .line 666
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerSehCallback"

    .line 667
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 668
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    const-string v2, "registerSehCallback()"

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    .line 670
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_3f

    goto :goto_39

    :catch_1f
    move-exception p1

    :try_start_20
    const-string v2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISupplicantP2pIface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 675
    :goto_39
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3f
    move-exception p0

    .line 676
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method protected static sehLogCompletion(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    .registers 4

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    if-nez p1, :cond_19

    .line 574
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: no status code returned."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 575
    :cond_19
    iget v1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    if-nez v1, :cond_32

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " completed successfully."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    goto :goto_5a

    .line 578
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->code:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method private sehSupplicantServiceDiedHandler()V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 464
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    .line 465
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    .line 466
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static serviceDeclared()Z
    .registers 4

    const/4 v0, 0x0

    .line 494
    :try_start_1
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    if-eqz v1, :cond_12

    const-string v3, "default"

    .line 496
    invoke-interface {v1, v2, v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :catch_13
    const-string v1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v2, "Unable to check for existence of HIDL service."

    .line 499
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private supplicantServiceDiedHandler()V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 457
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 458
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 459
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method


# virtual methods
.method public find(II)Z
    .registers 9

    .line 725
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "find"

    .line 726
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ea

    const-string v1, "find"

    .line 727
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_ea

    :cond_16
    if-gez p1, :cond_30

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 732
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid timeout value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    monitor-exit v0

    return v2

    .line 735
    :cond_30
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;-><init>(Ljava/lang/String;)V

    .line 737
    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_ec

    if-nez p2, :cond_89

    .line 742
    :try_start_78
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {p2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->setResult(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 743
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->isSuccess()Z

    move-result p0
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_85} :catch_87
    .catchall {:try_start_78 .. :try_end_85} :catchall_ec

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_ec

    return p0

    :catch_87
    move-exception p1

    goto :goto_cb

    :cond_89
    const/16 p1, 0x64b

    if-ne p2, p1, :cond_9c

    .line 745
    :try_start_8d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 746
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    invoke-interface {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->findSocialChannel()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V

    goto :goto_e4

    :cond_9c
    const/16 p1, 0x3e8

    if-eq p2, p1, :cond_c0

    const/16 v1, 0x1770

    if-eq p2, v1, :cond_c0

    const/16 v1, 0x2af8

    if-ne p2, v1, :cond_a9

    goto :goto_c0

    :cond_a9
    if-lez p2, :cond_be

    const/16 p1, 0xa9

    if-gt p2, p1, :cond_be

    .line 750
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 751
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    invoke-interface {p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->findChannel(I)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_bd} :catch_87
    .catchall {:try_start_8d .. :try_end_bd} :catchall_ec

    goto :goto_e4

    .line 753
    :cond_be
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_ec

    return v2

    .line 748
    :cond_c0
    :goto_c0
    :try_start_c0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    div-int/2addr p2, p1

    invoke-interface {v1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->findChannel(I)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_ca} :catch_87
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_ec

    goto :goto_e4

    :goto_cb
    :try_start_cb
    const-string p2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantP2pIface exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 759
    :goto_e4
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 728
    :cond_ea
    :goto_ea
    monitor-exit v0

    return v2

    :catchall_ec
    move-exception p0

    .line 760
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_cb .. :try_end_ee} :catchall_ec

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .registers 7

    .line 621
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getName"

    .line 622
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 623
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;

    const-string v2, "getName()"

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_42

    .line 626
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    new-instance v3, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;)V

    invoke-interface {v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_20
    .catchall {:try_start_15 .. :try_end_1f} :catchall_42

    goto :goto_3a

    :catch_20
    move-exception v2

    :try_start_21
    const-string v3, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    .line 634
    :goto_3a
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_42
    move-exception p0

    .line 635
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_42

    throw p0
.end method

.method protected getP2pIfaceMockable(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
    .registers 2

    .line 547
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    move-result-object p0

    return-object p0
.end method

.method protected getP2pIfaceMockableV1_2()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;
    .registers 1

    .line 551
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_6
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;

    move-result-object p0

    return-object p0
.end method

.method protected getSehP2pIfaceMockable(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;
    .registers 2

    .line 541
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 542
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 543
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getSehSupplicantMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 535
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 536
    :try_start_3
    invoke-static {}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;->getService()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 537
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    return-object p0
.end method

.method protected getSupplicantMockable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    :try_start_0
    invoke-static {}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object p0
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v1, "Failed to get ISupplicant"

    .line 515
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSupplicantMockableV1_1()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;

    move-result-object p0
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    goto :goto_18

    :catch_d
    move-exception p0

    const-string v1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v2, "Failed to get ISupplicant"

    .line 527
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 528
    monitor-exit v0

    return-object p0

    .line 530
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_b

    throw p0
.end method

.method public initialize()Z
    .registers 9

    .line 152
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v1, "Registering ISupplicant service ready callback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v1, "Supplicant HAL already initialized."

    .line 155
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v0

    return v2

    :cond_1c
    const/4 v1, 0x0

    .line 160
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    .line 161
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 162
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    .line 163
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_76

    const/4 v3, 0x0

    .line 165
    :try_start_26
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    if-nez v4, :cond_37

    const-string v1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v2, "Failed to get HIDL Service Manager"

    .line 167
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_5a
    .catchall {:try_start_26 .. :try_end_35} :catchall_76

    .line 168
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_76

    return v3

    .line 170
    :cond_37
    :try_start_37
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->linkToServiceManagerDeath()Z

    move-result v4
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3b} :catch_5a
    .catchall {:try_start_37 .. :try_end_3b} :catchall_76

    if-nez v4, :cond_3f

    .line 171
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_76

    return v3

    .line 175
    :cond_3f
    :try_start_3f
    iget-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const-string v6, ""

    iget-object v7, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    if-nez v4, :cond_58

    const-string v2, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string v4, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant"

    .line 177
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_56} :catch_5a
    .catchall {:try_start_3f .. :try_end_56} :catchall_76

    .line 180
    :try_start_56
    monitor-exit v0

    return v3

    .line 185
    :cond_58
    monitor-exit v0

    return v2

    :catch_5a
    move-exception v1

    const-string v2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while trying to register a listener for ISupplicant service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    .line 191
    monitor-exit v0

    return v3

    :catchall_76
    move-exception p0

    .line 192
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_56 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public isInitializationComplete()Z
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicant:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicant:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant;

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 485
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isInitializationStarted()Z
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 475
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .registers 8

    .line 687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "Cannot parse peer mac address."

    .line 688
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 694
    :cond_f
    :try_start_f
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_74

    .line 700
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1a
    const-string v3, "p2pRemoveClient"

    .line 701
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    monitor-exit v2

    return v1

    .line 702
    :cond_24
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pRemoveClient("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_71

    .line 705
    :try_start_47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    .line 706
    invoke-interface {p1, v0, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->removeClient([BZ)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    .line 705
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_51
    .catchall {:try_start_47 .. :try_end_50} :catchall_71

    goto :goto_6b

    :catch_51
    move-exception p1

    :try_start_52
    const-string p2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehSupplicantP2pIface exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 711
    :goto_6b
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v2

    return p0

    :catchall_71
    move-exception p0

    .line 712
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_52 .. :try_end_73} :catchall_71

    throw p0

    :catch_74
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p2, "Peer mac address parse error."

    .line 696
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 771
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 772
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 774
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    const-string v2, "p2pSet"

    .line 775
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    monitor-exit v0

    return v1

    .line 776
    :cond_1c
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSet("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_69

    .line 779
    :try_start_3f
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_48} :catch_49
    .catchall {:try_start_3f .. :try_end_48} :catchall_69

    goto :goto_63

    :catch_49
    move-exception p1

    :try_start_4a
    const-string p2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehSupplicantP2pIface exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 784
    :goto_63
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_69
    move-exception p0

    .line 785
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z
    .registers 7

    .line 652
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "registerCallback"

    .line 653
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 654
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;

    const-string v2, "registerCallback()"

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    .line 656
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->setResult(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_3f

    goto :goto_39

    :catch_1f
    move-exception p1

    :try_start_20
    const-string v2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISupplicantP2pIface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->supplicantServiceDiedHandler()V

    .line 661
    :goto_39
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3f
    move-exception p0

    .line 662
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .registers 8

    .line 849
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setP2pIncBw"

    .line 850
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 851
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setP2pIncBw("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_63

    .line 854
    :try_start_39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    .line 855
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->setNoaBandwidth(Ljava/lang/String;ZI)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    .line 854
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_43
    .catchall {:try_start_39 .. :try_end_42} :catchall_63

    goto :goto_5d

    :catch_43
    move-exception p1

    :try_start_44
    const-string p2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 857
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantP2pIface exception: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 860
    :goto_5d
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_63
    move-exception p0

    .line 861
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .registers 8

    .line 834
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "setP2pNoa"

    .line 835
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 836
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setP2pNoa("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_63

    .line 839
    :try_start_39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->setNoa(Ljava/lang/String;ZI)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_43
    .catchall {:try_start_39 .. :try_end_42} :catchall_63

    goto :goto_5d

    :catch_43
    move-exception p1

    :try_start_44
    const-string p2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 841
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehSupplicantP2pIface exception: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 844
    :goto_5d
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_63
    move-exception p0

    .line 845
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public setupIface(Ljava/lang/String;)Z
    .registers 6

    .line 305
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    monitor-exit v0

    return v2

    .line 309
    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getIfaceV1_0(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    move-result-object v1

    if-nez v1, :cond_19

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "initSupplicantP2pIface got null iface"

    .line 311
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v0

    return v2

    .line 314
    :cond_19
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getP2pIfaceMockable(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->linkToSupplicantP2pIfaceDeath()Z

    move-result v1

    if-nez v1, :cond_27

    .line 316
    monitor-exit v0

    return v2

    .line 320
    :cond_27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->addSehIface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;

    move-result-object v1

    if-nez v1, :cond_36

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "setupIface got null sehIface"

    .line 322
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return v2

    .line 325
    :cond_36
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->getSehP2pIfaceMockable(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->linkToSehSupplicantP2pIfaceDeath()Z

    move-result v1

    if-nez v1, :cond_4b

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "linkToSehSupplicantP2pIfaceDeath failed"

    .line 327
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    monitor-exit v0

    return v2

    .line 331
    :cond_4b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    if-eqz v1, :cond_87

    .line 332
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-direct {v1, p1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mCallback:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    .line 333
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "Callback registration failed. Initialization incomplete."

    .line 334
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    monitor-exit v0

    return v2

    .line 337
    :cond_6b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    if-eqz v1, :cond_87

    .line 338
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-direct {v1, p1, v3}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mSehCallback:Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;

    .line 340
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->registerSehCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;)Z

    move-result p0

    if-nez p0, :cond_87

    const-string p0, "SemSupplicantP2pIfaceHalHidlImpl"

    const-string p1, "Callback registration failed. Initialization incomplete."

    .line 341
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    monitor-exit v0

    return v2

    :cond_87
    const/4 p0, 0x1

    .line 346
    monitor-exit v0

    return p0

    :catchall_8a
    move-exception p0

    .line 347
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_3 .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public startP2pListenOffloading(IIII)Z
    .registers 9

    .line 794
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "startP2pListenOffloading"

    .line 795
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 797
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startP2pListenOffloading("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_6b

    .line 801
    :try_start_41
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    .line 802
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->startListenOffloading(IIII)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p1

    .line 801
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_4b
    .catchall {:try_start_41 .. :try_end_4a} :catchall_6b

    goto :goto_65

    :catch_4b
    move-exception p1

    :try_start_4c
    const-string p2, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 805
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ISehSupplicantP2pIface exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 808
    :goto_65
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_6b
    move-exception p0

    .line 809
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_4c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public stopP2pListenOffloading()Z
    .registers 7

    .line 818
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "stopP2pListenOffloading"

    .line 819
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->checkSehSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 821
    :cond_e
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;

    const-string v2, "stopP2pListenOffloading()"

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    .line 824
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    invoke-interface {v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->stopListenOffloading()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->setResult(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_3f

    goto :goto_39

    :catch_1f
    move-exception v2

    :try_start_20
    const-string v3, "SemSupplicantP2pIfaceHalHidlImpl"

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISehSupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->sehSupplicantServiceDiedHandler()V

    .line 829
    :goto_39
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SehSupplicantResult;->isSuccess()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3f
    move-exception p0

    .line 830
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public teardownIface(Ljava/lang/String;)Z
    .registers 3

    .line 445
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 446
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :cond_a
    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mCallback:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    .line 449
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISupplicantP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;

    .line 450
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->mISehSupplicantP2pIface:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;

    const/4 p0, 0x1

    .line 451
    monitor-exit p1

    return p0

    :catchall_14
    move-exception p0

    .line 452
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method
