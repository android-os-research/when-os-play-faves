.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiCoexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "STATUS"

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_15

    .line 170
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputlaaEnterState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    goto :goto_1f

    .line 173
    :cond_15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 176
    :goto_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get android.intent.action.coexstatus mScellEnter : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiCoexManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 178
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 179
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    :cond_55
    return-void
.end method
