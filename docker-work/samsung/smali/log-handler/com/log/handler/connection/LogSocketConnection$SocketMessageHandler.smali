.class Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;
.super Landroid/os/Handler;
.source "LogSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/connection/LogSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/log/handler/connection/LogSocketConnection;


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/LogSocketConnection;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/log/handler/connection/LogSocketConnection;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 159
    iput-object p1, p0, Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;->this$0:Lcom/log/handler/connection/LogSocketConnection;

    .line 160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    .line 166
    .local v0, "what":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    .local v1, "obj":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketMessageHandler receive message, what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogHandler/LogSocketConnection"

    invoke-static {v3, v2}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    packed-switch v0, :pswitch_data_3a

    goto :goto_38

    .line 171
    :pswitch_2a
    if-eqz v1, :cond_38

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_38

    .line 172
    iget-object v2, p0, Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;->this$0:Lcom/log/handler/connection/LogSocketConnection;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/log/handler/connection/LogSocketConnection;->setResponseFromServer(Ljava/lang/String;)V

    .line 178
    :cond_38
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2a
    .end packed-switch
.end method
