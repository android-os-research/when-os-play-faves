.class Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;
.super Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;
.source "PublishRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 90
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCommandError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 93
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->-$$Nest$monCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;I)V

    .line 94
    return-void
.end method

.method public blacklist onNetworkRespHeader(ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->-$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;ILjava/lang/String;ILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public blacklist onNetworkResponse(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-static {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->-$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;ILjava/lang/String;)V

    .line 99
    return-void
.end method
