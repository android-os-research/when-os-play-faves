.class public Lcom/samsung/iqi/IQIServiceBrokerExt$2;
.super Landroid/database/ContentObserver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    .line 67
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mgetOpt(Lcom/samsung/iqi/IQIServiceBrokerExt;)I

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetDEBUG(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result p2

    if-eqz p2, :cond_3c

    const-string p2, "IQIServiceBrokerExt"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange: opt="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " service="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "running"

    goto :goto_32

    :cond_2f
    const-string/jumbo v0, "stopped"

    :goto_32
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 p2, 0x1

    if-nez p1, :cond_81

    .line 70
    iget-object p3, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p3}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result p3

    if-eqz p3, :cond_81

    .line 72
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmLock(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 73
    :try_start_4e
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1, p2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fputmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 74
    monitor-exit p3
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_7e

    .line 75
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmContext(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object p2, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.att.iqi.action.UPLOAD_COMPLETE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 76
    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    .line 77
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmHandler(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetrbIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x7530

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a3

    :catchall_7e
    move-exception p0

    .line 74
    :try_start_7f
    monitor-exit p3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0

    :cond_81
    if-ne p1, p2, :cond_a3

    .line 79
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 80
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmHandler(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetrbIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    invoke-static {p2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    goto :goto_a3

    .line 83
    :cond_9e
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p0, p2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    :cond_a3
    :goto_a3
    return-void
.end method
