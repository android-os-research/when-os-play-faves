.class public Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;
.super Ljava/lang/Object;
.source "StorageUserConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->connectIfNeeded()Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field public final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    .line 473
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iput-object p2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleConnection(Landroid/os/IBinder;)V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->-$$Nest$fgetmLock(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    .line 505
    invoke-static {p1}, Landroid/service/storage/IExternalStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/storage/IExternalStorageService;

    move-result-object p1

    .line 504
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 506
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final handleDisconnection()V
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-virtual {v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->close()V

    .line 515
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-virtual {p0}, Lcom/android/server/storage/StorageUserConnection;->resetUserSessions()V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] died. User ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object p1, p1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {p1}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageUserConnection"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->handleDisconnection()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is null. User ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {p0}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageUserConnection"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] connected. User ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object p1, p1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {p1}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageUserConnection"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->handleConnection(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] disconnected. User ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object p1, p1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {p1}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageUserConnection"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->handleDisconnection()V

    return-void
.end method
