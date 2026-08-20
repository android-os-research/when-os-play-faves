.class Lcom/android/internal/telephony/ImsSmsDispatcher$5;
.super Ljava/lang/Object;
.source "ImsSmsDispatcher.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 569
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->connectionReady(Lcom/android/ims/ImsManager;I)V

    return-void
.end method

.method public blacklist connectionReady(Lcom/android/ims/ImsManager;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 571
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v0, "ImsManager: connection ready."

    invoke-static {p2, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 572
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 573
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/ims/ImsManager;)V

    .line 574
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$msetListeners(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    .line 575
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsImsServiceUp(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 576
    monitor-exit p2

    return-void

    :catchall_20
    move-exception p0

    monitor-exit p2
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw p0
.end method

.method public blacklist connectionUnavailable(I)V
    .registers 5

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsManager: connection unavailable, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_34

    .line 583
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v0, "connectionUnavailable: unexpected, received server error"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 584
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmConnectRunnable(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmConnectRunnable(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 587
    :cond_34
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 588
    :try_start_3b
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/ims/ImsManager;)V

    .line 589
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsImsServiceUp(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 590
    monitor-exit p1

    return-void

    :catchall_49
    move-exception p0

    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_49

    throw p0
.end method
