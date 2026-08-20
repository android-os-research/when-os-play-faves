.class public Lcom/android/server/StorageManagerService$DirEncryptListner$1;
.super Landroid/os/IVoldMountCallback$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService$DirEncryptListner;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

.field public final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService$DirEncryptListner;Landroid/os/storage/VolumeInfo;)V
    .registers 3

    .line 5708
    iput-object p1, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "Failed to close FUSE device fd"

    const-string v1, "StorageManagerService"

    .line 5712
    iget-object v2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 5713
    iput-object p3, v2, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 5714
    new-instance p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 5716
    :try_start_f
    iget-object p1, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    :try_end_1c
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_f .. :try_end_1c} :catch_28
    .catchall {:try_start_f .. :try_end_1c} :catchall_26

    const/4 p0, 0x1

    .line 5729
    :try_start_1d
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    .line 5731
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return p0

    :catchall_26
    move-exception p0

    goto :goto_8e

    :catch_28
    move-exception p1

    .line 5719
    :try_start_29
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mount volume "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Scheduling reset in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5723
    iget-object p1, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5724
    iget-object p1, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;->this$1:Lcom/android/server/StorageManagerService$DirEncryptListner;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p3

    .line 5725
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 5724
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_84
    .catchall {:try_start_29 .. :try_end_84} :catchall_26

    const/4 p0, 0x0

    .line 5729
    :try_start_85
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p1

    .line 5731
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8d
    return p0

    .line 5729
    :goto_8e
    :try_start_8e
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception p1

    .line 5731
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5733
    :goto_96
    throw p0
.end method
