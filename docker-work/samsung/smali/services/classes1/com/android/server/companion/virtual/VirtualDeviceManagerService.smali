.class public Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;,
        Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;,
        Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "VirtualDeviceManagerService"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCameraAccessControllers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVirtualDeviceManagerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/CameraAccessController;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

.field public final mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mOnAssociationsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

.field public final mVirtualDeviceManagerLock:Ljava/lang/Object;

.field public final mVirtualDevices:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVirtualDeviceManagerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$xYXYUwYcdrO6Xts4IwaNPJTcpBo(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->lambda$onUserStarting$0(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraAccessControllers(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misValidVirtualDeviceLocked(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/virtual/IVirtualDevice;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->isValidVirtualDeviceLocked(Landroid/companion/virtual/IVirtualDevice;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    .line 85
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 93
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    .line 109
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 105
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 106
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onUserStarting$0(ILjava/util/List;)V
    .registers 3

    .line 162
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isValidVirtualDeviceLocked(Landroid/companion/virtual/IVirtualDevice;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVirtualDeviceManagerLock"
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDevice;->getAssociationId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 148
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCameraAccessBlocked(I)V
    .registers 12

    .line 197
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_37

    .line 200
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 201
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040ed1

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v2

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v5, p1, v4, v8}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 207
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public onStart()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    const-string/jumbo v1, "virtualdevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 135
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 136
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 138
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 9

    .line 154
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_13
    const-class v2, Landroid/companion/CompanionDeviceManager;

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager;

    .line 159
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    .line 160
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/companion/CompanionDeviceManager;->getAllAssociations()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)V

    .line 163
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    new-instance v3, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V

    .line 165
    new-instance v2, Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/companion/virtual/CameraAccessController;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;)V

    .line 167
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    monitor-exit v1

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_13 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 173
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 178
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/companion/CompanionDeviceManager;

    .line 179
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager;

    .line 180
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    if-eqz v3, :cond_3a

    .line 182
    invoke-virtual {v2, v3}, Landroid/companion/CompanionDeviceManager;->removeOnAssociationsChangedListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V

    .line 183
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 185
    :cond_3a
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v1, :cond_55

    .line 188
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/CameraAccessController;->close()V

    .line 189
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_6b

    :cond_55
    const-string p0, "VirtualDeviceManagerService"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unregister cameraAccessController for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_6b
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6 .. :try_end_6f} :catchall_6d

    throw p0
.end method
