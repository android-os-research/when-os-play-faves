.class final Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;
.super Lcom/android/ims/internal/IImsVideoCallCallback$Stub;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method private constructor blacklist <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V

    return-void
.end method


# virtual methods
.method public blacklist changeCallDataUsage(J)V
    .registers 6
    .param p1, "dataUsage"    # J

    .line 133
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method public blacklist changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 4
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 139
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method

.method public blacklist changePeerDimensions(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 120
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 121
    .local v0, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public blacklist changeVideoQuality(I)V
    .registers 5
    .param p1, "videoQuality"    # I

    .line 128
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 129
    return-void
.end method

.method public blacklist handleCallSessionEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .line 115
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public blacklist receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 4
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .line 99
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public blacklist receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 106
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 107
    .local v0, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 108
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 109
    iput-object p3, v0, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmHandler(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method
