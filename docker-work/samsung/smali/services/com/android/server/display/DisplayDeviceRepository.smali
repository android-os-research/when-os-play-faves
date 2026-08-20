.class public Lcom/android/server/display/DisplayDeviceRepository;
.super Ljava/lang/Object;
.source "DisplayDeviceRepository.java"

# interfaces
.implements Lcom/android/server/display/DisplayAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayDeviceRepository$Listener;
    }
.end annotation


# static fields
.field public static final DEBUG:Ljava/lang/Boolean;

.field public static final DISPLAY_DEVICE_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_DEVICE_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_DEVICE_EVENT_REMOVED:I = 0x3

.field public static final TAG:Ljava/lang/String; = "DisplayDeviceRepository"


# instance fields
.field public final mDisplayDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDeviceRepository$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedWakeLock:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/display/DisplayDeviceRepository;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/PersistentDataStore;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 84
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 85
    iput-object p2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-void
.end method


# virtual methods
.method public acquireHDMIWake()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_f

    .line 168
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_f
    return-void
.end method

.method public addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsLocked(Lcom/android/server/display/DisplayDevice;)Z
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 136
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 142
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 152
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 176
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 177
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDexDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 4

    .line 316
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDevice;

    .line 317
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 318
    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    return-object v0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayTokenForCurrentLayerStackLocked(Lcom/android/server/display/DisplayDevice;I)Landroid/os/IBinder;
    .registers 6

    .line 301
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_23

    .line 302
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    if-ne v1, p1, :cond_15

    goto :goto_20

    .line 306
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getCurrentLayerStackLocked()I

    move-result v2

    if-ne v2, p2, :cond_20

    .line 307
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 310
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .registers 9

    .line 188
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 189
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string p0, "DisplayDeviceRepository"

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add already added display device: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v0

    return-void

    .line 195
    :cond_27
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2f

    move v2, v4

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    const-string v3, "DisplayDeviceRepository"

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display device added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 202
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/DisplayDeviceRepository;->sendEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 204
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_5b

    .line 207
    iget-boolean p1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    if-eqz p1, :cond_5a

    if-eqz v2, :cond_5a

    .line 208
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceRepository;->acquireHDMIWake()V

    :cond_5a
    return-void

    :catchall_5b
    move-exception p0

    .line 204
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .registers 9

    .line 214
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 215
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string p0, "DisplayDeviceRepository"

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to change non-existent display device: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    monitor-exit v0

    return-void

    .line 220
    :cond_27
    sget-object v2, Lcom/android/server/display/DisplayDeviceRepository;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_35

    const-string/jumbo v3, "handleDisplayDeviceChanged"

    .line 221
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 223
    :cond_35
    iget-object v3, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_65

    const-string v4, "DisplayDeviceRepository"

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display device changed state: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 226
    invoke-static {v6}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :cond_65
    if-eqz v3, :cond_7d

    const-string v4, "DisplayDeviceRepository"

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display device changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_a9

    :cond_7d
    :goto_7d
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_95

    .line 233
    :try_start_81
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/display/PersistentDataStore;->setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_8e

    .line 235
    :try_start_88
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    goto :goto_95

    :catchall_8e
    move-exception p1

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 236
    throw p1

    .line 238
    :cond_95
    :goto_95
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 240
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    const/4 v1, 0x2

    .line 241
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayDeviceRepository;->sendEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 242
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 245
    :cond_a7
    monitor-exit v0

    return-void

    :catchall_a9
    move-exception p0

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_88 .. :try_end_ab} :catchall_a9

    throw p0
.end method

.method public final handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .registers 8

    .line 252
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 253
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string p0, "DisplayDeviceRepository"

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to remove non-existent display device: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit v0

    return-void

    .line 259
    :cond_27
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    const-string v3, "DisplayDeviceRepository"

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    .line 266
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayDeviceRepository;->sendEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 267
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_56

    .line 270
    iget-boolean p1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    if-nez p1, :cond_55

    if-eqz v2, :cond_55

    .line 271
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceRepository;->releaseHDMIWake()V

    :cond_55
    return-void

    :catchall_56
    move-exception p0

    .line 267
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public hasDisplayDeviceForWirelessDexLocked()Z
    .registers 3

    .line 356
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDevice;

    .line 357
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 358
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public hasExternalDisplayDevice()Z
    .registers 3

    .line 281
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDevice;

    .line 282
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 283
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public hasExternalDisplayDeviceForDexLocked()Z
    .registers 4

    .line 342
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDevice;

    .line 343
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 344
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-nez v1, :cond_27

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public isDexDisplayDeviceEnabledLocked()Z
    .registers 1

    .line 326
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceRepository;->getDexDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 327
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDexEnabledStateLocked()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isDisplayDeviceForHiddenSpaceLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 3

    .line 371
    iget p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    iget p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 p1, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public isExternalDisplayDeviceForDexLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 3

    .line 334
    iget p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    iget p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 p1, 0x8000000

    and-int/2addr p1, p0

    if-nez p1, :cond_14

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V
    .registers 7

    .line 95
    sget-object v0, Lcom/android/server/display/DisplayDeviceRepository;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayDeviceRepository#onDisplayDeviceEvent (event="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    const/4 v3, 0x1

    if-eq p2, v3, :cond_36

    const/4 v3, 0x2

    if-eq p2, v3, :cond_32

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2e

    goto :goto_39

    .line 109
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    goto :goto_39

    .line 105
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    goto :goto_39

    .line 101
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    .line 112
    :goto_39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_42

    .line 113
    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_42
    return-void
.end method

.method public onTraversalRequested()V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 121
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceRepository$Listener;

    invoke-interface {v2}, Lcom/android/server/display/DisplayDeviceRepository$Listener;->onTraversalRequested()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public releaseHDMIWake()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    return-void
.end method

.method public final sendEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 294
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceRepository$Listener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/display/DisplayDeviceRepository$Listener;->onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public sizeLocked()I
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
