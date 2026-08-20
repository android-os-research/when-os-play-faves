.class public Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;
.super Ljava/lang/Object;
.source "VisionServerReceiver.java"

# interfaces
.implements Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/visionserver/VisionServerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListReceived(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VisionServerReceiver"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onListReceived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmPackageListLock(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_1e
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v2}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmNetworkCallback(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmPackageList(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    .line 96
    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v2}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmPackageList(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    iget-object v4, v1, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 100
    :cond_64
    iget-object p2, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p2}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmVisionServerListManager(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Lcom/samsung/android/camera/visionserver/VisionServerListManager;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmPackageList(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->setListFromVisionServer(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$mnotifyVisionParamChangeRetry(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)V

    .line 102
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p0

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_1e .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public onNoNeedToDownload()V
    .registers 3

    const-string v0, "VisionServerReceiver"

    const-string/jumbo v1, "onNoNeedToDownload - unregisterNetworkCallback"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmNetworkCallback(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onServerError()V
    .registers 8

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServerError : retries count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmVisionServerRetries(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionServerReceiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmVisionServerRetries(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)I

    move-result v0

    if-lez v0, :cond_57

    .line 111
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/os/Handler;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x18

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 113
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 111
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 115
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmVisionServerRetries(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fputmVisionServerRetries(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;I)V

    goto :goto_6c

    :cond_57
    const-string/jumbo v0, "onServerError : server is not working. unregisterNetworkCallback."

    .line 117
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmNetworkCallback(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_6c
    return-void
.end method
