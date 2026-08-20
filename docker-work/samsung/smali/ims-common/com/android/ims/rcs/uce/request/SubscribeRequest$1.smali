.class Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;
.super Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;
.source "SubscribeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/SubscribeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 50
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCommandError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 53
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monCommandError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;I)V

    .line 54
    return-void
.end method

.method public blacklist onNetworkRespHeader(ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;ILjava/lang/String;ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public blacklist onNetworkResponse(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1, p2}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public blacklist onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "pidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monCapabilitiesUpdate(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/util/List;)V

    .line 68
    return-void
.end method

.method public blacklist onResourceTerminated(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "terminatedList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monResourceTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/util/List;)V

    .line 72
    return-void
.end method

.method public blacklist onTerminated(Ljava/lang/String;J)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryAfterMillis"    # J

    .line 75
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/lang/String;J)V

    .line 76
    return-void
.end method
