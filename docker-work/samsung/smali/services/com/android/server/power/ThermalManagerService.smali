.class public Lcom/android/server/power/ThermalManagerService;
.super Lcom/android/server/SystemService;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    }
.end annotation


# static fields
.field public static final COOLDOWN_DISABLE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.sdhms/sdhms_cooldown_disable"

.field public static final TAG:Ljava/lang/String; = "ThermalManagerService"


# instance fields
.field public final mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

.field public mIsStatusOverride:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mService:Landroid/os/IThermalService$Stub;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mTemperatureMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field

.field public final mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mThermalEventListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mThermalStatusListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EFa1q7lNzNJKR9kHjyMZOluNpXA(Lcom/android/server/power/ThermalManagerService;Landroid/os/Temperature;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChangedCallback(Landroid/os/Temperature;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g2jTj6VJDwnSkMsHJvQaUykmq-4(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ThermalManagerService;->lambda$postEventListener$1(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lFrxurL8ANGCcVUNbDj5KUpTrxQ(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->lambda$postStatusListener$0(Landroid/os/IThermalStatusListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/server/power/ThermalManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemperatureMap(Lcom/android/server/power/ThermalManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTemperatureMapChangedLocked(Lcom/android/server/power/ThermalManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostEventListenerCurrentTemperatures(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostStatusListener(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStatusLocked(Lcom/android/server/power/ThermalManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ThermalManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 83
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 88
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 101
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {p1, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 323
    new-instance p1, Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/ThermalManagerService$1;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    .line 123
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    return-void
.end method

.method public static synthetic lambda$postEventListener$1(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V
    .registers 3

    .line 248
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IThermalEventListener;->notifyThrottling(Landroid/os/Temperature;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    .line 250
    sget-object p1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Thermal callback failed to call"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method private synthetic lambda$postStatusListener$0(Landroid/os/IThermalStatusListener;)V
    .registers 3

    .line 178
    :try_start_0
    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-interface {p1, p0}, Landroid/os/IThermalStatusListener;->onStatusChange(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 180
    sget-object p1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Thermal callback failed to call"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method


# virtual methods
.method public final notifyEventListenersLocked(Landroid/os/Temperature;)V
    .registers 7

    .line 259
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_27

    .line 262
    :try_start_a
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 263
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IThermalEventListener;

    .line 264
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 265
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 266
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_20

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_20
    move-exception p1

    .line 269
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 270
    throw p1

    .line 269
    :cond_27
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v0, 0xab1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 271
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 272
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x4

    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    .line 271
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public final notifyStatusListenersLocked()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 192
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 193
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalStatusListener;

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_17
    move-exception v0

    .line 197
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 198
    throw v0

    .line 197
    :cond_1e
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final onActivityManagerReady()V
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    if-nez v1, :cond_19

    .line 144
    new-instance v1, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 145
    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    :cond_19
    if-nez v1, :cond_26

    .line 148
    new-instance v1, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 149
    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    :cond_26
    if-nez v1, :cond_33

    .line 152
    new-instance v1, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;

    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 153
    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    .line 155
    :cond_33
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    new-instance v5, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V

    if-nez v1, :cond_48

    .line 157
    sget-object p0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v1, "No Thermal HAL service on this device"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v0

    return-void

    .line 160
    :cond_48
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5b

    .line 164
    sget-object v5, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Thermal HAL reported invalid data, abort connection"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    move v5, v3

    :goto_5c
    if-ge v5, v4, :cond_6a

    .line 167
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Temperature;

    invoke-virtual {p0, v6, v3}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 169
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 170
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateSevereThresholds()V

    .line 171
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onActivityManagerReady()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    const-string/jumbo v1, "thermalservice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onTemperatureChanged(Landroid/os/Temperature;Z)V
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Temperature;

    if-eqz v1, :cond_1b

    .line 304
    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 305
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    :cond_1e
    if-eqz p2, :cond_23

    .line 308
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 310
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final onTemperatureChangedCallback(Landroid/os/Temperature;)V
    .registers 5

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 317
    :try_start_5
    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 319
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    throw p0
.end method

.method public final onTemperatureMapChangedLocked()V
    .registers 7

    .line 203
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_2d

    .line 205
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    .line 206
    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_20

    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    :cond_20
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    if-lt v4, v2, :cond_2a

    .line 207
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 211
    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    if-nez v0, :cond_34

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    :cond_34
    return-void
.end method

.method public final postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 4

    if-eqz p3, :cond_d

    .line 243
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p3

    if-eq p0, p3, :cond_d

    return-void

    .line 246
    :cond_d
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p3, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2, p1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 254
    sget-object p0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Thermal callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public final postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 7

    .line 230
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 233
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 236
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final postStatusListener(Landroid/os/IThermalStatusListener;)V
    .registers 4

    .line 176
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_16

    .line 184
    sget-object p0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Thermal callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public final setStatusLocked(I)V
    .registers 4

    .line 217
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.sec.android.sdhms/sdhms_cooldown_disable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 222
    :cond_e
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    if-eq p1, v0, :cond_17

    .line 223
    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 224
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->notifyStatusListenersLocked()V

    :cond_17
    return-void
.end method
