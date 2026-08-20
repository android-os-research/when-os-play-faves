.class public Lcom/android/server/knox/SeamLessSwitchHandler$1;
.super Ljava/lang/Object;
.source "SeamLessSwitchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/SeamLessSwitchHandler;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/SeamLessSwitchHandler;

.field public final synthetic val$extra:Ljava/lang/String;

.field public final synthetic val$feature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/SeamLessSwitchHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 424
    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->this$0:Lcom/android/server/knox/SeamLessSwitchHandler;

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "SeamLessSwitchHandler"

    .line 428
    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "tracking_id"

    const-string v3, "493-399-9953101"

    .line 429
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string v3, "ev"

    .line 430
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    .line 431
    iget-object v3, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    if-eqz v2, :cond_27

    const-string v3, "extra"

    .line 433
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_27
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 437
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.sec.android.diagmonagent"

    .line 439
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->this$0:Lcom/android/server/knox/SeamLessSwitchHandler;

    invoke-static {v1}, Lcom/android/server/knox/SeamLessSwitchHandler;->-$$Nest$fgetc(Lcom/android/server/knox/SeamLessSwitchHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    invoke-static {}, Lcom/android/server/knox/SeamLessSwitchHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertSALog tracking_id=493-399-9953101, feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_69} :catch_6a

    goto :goto_74

    :catch_6a
    move-exception p0

    const-string/jumbo v1, "insertSALog Exception"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_74
    :goto_74
    return-void
.end method
