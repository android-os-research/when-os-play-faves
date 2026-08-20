.class public Lcom/android/server/StorageManagerService$Callbacks;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callbacks"
.end annotation


# static fields
.field public static final MSG_DISK_DESTROYED:I = 0x6

.field public static final MSG_DISK_SCANNED:I = 0x5

.field public static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field public static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field public static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field public static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/storage/IStorageEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyDiskDestroyed(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDiskScanned(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStorageStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyVolumeForgotten(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyVolumeRecordChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyVolumeStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 5190
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5186
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 5203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5204
    iget-object v1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 5206
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/storage/IStorageEventListener;

    .line 5208
    :try_start_15
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1a

    :catch_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5212
    :cond_1d
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5213
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void
.end method

.method public final invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_42

    goto :goto_41

    .line 5241
    :pswitch_4
    iget-object p0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Landroid/os/storage/DiskInfo;

    invoke-interface {p1, p0}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    goto :goto_41

    .line 5237
    :pswitch_c
    iget-object p0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Landroid/os/storage/DiskInfo;

    iget p2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {p1, p0, p2}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    goto :goto_41

    .line 5233
    :pswitch_16
    iget-object p0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    goto :goto_41

    .line 5229
    :pswitch_1e
    iget-object p0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Landroid/os/storage/VolumeRecord;

    invoke-interface {p1, p0}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    goto :goto_41

    .line 5225
    :pswitch_26
    iget-object p0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Landroid/os/storage/VolumeInfo;

    iget p2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget p3, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {p1, p0, p2, p3}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    goto :goto_41

    .line 5220
    :pswitch_32
    iget-object p0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p3, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p0, p2, p3}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_32
        :pswitch_26
        :pswitch_1e
        :pswitch_16
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public final notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 3

    .line 5283
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5284
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 5285
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 4

    .line 5276
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5277
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5278
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 p1, 0x5

    .line 5279
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 5248
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5249
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5250
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5251
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5252
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyVolumeForgotten(Ljava/lang/String;)V
    .registers 3

    .line 5270
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5271
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 5272
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 3

    .line 5264
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5265
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 5266
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 5

    .line 5256
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5257
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5258
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 5259
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 p1, 0x2

    .line 5260
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public register(Landroid/os/storage/IStorageEventListener;)V
    .registers 2

    .line 5194
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregister(Landroid/os/storage/IStorageEventListener;)V
    .registers 2

    .line 5198
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
