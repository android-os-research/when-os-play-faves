.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApContinuityMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApContinuityMHSBR"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e1

    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    const-string v0, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputmIntentSoftApState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;I)V

    const-string p1, "MHSMcf:MHS"

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WIFI_AP_STATE_CHANGED_ACTION,mIntentSoftApState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmIntentSoftApState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":mWaitingToEnableSmartly:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmIntentSoftApState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_9c

    .line 123
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 125
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    .line 128
    :try_start_76
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_96

    .line 129
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$msendMHSConfigMessage(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 132
    :cond_96
    monitor-exit p1

    goto/16 :goto_111

    :catchall_99
    move-exception p0

    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_76 .. :try_end_9b} :catchall_99

    throw p0

    .line 134
    :cond_9c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmIntentSoftApState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)I

    move-result p1

    if-eq p1, v2, :cond_ae

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmIntentSoftApState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_111

    .line 135
    :cond_ae
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_111

    .line 139
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$msendMHSConfigMessage(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto :goto_111

    :cond_e1
    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const-string p1, "STA_COUNT"

    const/16 v0, 0xa

    .line 145
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_111

    .line 147
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V

    const-string p1, "MHSMcf:MHS"

    const-string p2, "disable MHS, which enabled through mcf"

    .line 149
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$SemWifiApContinuityMHSBR;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_111
    :goto_111
    return-void
.end method
