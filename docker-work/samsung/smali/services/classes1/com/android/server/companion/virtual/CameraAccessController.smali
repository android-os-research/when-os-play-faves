.class public Lcom/android/server/companion/virtual/CameraAccessController;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraAccessController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;,
        Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;,
        Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraAccessController"


# instance fields
.field public mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mObserverCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageToSessionData:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;",
            ">;"
        }
    .end annotation
.end field

.field public final mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$monInjectionError(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/CameraAccessController;->onInjectionError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInjectionSucceeded(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/CameraAccessController;->onInjectionSucceeded(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 83
    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 85
    iput-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

    .line 86
    const-class p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public blockCameraAccessIfNeeded(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 125
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 126
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    .line 128
    iget v4, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUid:I

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 130
    iget-object v3, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-nez v5, :cond_40

    .line 133
    new-instance v5, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    invoke-direct {v5}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    .line 134
    iput v4, v5, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 135
    iget-object v4, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_40
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 140
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public close()V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-gez v1, :cond_20

    const-string v1, "CameraAccessController"

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected negative mObserverCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_20
    if-lez v1, :cond_3a

    const-string v1, "CameraAccessController"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected close with observers remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3a
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_41

    .line 152
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void

    :catchall_41
    move-exception p0

    .line 151
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public onCameraClosed(Ljava/lang/String;)V
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_3c

    .line 198
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 199
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraInjectionSession;

    if-eqz v3, :cond_39

    .line 201
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 202
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 204
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 208
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 157
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 161
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v3

    if-nez v3, :cond_51

    .line 162
    new-instance v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    invoke-direct {v3}, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;-><init>()V

    .line 163
    iput-object p2, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 164
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUid:I

    .line 165
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_37

    .line 167
    iget-object v1, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraInjectionSession;

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    if-eqz v1, :cond_4f

    .line 169
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 170
    iget-object v1, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p1, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 172
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_4f} :catch_72
    .catchall {:try_start_3 .. :try_end_4f} :catchall_70

    .line 175
    :cond_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_70

    return-void

    :cond_51
    if-nez v2, :cond_61

    .line 178
    :try_start_53
    new-instance v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    .line 179
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 180
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_61
    iget-object v1, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_67} :catch_72
    .catchall {:try_start_53 .. :try_end_67} :catchall_70

    if-eqz v1, :cond_6b

    .line 183
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_70

    return-void

    .line 185
    :cond_6b
    :try_start_6b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_6e} :catch_72
    .catchall {:try_start_6b .. :try_end_6e} :catchall_70

    .line 190
    :try_start_6e
    monitor-exit v0

    return-void

    :catchall_70
    move-exception p0

    goto :goto_8c

    :catch_72
    move-exception p0

    const-string p1, "CameraAccessController"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraOpened - unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :goto_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_6e .. :try_end_8d} :catchall_70

    throw p0
.end method

.method public final onInjectionError(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2a

    const-string p0, "CameraAccessController"

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected injection error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for camera:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and package:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_2a
    iget-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 271
    :try_start_2d
    iget-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-eqz p2, :cond_3e

    .line 273
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

    iget p2, p2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    invoke-interface {p0, p2}, Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;->onCameraAccessBlocked(I)V

    .line 275
    :cond_3e
    monitor-exit p1

    return-void

    :catchall_40
    move-exception p0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final onInjectionSucceeded(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-nez p0, :cond_29

    const-string p0, "CameraAccessController"

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInjectionSucceeded didn\'t find expected entry for package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 250
    monitor-exit v0

    return-void

    .line 252
    :cond_29
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraInjectionSession;

    if-eqz p0, :cond_4d

    const-string p2, "CameraAccessController"

    .line 254
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInjectionSucceeded found unexpected existing session for camera "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 258
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final startBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "CameraAccessController"

    .line 216
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBlocking() cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v5, ""

    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/android/server/companion/virtual/CameraAccessController$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController$1;-><init>(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p2

    .line 219
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    :try_end_33
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_51

    :catch_34
    move-exception p0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to injectCamera for cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " package:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    return-void
.end method

.method public startObservingIfNeeded()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-nez v1, :cond_12

    .line 97
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 99
    :cond_12
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 100
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public stopObservingIfNeeded()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-gtz v1, :cond_e

    .line 110
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/CameraAccessController;->close()V

    .line 112
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method
