.class public Lcom/samsung/iqi/IQIServiceBrokerExt$1;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 51
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmLock(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 54
    :try_start_7
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 55
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fputmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 56
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v1, v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 57
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$fgetmContext(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p0
.end method
