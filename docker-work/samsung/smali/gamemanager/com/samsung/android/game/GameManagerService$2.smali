.class Lcom/samsung/android/game/GameManagerService$2;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/GameManagerService;

    .line 1892
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$2;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1894
    const-string v0, "GameManager"

    const-string v1, "mGosServiceConn, onServiceConnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$2;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {p2}, Lcom/samsung/android/game/gos/IGosSystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/gos/IGosSystemService;

    move-result-object v1

    # setter for: Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;
    invoke-static {v0, v1}, Lcom/samsung/android/game/GameManagerService;->access$002(Lcom/samsung/android/game/GameManagerService;Lcom/samsung/android/game/gos/IGosSystemService;)Lcom/samsung/android/game/gos/IGosSystemService;

    .line 1898
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$2;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1900(Lcom/samsung/android/game/GameManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_25

    .line 1899
    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$2;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->access$1900(Lcom/samsung/android/game/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1900
    monitor-exit v0

    .line 1904
    goto :goto_45

    .line 1900
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_22

    .end local p0    # "this":Lcom/samsung/android/game/GameManagerService$2;
    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "binder":Landroid/os/IBinder;
    :try_start_24
    throw v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    .line 1901
    .restart local p0    # "this":Lcom/samsung/android/game/GameManagerService$2;
    .restart local p1    # "className":Landroid/content/ComponentName;
    .restart local p2    # "binder":Landroid/os/IBinder;
    :catch_25
    move-exception v0

    .line 1902
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1903
    const-string v1, "GameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGosServiceConn, onServiceConnected(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 1908
    const-string v0, "GameManager"

    const-string v1, "mGosServiceConn, onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$2;->this$0:Lcom/samsung/android/game/GameManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;
    invoke-static {v0, v1}, Lcom/samsung/android/game/GameManagerService;->access$002(Lcom/samsung/android/game/GameManagerService;Lcom/samsung/android/game/gos/IGosSystemService;)Lcom/samsung/android/game/gos/IGosSystemService;

    .line 1912
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$2;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1900(Lcom/samsung/android/game/GameManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_22

    .line 1913
    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$2;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->access$1900(Lcom/samsung/android/game/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1914
    monitor-exit v0

    .line 1918
    goto :goto_42

    .line 1914
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    .end local p0    # "this":Lcom/samsung/android/game/GameManagerService$2;
    .end local p1    # "className":Landroid/content/ComponentName;
    :try_start_21
    throw v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_22} :catch_22

    .line 1915
    .restart local p0    # "this":Lcom/samsung/android/game/GameManagerService$2;
    .restart local p1    # "className":Landroid/content/ComponentName;
    :catch_22
    move-exception v0

    .line 1916
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1917
    const-string v1, "GameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGosServiceConn, onServiceDisconnected(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    return-void
.end method
