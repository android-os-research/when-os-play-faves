.class Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;
.super Landroid/os/Handler;
.source "SemWifiTrafficControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TCHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;Landroid/os/Looper;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    goto/16 :goto_dd

    .line 94
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;

    .line 95
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->iface:Ljava/lang/String;

    .line 96
    iget-boolean v1, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->enabled:Z

    .line 97
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->limit:I

    .line 98
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    if-eqz v1, :cond_38

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4f

    .line 100
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    if-eqz v0, :cond_d6

    if-eqz v1, :cond_5f

    if-gtz p1, :cond_63

    :cond_5f
    if-nez v1, :cond_d6

    if-gez p1, :cond_d6

    :cond_63
    const-string v2, "swlan"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce

    const-string v2, "wlan"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "p2p"

    if-nez v2, :cond_7b

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 104
    :cond_7b
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 105
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgettwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I

    move-result v2

    if-nez v2, :cond_92

    .line 106
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$mqueryTwtCapability(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fputtwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;I)V

    .line 109
    :cond_92
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgetconnectedIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    const-string p1, "TC command for non-existing interface"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    goto :goto_dd

    .line 112
    :cond_a6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgettwtAvailable(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b8

    .line 113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgetmTwtMonitor(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setTCRule(ZI)V

    .line 117
    :cond_b8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 119
    :try_start_bc
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->-$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lcom/android/internal/net/IOemNetd;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c5} :catch_c6
    .catch Landroid/os/ServiceSpecificException; {:try_start_bc .. :try_end_c5} :catch_c6

    goto :goto_dd

    .line 121
    :catch_c6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    const-string p1, "Error from Netd processing"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    goto :goto_dd

    .line 124
    :cond_ce
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    const-string p1, "Wrong interface name"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    goto :goto_dd

    .line 127
    :cond_d6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    const-string p1, "Wrong parameter"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->addEvent(Ljava/lang/String;)V

    :goto_dd
    return-void
.end method
