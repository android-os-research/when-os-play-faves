.class public Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 892
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 893
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 907
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "StorageManagerService"

    if-eq v0, v1, :cond_24c

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_232

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_27e

    goto/16 :goto_27c

    .line 1050
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1051
    instance-of v1, v0, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    if-eqz v1, :cond_23

    .line 1052
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    check-cast v0, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    invoke-static {p0, v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mnotifyCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    goto/16 :goto_27c

    .line 1055
    :cond_23
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;I)V

    goto/16 :goto_27c

    :pswitch_2c
    const-string/jumbo v0, "handleMessage -> H_VOLUME_STATE_CHANGED"

    .line 1043
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1045
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$monVolumeStateChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1046
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_27c

    :pswitch_48
    const-string/jumbo v0, "handleMessage -> H_COMPLETE_UNLOCK_USER"

    .line 1038
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V

    goto/16 :goto_27c

    :pswitch_57
    const-string/jumbo p1, "handleMessage -> H_BOOT_COMPLETED"

    .line 914
    invoke-static {v4, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mhandleBootCompleted(Lcom/android/server/StorageManagerService;)V

    goto/16 :goto_27c

    :pswitch_64
    const-string/jumbo v0, "handleMessage -> H_ABORT_IDLE_MAINT"

    .line 1032
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Aborting idle maintenance"

    .line 1033
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    goto/16 :goto_27c

    :pswitch_7a
    const-string/jumbo v0, "handleMessage -> H_RUN_IDLE_MAINT"

    .line 1026
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Running idle maintenance"

    .line 1027
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    goto/16 :goto_27c

    :pswitch_90
    const-string/jumbo p1, "handleMessage -> H_RESET"

    .line 1021
    invoke-static {v4, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mresetIfBootedAndConnected(Lcom/android/server/StorageManagerService;)V

    goto/16 :goto_27c

    .line 1014
    :pswitch_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage -> H_PARTITION_FORGET rec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 1017
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mforgetPartition(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27c

    :pswitch_c5
    const-string/jumbo v0, "handleMessage -> H_VOLUME_UNMOUNT"

    .line 976
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 978
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$munmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_27c

    :pswitch_d6
    const-string/jumbo v0, "handleMessage -> H_INTERNAL_BROADCAST"

    .line 1000
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "android.os.storage.extra.VOLUME_STATE"

    .line 1005
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.os.storage.extra.FS_UUID"

    .line 1006
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcasting ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fsUuid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_27c

    :pswitch_11f
    const-string/jumbo v0, "handleMessage -> H_VOLUME_BROADCAST"

    .line 982
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/StorageVolume;

    .line 984
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    invoke-static {v4, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27c

    .line 990
    new-instance v1, Landroid/content/Intent;

    .line 991
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    .line 992
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x5000000

    .line 993
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 995
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_27c

    :pswitch_185
    const-string/jumbo v0, "handleMessage -> H_VOLUME_MOUNT"

    .line 965
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 967
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$misMountDisallowed(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 968
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring mount "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to policy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27c

    .line 972
    :cond_1b6
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_27c

    :pswitch_1bd
    const-string/jumbo v0, "handleMessage -> H_FSTRIM"

    .line 924
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Running fstrim idle maintenance"

    .line 925
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :try_start_1c8
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$fputmLastMaintenance(Lcom/android/server/StorageManagerService;J)V

    .line 930
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLastMaintenanceFile(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLastMaintenance(Lcom/android/server/StorageManagerService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1e0} :catch_1e1

    goto :goto_1e6

    :catch_1e1
    const-string v0, "Unable to record last fstrim!"

    .line 932
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_1e6
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 940
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_27c

    .line 942
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_27c

    :pswitch_1f7
    const-string/jumbo v0, "handleMessage -> H_SHUTDOWN"

    .line 947
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/IStorageShutdownObserver;

    .line 951
    :try_start_201
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IVold;->shutdown()V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_20a} :catch_20b

    goto :goto_210

    :catch_20b
    move-exception p0

    .line 954
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    :goto_210
    if-eqz p1, :cond_27c

    if-eqz v2, :cond_215

    goto :goto_216

    :cond_215
    move v3, v1

    .line 958
    :goto_216
    :try_start_216
    invoke-interface {p1, v3}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_219} :catch_27c

    goto :goto_27c

    :pswitch_21a
    const-string/jumbo p1, "handleMessage -> H_DAEMON_CONNECTED"

    .line 919
    invoke-static {v4, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mhandleDaemonConnected(Lcom/android/server/StorageManagerService;)V

    goto :goto_27c

    :pswitch_226
    const-string/jumbo p1, "handleMessage -> H_SYSTEM_READY"

    .line 909
    invoke-static {v4, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mhandleSystemReady(Lcom/android/server/StorageManagerService;)V

    goto :goto_27c

    :cond_232
    const-string/jumbo p1, "handleMessage -> H_IDLE_DEFRAG"

    .line 1072
    invoke-static {v4, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :try_start_238
    iget-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p1

    new-instance v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler$1;-><init>(Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;)V

    invoke-interface {p1, v0}, Landroid/os/IVold;->runIdleDefrag(Landroid/os/IVoldTaskListener;)V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_246} :catch_247

    goto :goto_27c

    :catch_247
    move-exception p0

    .line 1085
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27c

    .line 1062
    :cond_24c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage -> H_KEYGUARD_CHANGED isShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_25d

    move v1, v2

    goto :goto_25e

    :cond_25d
    move v1, v3

    :goto_25e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :try_start_268
    iget-object p0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_273

    goto :goto_274

    :cond_273
    move v2, v3

    :goto_274
    invoke-interface {p0, v2}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_277} :catch_278

    goto :goto_27c

    :catch_278
    move-exception p0

    .line 1067
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_27c
    :cond_27c
    :goto_27c
    return-void

    nop

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_226
        :pswitch_21a
        :pswitch_1f7
        :pswitch_1bd
        :pswitch_185
        :pswitch_11f
        :pswitch_d6
        :pswitch_c5
        :pswitch_9d
        :pswitch_90
        :pswitch_7a
        :pswitch_64
        :pswitch_57
        :pswitch_48
        :pswitch_2c
        :pswitch_14
    .end packed-switch
.end method

.method public sendMessageWithBoolean(IZ)V
    .registers 3

    .line 898
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 899
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 900
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 901
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
