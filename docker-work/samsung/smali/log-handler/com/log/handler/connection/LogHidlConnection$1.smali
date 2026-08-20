.class Lcom/log/handler/connection/LogHidlConnection$1;
.super Lvendor/mediatek/hardware/log/V1_0/ILogCallback$Stub;
.source "LogHidlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/connection/LogHidlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/log/handler/connection/LogHidlConnection;


# direct methods
.method constructor <init>(Lcom/log/handler/connection/LogHidlConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/log/handler/connection/LogHidlConnection;

    .line 99
    iput-object p1, p0, Lcom/log/handler/connection/LogHidlConnection$1;->this$0:Lcom/log/handler/connection/LogHidlConnection;

    invoke-direct {p0}, Lvendor/mediatek/hardware/log/V1_0/ILogCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackToClient(Ljava/lang/String;)Z
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackToClient data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogHandler/LogHidlConnection"

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/log/handler/connection/LogHidlConnection$1;->this$0:Lcom/log/handler/connection/LogHidlConnection;

    invoke-virtual {v0, p1}, Lcom/log/handler/connection/LogHidlConnection;->setResponseFromServer(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
