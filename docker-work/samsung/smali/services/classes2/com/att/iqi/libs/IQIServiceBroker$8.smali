.class public Lcom/att/iqi/libs/IQIServiceBroker$8;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 2

    .line 821
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 824
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation service connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " binder service "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 825
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 828
    :cond_2a
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    monitor-enter p1

    .line 829
    :try_start_2d
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0, p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mgetIBinderAsIInterface(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    .line 830
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    .line 831
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_58

    const/4 v0, 0x0

    .line 833
    :try_start_42
    new-instance v1, Lcom/att/iqi/libs/IQIServiceBroker$8$1;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/IQIServiceBroker$8$1;-><init>(Lcom/att/iqi/libs/IQIServiceBroker$8;)V

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4a} :catch_4b
    .catchall {:try_start_42 .. :try_end_4a} :catchall_58

    goto :goto_51

    :catch_4b
    move-exception p2

    :try_start_4c
    const-string v1, "Exception while linking IBinder to death"

    .line 843
    invoke-static {v1, p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 845
    :goto_51
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;I)V

    .line 846
    monitor-exit p1

    return-void

    :catchall_58
    move-exception p0

    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 851
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Implementation service unexpectedly disconnected"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 852
    :cond_b
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    monitor-enter p1

    .line 853
    :try_start_e
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    .line 854
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    .line 855
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 856
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;I)V

    .line 857
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_26

    throw p0
.end method
