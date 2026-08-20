.class public Lcom/android/server/StorageManagerService$UnmountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnmountObbAction"
.end annotation


# instance fields
.field public final mForceUnmount:Z

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V
    .registers 4

    .line 5023
    iput-object p1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 5024
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 5025
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    return-void
.end method


# virtual methods
.method public handleExecute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation

    .line 5030
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mwarnOnNotMounted(Lcom/android/server/StorageManagerService;)V

    .line 5033
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 5034
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbPathToStateMap(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 5035
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_9b

    if-eqz v1, :cond_91

    .line 5041
    iget v0, v1, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    if-eq v0, v2, :cond_54

    .line 5042
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied to unmount OBB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (owned by GID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    return-void

    .line 5049
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 5050
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 5051
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 5053
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7a} :catch_88

    .line 5054
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 5055
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_85

    const/4 v0, 0x2

    .line 5057
    :try_start_81
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_88

    return-void

    :catchall_85
    move-exception p0

    .line 5055
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw p0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_88

    :catch_88
    move-exception p0

    .line 5059
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 5038
    :cond_91
    new-instance p0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v0, 0x17

    const-string v1, "Missing existingState"

    invoke-direct {p0, v0, v1}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_9b
    move-exception p0

    .line 5035
    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 5065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnmountObbAction{"

    .line 5066
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",force="

    .line 5068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5069
    iget-boolean p0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 5070
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
