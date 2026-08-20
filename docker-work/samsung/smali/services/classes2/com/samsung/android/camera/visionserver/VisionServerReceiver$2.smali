.class public Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VisionServerReceiver.java"


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

    .line 133
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 136
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fputmIsNetworkAttached(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;Z)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCallback.onAvailable "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmIsNetworkAttached(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VisionServerReceiver"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_41

    .line 140
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_41
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fputmIsNetworkAttached(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;Z)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCallback.onUnavailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$2;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmIsNetworkAttached(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VisionServerReceiver"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
