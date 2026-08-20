.class public Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DualDarManagerProxy.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "DualDarManagerProxy"

.field public static sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ro.build.type"

    .line 21
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 22
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    sput-boolean v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDarManagerProxy"

    const-string v2, "DualDarManagerProxy created"

    .line 26
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 28
    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 29
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    monitor-enter v0

    .line 33
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    if-nez v1, :cond_e

    .line 34
    new-instance v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    .line 36
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 42
    :try_start_0
    sget-boolean p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->DEBUG:Z

    if-eqz p1, :cond_1b

    const-string p1, "DualDarManagerProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x1

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c4

    goto :goto_6e

    :sswitch_29
    const-string v1, "SCHEDULE_DATA_LOCK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const/4 v0, 0x3

    goto :goto_6e

    :sswitch_33
    const-string v1, "ON_DEVICE_OWNER_PROVISIONING"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const/4 v0, 0x0

    goto :goto_6e

    :sswitch_3d
    const-string v1, "ENSURE_DATA_UNLOCKED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const/4 v0, 0x2

    goto :goto_6e

    :sswitch_47
    const-string v1, "IS_INNER_LAYER_UNLOCKED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const/4 v0, 0x1

    goto :goto_6e

    :sswitch_51
    const-string v1, "CLEAR_TRIAL_PERIOD_TIME"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const/4 v0, 0x6

    goto :goto_6e

    :sswitch_5b
    const-string v1, "CANCEL_DATA_LOCK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const/4 v0, 0x4

    goto :goto_6e

    :sswitch_65
    const-string v1, "SET_TRIAL_PERIOD_TIME"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_bd

    if-eqz p2, :cond_6e

    const/4 v0, 0x5

    :cond_6e
    :goto_6e
    const-string/jumbo p2, "user_id"

    const-string v1, "dual_dar_response"

    packed-switch v0, :pswitch_data_e2

    goto :goto_bc

    .line 76
    :pswitch_77
    :try_start_77
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleClearDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z

    move-result p0

    .line 77
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_bc

    .line 71
    :pswitch_81
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleScheduleDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z

    move-result p0

    .line 72
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_bc

    .line 66
    :pswitch_8b
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 67
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->cancelDataLock(I)V

    goto :goto_bc

    .line 61
    :pswitch_95
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 62
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDataLock(I)V

    goto :goto_bc

    .line 56
    :pswitch_9f
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleEnsureDataUnlocked()Z

    move-result p0

    .line 57
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_bc

    .line 51
    :pswitch_a9
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->isInnerLayerUnlocked()Z

    move-result p0

    .line 52
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_bc

    .line 46
    :pswitch_b3
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDeviceOwnerProvisioning(Landroid/os/Bundle;)Z

    move-result p0

    .line 47
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_bc} :catch_bd

    :goto_bc
    return-object p1

    :catch_bd
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x69b863fb -> :sswitch_65
        -0x68086ae5 -> :sswitch_5b
        0x6bc9530 -> :sswitch_51
        0x37362b4f -> :sswitch_47
        0x3e778197 -> :sswitch_3d
        0x481c6342 -> :sswitch_33
        0x552734f8 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_a9
        :pswitch_9f
        :pswitch_95
        :pswitch_8b
        :pswitch_81
        :pswitch_77
    .end packed-switch
.end method
