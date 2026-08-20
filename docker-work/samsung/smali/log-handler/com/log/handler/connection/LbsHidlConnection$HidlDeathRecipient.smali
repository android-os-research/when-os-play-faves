.class Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;
.super Ljava/lang/Object;
.source "LbsHidlConnection.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/connection/LbsHidlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HidlDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/log/handler/connection/LbsHidlConnection;


# direct methods
.method constructor <init>(Lcom/log/handler/connection/LbsHidlConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/log/handler/connection/LbsHidlConnection;

    .line 102
    iput-object p1, p0, Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;->this$0:Lcom/log/handler/connection/LbsHidlConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 5
    .param p1, "cookie"    # J

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceDied! cookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogHandler/LbsHidlConnection"

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;->this$0:Lcom/log/handler/connection/LbsHidlConnection;

    invoke-virtual {v0}, Lcom/log/handler/connection/LbsHidlConnection;->disConnect()V

    .line 107
    return-void
.end method
