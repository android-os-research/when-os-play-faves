.class Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;
.super Landroid/os/Handler;
.source "PhotoRemasterServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "PhotoRemasterServiceClient"

    packed-switch v0, :pswitch_data_70

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong Message is received."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_6f

    .line 58
    :pswitch_23
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    goto :goto_6f

    .line 62
    :pswitch_49
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    nop

    .line 69
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch -0x1
        :pswitch_49
        :pswitch_23
    .end packed-switch
.end method
