.class Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;
.super Landroid/database/ContentObserver;
.source "GameSDKVrrManager.java"


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
.method constructor <init>(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .line 127
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_98

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$200(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "refresh_rate_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "settingRefreshRateMode":I
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I
    invoke-static {v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$300(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)I

    move-result v1

    if-eq v1, v0, :cond_53

    .line 130
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # setter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I
    invoke-static {v1, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$302(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;I)I

    .line 131
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VRR ContentObserver setting onChange isHighMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I
    invoke-static {v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$300(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37

    const/4 v4, 0x1

    goto :goto_38

    :cond_37
    move v4, v2

    :goto_38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "refresh mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    .line 132
    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentSettingRefreshRateMode:I
    invoke-static {v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$300(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    # invokes: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$100(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;Ljava/lang/String;)V

    .line 135
    :cond_53
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$200(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "game_display_hz_48"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "allowed48ByUser":I
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I
    invoke-static {v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$400(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)I

    move-result v2

    if-eq v2, v1, :cond_8e

    .line 137
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # setter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I
    invoke-static {v2, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$402(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;I)I

    .line 138
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VRR ContentObserver gos onChange allowed48ByUser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->mCurrentGosSetting48:I
    invoke-static {v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$400(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$100(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;Ljava/lang/String;)V

    .line 141
    :cond_8e
    iget-object v2, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    # invokes: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->needToUpdate()V
    invoke-static {v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$000(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;)V

    .line 142
    .end local v0    # "settingRefreshRateMode":I
    .end local v1    # "allowed48ByUser":I
    monitor-exit p0

    .line 146
    goto :goto_a3

    .line 142
    :catchall_95
    move-exception v0

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_95

    .end local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;
    .end local p1    # "selfChange":Z
    :try_start_97
    throw v0
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_98} :catch_98

    .line 143
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;
    .restart local p1    # "selfChange":Z
    :catch_98
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager$2;->this$0:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    const-string v2, "[FAIL] onChange(): Failed to change VrrSecureSettings"

    # invokes: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->SLOGD(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->access$100(Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a3
    return-void
.end method
