.class public Landroid/telephony/ims/ImsMmTelManager;
.super Ljava/lang/Object;
.source "ImsMmTelManager.java"

# interfaces
.implements Landroid/telephony/ims/RegistrationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;,
        Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;,
        Landroid/telephony/ims/ImsMmTelManager$WiFiCallingMode;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImsMmTelManager"

.field public static final whitelist WIFI_MODE_CELLULAR_PREFERRED:I = 0x1

.field public static final whitelist WIFI_MODE_WIFI_ONLY:I = 0x0

.field public static final whitelist WIFI_MODE_WIFI_PREFERRED:I = 0x2


# instance fields
.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$8hRjnVioxU_y_77mclIjv6ZujmI()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-static {}, Landroid/telephony/ims/ImsMmTelManager;->getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(ILandroid/telephony/BinderCacheManager;)V
    .registers 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p2, "binderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Lcom/android/internal/telephony/ITelephony;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager;-><init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;)V

    .line 268
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p3, "binderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Lcom/android/internal/telephony/ITelephony;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager;->mContext:Landroid/content/Context;

    .line 277
    iput p2, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    .line 278
    iput-object p3, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 279
    return-void
.end method

.method public static whitelist createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 4
    .param p0, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 257
    new-instance v0, Landroid/telephony/ims/ImsMmTelManager;

    new-instance v1, Landroid/telephony/BinderCacheManager;

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Landroid/telephony/BinderCacheManager;-><init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ImsMmTelManager;-><init>(ILandroid/telephony/BinderCacheManager;)V

    return-object v0

    .line 254
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid subscription ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 1573
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method private static blacklist getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .line 1579
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1580
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1581
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1577
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1582
    .local v0, "binder":Lcom/android/internal/telephony/ITelephony;
    return-object v0
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 1565
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 1566
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1568
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$getRegistrationState$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "stateCallback"    # Ljava/util/function/Consumer;

    .line 477
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getRegistrationTransportType$1(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "transportTypeCallback"    # Ljava/util/function/Consumer;

    .line 524
    nop

    .line 525
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 524
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist getFeatureState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1472
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_38

    .line 1475
    if-eqz p2, :cond_30

    .line 1479
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1480
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_27

    .line 1486
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$4;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager$4;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 1501
    goto :goto_19

    .line 1499
    :catch_15
    move-exception v1

    .line 1500
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1502
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void

    .line 1497
    :catch_1a
    move-exception v1

    .line 1498
    .local v1, "sse":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1481
    .end local v1    # "sse":Landroid/os/ServiceSpecificException;
    :cond_27
    new-instance v1, Landroid/telephony/ims/ImsException;

    const/4 v2, 0x1

    const-string v3, "Could not find Telephony Service."

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1476
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Consumer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local p2, "stateCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_47

    .line 454
    if-eqz p1, :cond_3f

    .line 458
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 459
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_37

    .line 464
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager$1;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 478
    goto :goto_36

    .line 475
    :catch_15
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting registration state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsMmTelManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return-void

    .line 460
    :cond_37
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p2, "transportTypeCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_47

    .line 500
    if-eqz p1, :cond_3f

    .line 504
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 505
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_37

    .line 510
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager$2;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 526
    goto :goto_36

    .line 522
    :catch_15
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting transport type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsMmTelManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 527
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return-void

    .line 506
    :cond_37
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVoWiFiModeSetting()I
    .registers 5

    .line 1251
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1252
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1257
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVoWiFiModeSetting(I)I

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 1265
    :catch_d
    move-exception v1

    .line 1266
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1258
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1259
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1261
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1263
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1253
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getVoWiFiRoamingModeSetting()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1321
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1322
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1327
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVoWiFiRoamingModeSetting(I)I

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 1335
    :catch_d
    move-exception v1

    .line 1336
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1328
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1329
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1331
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1333
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1323
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isAdvancedCallingSettingEnabled()Z
    .registers 5

    .line 675
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 676
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 681
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isAdvancedCallingSettingEnabled(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 689
    :catch_d
    move-exception v1

    .line 690
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 682
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 683
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 685
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 677
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isAvailable(II)Z
    .registers 6
    .param p1, "capability"    # I
    .param p2, "imsRegTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 788
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 789
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 794
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isAvailable(III)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 795
    :catch_d
    move-exception v1

    .line 796
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 790
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isCapable(II)Z
    .registers 6
    .param p1, "capability"    # I
    .param p2, "imsRegTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 760
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 761
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 766
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isCapable(III)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 767
    :catch_d
    move-exception v1

    .line 768
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 762
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isCrossSimCallingEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1046
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1047
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_20

    .line 1053
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isCrossSimCallingEnabledByUser(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 1056
    :catch_d
    move-exception v1

    .line 1057
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1060
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 1054
    :catch_13
    move-exception v1

    .line 1055
    .local v1, "sse":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1048
    .end local v1    # "sse":Landroid/os/ServiceSpecificException;
    :cond_20
    new-instance v1, Landroid/telephony/ims/ImsException;

    const/4 v2, 0x1

    const-string v3, "Could not find Telephony Service."

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "capability"    # I
    .param p2, "transportType"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 822
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-eqz p4, :cond_38

    .line 825
    if-eqz p3, :cond_30

    .line 829
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 830
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_27

    .line 836
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$3;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/ims/ImsMmTelManager$3;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 851
    goto :goto_19

    .line 849
    :catch_15
    move-exception v1

    .line 850
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 852
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void

    .line 847
    :catch_1a
    move-exception v1

    .line 848
    .local v1, "sse":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 831
    .end local v1    # "sse":Landroid/os/ServiceSpecificException;
    :cond_27
    new-instance v1, Landroid/telephony/ims/ImsException;

    const/4 v2, 0x1

    const-string v3, "Could not find Telephony Service."

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 826
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Consumer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isTtyOverVolteEnabled()Z
    .registers 5

    .line 1436
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1437
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1442
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isTtyOverVolteEnabled(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 1450
    :catch_d
    move-exception v1

    .line 1451
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1443
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1444
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1446
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1448
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1438
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isVoWiFiRoamingSettingEnabled()Z
    .registers 5

    .line 1133
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1134
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1139
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoWiFiRoamingSettingEnabled(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 1147
    :catch_d
    move-exception v1

    .line 1148
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1140
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1141
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1145
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1135
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isVoWiFiSettingEnabled()Z
    .registers 5

    .line 957
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 958
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 963
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoWiFiSettingEnabled(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 971
    :catch_d
    move-exception v1

    .line 972
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 964
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 965
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 967
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 959
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isVtSettingEnabled()Z
    .registers 5

    .line 883
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 884
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 889
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVtSettingEnabled(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 897
    :catch_d
    move-exception v1

    .line 898
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 890
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 891
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 893
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 895
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "c"    # Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    if-eqz p2, :cond_50

    .line 312
    if-eqz p1, :cond_48

    .line 315
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 317
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 318
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-eqz v0, :cond_40

    .line 324
    :try_start_e
    iget v2, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 334
    nop

    .line 335
    return-void

    .line 332
    :catch_19
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 325
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_34

    .line 328
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_34
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 319
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_40
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Could not find Telephony Service."

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 313
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "c"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 353
    if-eqz p2, :cond_41

    .line 356
    if-eqz p1, :cond_39

    .line 359
    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 361
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 362
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-eqz v0, :cond_31

    .line 368
    :try_start_e
    iget v2, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 373
    nop

    .line 374
    return-void

    .line 371
    :catch_19
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 369
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 370
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 363
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_31
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Could not find Telephony Service."

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 357
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/ImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1525
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1526
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1528
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 1529
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 1530
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-eqz v0, :cond_47

    .line 1536
    :try_start_20
    iget v2, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    .line 1538
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1536
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_2d} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_2d} :catch_2f

    .line 1543
    nop

    .line 1544
    return-void

    .line 1541
    :catch_2f
    move-exception v2

    .line 1542
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1539
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v1

    .line 1540
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1531
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_47
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist registerMmTelCapabilityCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "c"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 568
    if-eqz p2, :cond_47

    .line 571
    if-eqz p1, :cond_3f

    .line 574
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 576
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 577
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 583
    :try_start_e
    iget v2, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 590
    nop

    .line 591
    return-void

    .line 588
    :catch_19
    move-exception v2

    .line 589
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 586
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_24
    move-exception v1

    .line 587
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 584
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2a
    move-exception v1

    .line 585
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 578
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_37
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Could not find Telephony Service."

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 572
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAdvancedCallingSettingEnabled(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 721
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 722
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 727
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setAdvancedCallingSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 737
    nop

    .line 738
    return-void

    .line 735
    :catch_d
    move-exception v1

    .line 736
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 728
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 729
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 731
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 723
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setCrossSimCallingEnabled(Z)V
    .registers 7
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1091
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1092
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1e

    .line 1098
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCrossSimCallingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1103
    goto :goto_10

    .line 1101
    :catch_c
    move-exception v1

    .line 1102
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1104
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void

    .line 1099
    :catch_11
    move-exception v1

    .line 1100
    .local v1, "sse":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1093
    .end local v1    # "sse":Landroid/os/ServiceSpecificException;
    :cond_1e
    new-instance v1, Landroid/telephony/ims/ImsException;

    const/4 v2, 0x1

    const-string v3, "Could not find Telephony Service."

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist setRttCapabilitySetting(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1391
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1392
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1397
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRttCapabilitySetting(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1407
    nop

    .line 1408
    return-void

    .line 1405
    :catch_d
    move-exception v1

    .line 1406
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1398
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1399
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1401
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1403
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1393
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setVoWiFiModeSetting(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1285
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1286
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1291
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiModeSetting(II)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1301
    nop

    .line 1302
    return-void

    .line 1299
    :catch_d
    move-exception v1

    .line 1300
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1292
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1293
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1295
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1297
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1287
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setVoWiFiNonPersistent(ZI)V
    .registers 7
    .param p1, "isCapable"    # Z
    .param p2, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1202
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1203
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1208
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiNonPersistent(IZI)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1218
    nop

    .line 1219
    return-void

    .line 1216
    :catch_d
    move-exception v1

    .line 1217
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1209
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1210
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1214
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1204
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setVoWiFiRoamingModeSetting(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1357
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1358
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1363
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiRoamingModeSetting(II)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1373
    nop

    .line 1374
    return-void

    .line 1371
    :catch_d
    move-exception v1

    .line 1372
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1364
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1365
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1367
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1369
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1359
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setVoWiFiRoamingSettingEnabled(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1165
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1166
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 1171
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiRoamingSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1181
    nop

    .line 1182
    return-void

    .line 1179
    :catch_d
    move-exception v1

    .line 1180
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1172
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 1173
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 1175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1177
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1167
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setVoWiFiSettingEnabled(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 988
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 989
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 994
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1004
    nop

    .line 1005
    return-void

    .line 1002
    :catch_d
    move-exception v1

    .line 1003
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 995
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 996
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 998
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1000
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 990
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setVtSettingEnabled(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 913
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 914
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2d

    .line 919
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVtSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 929
    nop

    .line 930
    return-void

    .line 927
    :catch_d
    move-exception v1

    .line 928
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 920
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 921
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 923
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    if-eqz p1, :cond_21

    .line 398
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 399
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 404
    :try_start_8
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    .line 407
    nop

    .line 408
    return-void

    .line 405
    :catch_13
    move-exception v1

    .line 406
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 400
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 426
    if-eqz p1, :cond_21

    .line 430
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 431
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 436
    :try_start_8
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    .line 439
    nop

    .line 440
    return-void

    .line 437
    :catch_13
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 432
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/ImsStateCallback;

    .line 1552
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1554
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 1556
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 1557
    :try_start_f
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_19

    .line 1559
    :catch_17
    move-exception v1

    goto :goto_1a

    .line 1561
    :cond_19
    :goto_19
    nop

    .line 1562
    :goto_1a
    return-void
.end method

.method public whitelist unregisterMmTelCapabilityCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 621
    if-eqz p1, :cond_21

    .line 625
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 626
    .local v0, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_10

    .line 627
    const-string v1, "ImsMmTelManager"

    const-string v2, "Could not find Telephony Service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 631
    :cond_10
    :try_start_10
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 634
    nop

    .line 635
    return-void

    .line 632
    :catch_1b
    move-exception v1

    .line 633
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 622
    .end local v0    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
