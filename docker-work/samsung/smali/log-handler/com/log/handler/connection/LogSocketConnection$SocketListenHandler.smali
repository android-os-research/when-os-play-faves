.class Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;
.super Landroid/os/Handler;
.source "LogSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/connection/LogSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketListenHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/log/handler/connection/LogSocketConnection;


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/LogSocketConnection;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/log/handler/connection/LogSocketConnection;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 187
    iput-object p1, p0, Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;->this$0:Lcom/log/handler/connection/LogSocketConnection;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    .line 194
    .local v0, "what":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketListenHandler receive message, what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogHandler/LogSocketConnection"

    invoke-static {v2, v1}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 198
    :pswitch_1e
    iget-object v1, p0, Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;->this$0:Lcom/log/handler/connection/LogSocketConnection;

    invoke-static {v1}, Lcom/log/handler/connection/LogSocketConnection;->-$$Nest$mlisten(Lcom/log/handler/connection/LogSocketConnection;)V

    .line 199
    nop

    .line 203
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
