.class public Lcom/android/server/StorageManagerService$ObbActionHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObbActionHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 4853
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 4854
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 4859
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto/16 :goto_84

    .line 4870
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 4875
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 4876
    :try_start_15
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 4878
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbPathToStateMap(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4879
    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 4880
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StorageManagerService$ObbState;

    .line 4887
    iget-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 4888
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 4892
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/StorageManagerService$ObbState;

    .line 4896
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_7a

    .line 4899
    :try_start_55
    iget-object v3, v2, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v4, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v3, v4, v5, v1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5e} :catch_5f
    .catchall {:try_start_55 .. :try_end_5e} :catchall_7a

    goto :goto_44

    :catch_5f
    :try_start_5f
    const-string v3, "StorageManagerService"

    .line 4902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 4906
    :cond_78
    monitor-exit v0

    goto :goto_84

    :catchall_7a
    move-exception p0

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_7a

    throw p0

    .line 4861
    :cond_7d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/StorageManagerService$ObbAction;

    .line 4866
    invoke-virtual {p1, p0}, Lcom/android/server/StorageManagerService$ObbAction;->execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V

    :goto_84
    return-void
.end method
