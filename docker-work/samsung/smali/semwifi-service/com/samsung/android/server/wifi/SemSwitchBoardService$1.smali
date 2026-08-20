.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemSwitchBoardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
