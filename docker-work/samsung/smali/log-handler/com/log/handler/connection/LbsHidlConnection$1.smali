.class Lcom/log/handler/connection/LbsHidlConnection$1;
.super Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback$Stub;
.source "LbsHidlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/connection/LbsHidlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/log/handler/connection/LbsHidlConnection;


# direct methods
.method constructor <init>(Lcom/log/handler/connection/LbsHidlConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/log/handler/connection/LbsHidlConnection;

    .line 110
    iput-object p1, p0, Lcom/log/handler/connection/LbsHidlConnection$1;->this$0:Lcom/log/handler/connection/LbsHidlConnection;

    invoke-direct {p0}, Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackToClient(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection$1;->this$0:Lcom/log/handler/connection/LbsHidlConnection;

    invoke-static {v0, p1}, Lcom/log/handler/connection/LbsHidlConnection;->-$$Nest$mcovertArrayListToString(Lcom/log/handler/connection/LbsHidlConnection;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "dataStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackToClient data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogHandler/LbsHidlConnection"

    invoke-static {v2, v1}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/log/handler/connection/LbsHidlConnection$1;->this$0:Lcom/log/handler/connection/LbsHidlConnection;

    invoke-virtual {v1, v0}, Lcom/log/handler/connection/LbsHidlConnection;->setResponseFromServer(Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x1

    return v1
.end method
