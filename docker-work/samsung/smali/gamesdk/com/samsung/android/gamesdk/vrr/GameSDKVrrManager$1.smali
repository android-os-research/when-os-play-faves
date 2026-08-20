.class Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;
.super Ljava/lang/Object;
.source "GameSDKVrrManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->initialize(Landroid/content/Context;Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 92
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 102
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDKVrrManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRR onDisplayChanged called display id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 104
    :try_start_1d
    monitor-enter p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_28

    .line 105
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # invokes: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->needToUpdate()V
    invoke-static {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$000(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)V

    .line 106
    monitor-exit p0

    .line 110
    goto :goto_33

    .line 106
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    .end local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;
    .end local p1    # "displayId":I
    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    .line 107
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;
    .restart local p1    # "displayId":I
    :catch_28
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$1;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    const-string v2, "[FAIL] onDisplayChanged(): Failed to update GameSDKVrr"

    # invokes: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$100(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 96
    return-void
.end method
