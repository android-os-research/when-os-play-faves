.class public Lcom/android/server/StorageManagerService$MountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MountObbAction"
.end annotation


# instance fields
.field public final mCallingUid:I

.field public mObbInfo:Landroid/content/res/ObbInfo;

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;ILandroid/content/res/ObbInfo;)V
    .registers 5

    .line 4969
    iput-object p1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 4970
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 4971
    iput p3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    .line 4972
    iput-object p4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

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

    .line 4977
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mwarnOnNotMounted(Lcom/android/server/StorageManagerService;)V

    .line 4979
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object v1, v1, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$misUidOwnerOfPackageOrSystem(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 4985
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 4986
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbPathToStateMap(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 4987
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_8c

    if-nez v1, :cond_6f

    .line 4994
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v3, v2, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-interface {v1, v3, v2}, Landroid/os/IVold;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 4995
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 5000
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_56} :catch_66

    .line 5001
    :try_start_56
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-static {v1, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$maddObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 5002
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_63

    const/4 v0, 0x1

    .line 5004
    :try_start_5f
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_66

    return-void

    :catchall_63
    move-exception p0

    .line 5002
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw p0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    :catch_66
    move-exception p0

    .line 5006
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 4989
    :cond_6f
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object p0, p0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_8c
    move-exception p0

    .line 4987
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0

    .line 4980
    :cond_8f
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Denied attempt to mount OBB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object v3, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which is owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    iget-object p0, p0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 5012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MountObbAction{"

    .line 5013
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5014
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 5015
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
