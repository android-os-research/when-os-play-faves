.class public Lcom/android/server/devicepolicy/DeviceStateCacheImpl;
.super Landroid/app/admin/DeviceStateCache;
.source "DeviceStateCacheImpl.java"


# instance fields
.field public mIsDeviceProvisioned:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/app/admin/DeviceStateCache;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "Device state cache:"

    .line 52
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device provisioned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public isDeviceProvisioned()Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    return p0
.end method

.method public setDeviceProvisioned(Z)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    .line 47
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
