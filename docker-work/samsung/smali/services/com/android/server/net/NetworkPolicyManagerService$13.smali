.class public Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


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

    .line 2170
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2175
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateNetworksInternal(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const-string/jumbo p1, "networkInfo"

    .line 2177
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_20

    .line 2179
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 2180
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmActiveNetworkType(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    goto :goto_26

    .line 2182
    :cond_20
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmActiveNetworkType(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 2184
    :goto_26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mActiveNetworkType : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmActiveNetworkType(Lcom/android/server/net/NetworkPolicyManagerService;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", networkInfo : "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
