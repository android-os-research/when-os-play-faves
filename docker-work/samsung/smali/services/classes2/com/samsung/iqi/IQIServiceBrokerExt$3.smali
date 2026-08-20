.class public Lcom/samsung/iqi/IQIServiceBrokerExt$3;
.super Landroid/content/BroadcastReceiver;
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
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 92
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetDEBUG(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "IQIServiceBrokerExt"

    const-string p2, "mUploadStateReceiver upload done"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_f
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmLock(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 94
    :try_start_16
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 95
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fputmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 96
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p2, v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 97
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmHandler(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetrbIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {p2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmContext(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    :cond_45
    monitor-exit p1

    return-void

    :catchall_47
    move-exception p0

    monitor-exit p1
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_47

    throw p0
.end method
