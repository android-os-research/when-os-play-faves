.class Lcom/samsung/android/wfd/DeXMode$1;
.super Landroid/database/ContentObserver;
.source "DeXMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wfd/DeXMode;->registerDexSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/DeXMode;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/wfd/DeXMode;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/wfd/DeXMode;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 9
    .param p1, "selfChange"    # Z

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 65
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "key"

    const-string v3, "uibc_finger_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "def"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_14
    sget-object v2, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$sfgetDESKTOP_MODE_SETTINGS_CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "getSettings"

    invoke-virtual {v2, v5, v6, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 70
    .local v2, "result":Landroid/os/Bundle;
    if-eqz v2, :cond_2b

    .line 71
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_2a} :catch_2c

    move-object v0, v3

    .line 75
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_2b
    goto :goto_34

    .line 73
    :catch_2c
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DeXMode"

    const-string v4, "Failed to get settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_34
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    move v4, v3

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    :goto_42
    invoke-static {v2, v4}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$fputmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;Z)V

    .line 77
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-static {v2}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$fgetmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 78
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$1;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iput v3, v2, Lcom/samsung/android/wfd/DeXMode;->mToolType:I

    .line 80
    :cond_51
    return-void
.end method
