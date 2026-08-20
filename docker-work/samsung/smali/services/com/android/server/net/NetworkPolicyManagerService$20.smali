.class public Lcom/android/server/net/NetworkPolicyManagerService$20;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 7811
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpstreamChanged(Landroid/net/Network;)V
    .registers 4

    .line 7814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpstreamChanged() network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7815
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmConnManager(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 7816
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_44

    .line 7817
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 7818
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmTetheringState(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 7819
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmTetheringState(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    goto :goto_51

    .line 7821
    :cond_44
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmTetheringState(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 7822
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmTetheringState(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 7824
    :goto_51
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
