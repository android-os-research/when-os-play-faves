.class Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 1976
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1980
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Enter DisconnectedState screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isNCHOModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1982
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v1, -0x4b

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setRoamTrigger(I)Z

    .line 1983
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setNCHOModeEnabled(Z)Z

    :cond_31
    return-void
.end method

.method public exit()V
    .registers 2

    .line 1994
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v0, "Leaving Disconnected state"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
