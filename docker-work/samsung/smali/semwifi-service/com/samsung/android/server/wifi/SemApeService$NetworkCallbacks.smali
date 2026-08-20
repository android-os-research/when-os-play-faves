.class Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemApeService;)V
    .registers 2

    .line 1431
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;-><init>(Lcom/samsung/android/server/wifi/SemApeService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 1436
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 1441
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 1447
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$NetworkCallbacks;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
