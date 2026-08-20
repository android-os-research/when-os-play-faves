.class public Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkTimeUpdateCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    .line 377
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "New default network %s; checking time."

    .line 380
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmDefaultNetwork(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)V

    .line 383
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/NetworkTimeUpdateService;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/NetworkTimeUpdateService;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->-$$Nest$fputmDefaultNetwork(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)V

    :cond_12
    return-void
.end method
