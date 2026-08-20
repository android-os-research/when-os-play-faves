.class public Lcom/android/server/wm/DragAndDropPermissionsHandler;
.super Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.source "DragAndDropPermissionsHandler.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DragAndDrop"


# instance fields
.field public mActivityToken:Landroid/os/IBinder;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mMode:I

.field public mPermissionOwnerToken:Landroid/os/IBinder;

.field public final mSourceUid:I

.field public final mSourceUserId:I

.field public final mTargetPackage:Ljava/lang/String;

.field public final mTargetUserId:I

.field public final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V
    .registers 10

    .line 57
    invoke-direct {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 54
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 59
    iput p3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    .line 60
    iput-object p4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    .line 61
    iput p5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    .line 62
    iput p6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    .line 63
    iput p7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final doTake(Landroid/os/IBinder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 88
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 89
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v4

    iget v6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    iget-object v7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/net/Uri;

    iget v9, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v10, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    iget v11, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    move-object v5, p1

    .line 89
    invoke-interface/range {v4 .. v11}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2f

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 94
    :cond_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    throw p0
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    goto :goto_c

    .line 179
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->release()V

    :cond_c
    :goto_c
    return-void
.end method

.method public getFlags()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    return p0
.end method

.method public final getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 5

    const-string v0, "getUriPermissionOwnerForActivity"

    .line 156
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 158
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 163
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 160
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity does not exist; token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_35
    move-exception p1

    .line 164
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public release()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v1, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 121
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_17
    .catchall {:try_start_c .. :try_end_10} :catchall_13

    .line 126
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    goto :goto_1e

    :catchall_13
    move-exception v0

    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 127
    throw v0

    .line 126
    :catch_17
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    return-void

    .line 132
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 133
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 139
    :goto_1e
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v2, 0x0

    .line 140
    :goto_27
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 141
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    invoke-interface {v1, v0, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_41
    return-void
.end method

.method public take(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    goto :goto_12

    .line 77
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public takeTransient()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 106
    :cond_9
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string v1, "drop"

    .line 107
    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    :cond_1c
    :goto_1c
    return-void
.end method
