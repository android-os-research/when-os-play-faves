.class public Lcom/android/server/StorageManagerService$7;
.super Landroid/os/IVoldMountCallback$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 3

    .line 2823
    iput-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$7;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "Failed to close FUSE device fd"

    const-string v1, "StorageManagerService"

    .line 2827
    iget-object v2, p0, Lcom/android/server/StorageManagerService$7;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2828
    iput-object p3, v2, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 2829
    new-instance p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 2831
    :try_start_f
    iget-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/StorageManagerService$7;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    :try_end_1a
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_f .. :try_end_1a} :catch_26
    .catchall {:try_start_f .. :try_end_1a} :catchall_24

    const/4 p0, 0x1

    .line 2844
    :try_start_1b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 2846
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return p0

    :catchall_24
    move-exception p0

    goto :goto_86

    :catch_26
    move-exception p1

    .line 2834
    :try_start_27
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mount volume "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService$7;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2837
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

    .line 2838
    iget-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2839
    iget-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p3

    .line 2840
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 2839
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7c
    .catchall {:try_start_27 .. :try_end_7c} :catchall_24

    const/4 p0, 0x0

    .line 2844
    :try_start_7d
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p1

    .line 2846
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_85
    return p0

    .line 2844
    :goto_86
    :try_start_86
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception p1

    .line 2846
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2848
    :goto_8e
    throw p0
.end method
