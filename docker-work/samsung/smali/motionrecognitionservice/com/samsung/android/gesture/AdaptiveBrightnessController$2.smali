.class Lcom/samsung/android/gesture/AdaptiveBrightnessController$2;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/AdaptiveBrightnessController;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    .line 177
    iput-object p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$2;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 181
    const-string v0, "MotionRecognitionService"

    const-string v1, "startService adaptivebrightnessgo in running thread++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v1, "autoBrightnessIntent":Landroid/content/Intent;
    const-string v2, "samsung.intent.action.START_AUTO_BRIGHTNESS_ROOT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "from"

    const-string v3, "mrs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.adaptivebrightnessgo"

    const-string v4, "com.samsung.adaptivebrightnessgo.RootService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 189
    :try_start_24
    iget-object v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$2;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v2, v2, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stop_ab_service"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    iget-object v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$2;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v2, v2, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3b} :catch_3c

    .line 193
    goto :goto_42

    .line 191
    :catch_3c
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error while calling adaptive brightness"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_42
    const-string v2, "startService adaptivebrightnessgo in running thread--"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method
