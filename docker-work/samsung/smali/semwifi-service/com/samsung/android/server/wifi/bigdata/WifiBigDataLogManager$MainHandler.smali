.class final Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;
.super Landroid/os/Handler;
.source "WifiBigDataLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field static final CMD_INSERT_LOG_FOR_ON_OFF:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Landroid/os/Looper;)V
    .registers 3

    .line 498
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 499
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 504
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 505
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "feature"

    const/4 v2, 0x0

    .line 506
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const-string v3, "data"

    .line 508
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    .line 511
    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " feature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifi.BigData"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_42
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_79

    .line 514
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 515
    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-$$Nest$mgetConfiguredNetworksSize(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 516
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-$$Nest$mgetForegroundPackageName(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const-string p1, "ONOF"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-$$Nest$mupdateTime(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;)V

    :cond_79
    return-void
.end method
