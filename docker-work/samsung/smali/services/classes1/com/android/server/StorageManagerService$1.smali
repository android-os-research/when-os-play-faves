.class public Lcom/android/server/StorageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 1096
    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1099
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    .line 1100
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    move v2, v0

    .line 1101
    :goto_11
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :try_start_14
    const-string v2, "android.intent.action.USER_ADDED"

    .line 1104
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1105
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1106
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1107
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1108
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1110
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-interface {p0, p2, v0, p1}, Landroid/os/IVold;->onUserAdded(III)V

    goto :goto_a3

    .line 1113
    :cond_44
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p0

    invoke-interface {p0, p2, v0, v1}, Landroid/os/IVold;->onUserAdded(III)V

    goto :goto_a3

    :cond_4e
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1116
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 1117
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    monitor-enter p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_5d} :catch_9d

    .line 1118
    :try_start_5d
    iget-object v1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_67
    if-ge v0, v1, :cond_8f

    .line 1120
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1121
    iget v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v3, p2, :cond_8c

    const/16 v3, -0x2710

    .line 1122
    iput v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1123
    iget-object v3, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 1126
    :cond_8f
    monitor-exit p1
    :try_end_90
    .catchall {:try_start_5d .. :try_end_90} :catchall_9a

    .line 1127
    :try_start_90
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_9d

    goto :goto_a3

    :catchall_9a
    move-exception p0

    .line 1126
    :try_start_9b
    monitor-exit p1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw p0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 1130
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a3
    :goto_a3
    return-void
.end method
