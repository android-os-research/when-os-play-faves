.class Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;
.super Ljava/lang/Object;
.source "SemWifiApTetheredClientInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->onClientsChanged(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

.field final synthetic val$clients:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;Ljava/util/Collection;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 85
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisteredCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    .line 90
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fputnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;I)V

    .line 91
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientsChanged callback:size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$mupdateLastConnectedClientInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$msendDHCPACKBroadcast(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V

    return-void
.end method
