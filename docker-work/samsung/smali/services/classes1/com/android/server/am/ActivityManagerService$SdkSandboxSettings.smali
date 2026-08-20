.class public Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkSandboxSettings"
.end annotation


# static fields
.field public static final ENFORCE_BROADCAST_RECEIVER_RESTRICTIONS:Ljava/lang/String; = "enforce_broadcast_receiver_restrictions"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnforceBroadcastReceiverRestrictions:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2641
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    .line 2654
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isBroadcastReceiverRestrictionsEnforced()Z
    .registers 2

    .line 2676
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2677
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mEnforceBroadcastReceiverRestrictions:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 2678
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 2669
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "enforce_broadcast_receiver_restrictions"

    const/4 v2, 0x0

    .line 2670
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mEnforceBroadcastReceiverRestrictions:Z

    .line 2672
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public registerObserver()V
    .registers 5

    .line 2658
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "sdk_sandbox"

    const-string v2, "enforce_broadcast_receiver_restrictions"

    const/4 v3, 0x0

    .line 2659
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mEnforceBroadcastReceiverRestrictions:Z

    const-string/jumbo v1, "sdk_sandbox"

    .line 2662
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mContext:Landroid/content/Context;

    .line 2663
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2662
    invoke-static {v1, v2, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2664
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method
