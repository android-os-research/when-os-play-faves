.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->on()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p1, 0x0

    if-eqz p2, :cond_18

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 598
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    :cond_15
    move-object p2, p1

    move-object p1, v0

    goto :goto_19

    :cond_18
    move-object p2, p1

    .line 601
    :goto_19
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "intent received, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 602
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "com.samsung.android.app.goodcatch"

    .line 603
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 604
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " removed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->reset()V

    .line 606
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureEvent(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->reset()V

    .line 607
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchClients(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 608
    :try_start_79
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchClients(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_89
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_99

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    .line 609
    invoke-virtual {p2}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off()V

    goto :goto_89

    .line 611
    :cond_99
    monitor-exit p1

    goto :goto_9e

    :catchall_9b
    move-exception p0

    monitor-exit p1
    :try_end_9d
    .catchall {:try_start_79 .. :try_end_9d} :catchall_9b

    throw p0

    :cond_9e
    :goto_9e
    return-void
.end method
