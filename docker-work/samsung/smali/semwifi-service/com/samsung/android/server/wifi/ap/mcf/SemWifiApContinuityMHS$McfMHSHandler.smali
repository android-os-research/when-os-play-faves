.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;
.super Landroid/os/Handler;
.source "SemWifiApContinuityMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "McfMHSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Landroid/os/Looper;)V
    .registers 3

    .line 322
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 323
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 327
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_88

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    const-string p0, "MHSMcf:MHS"

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    :cond_25
    const-string p1, "MHSMcf:MHS"

    const-string v0, "CMD_MHS_ENABLED_TIMEOUT"

    .line 340
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    .line 342
    :try_start_33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 343
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Z)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 346
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$msendMHSConfigMessage(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Ljava/util/Set;Ljava/lang/Boolean;)V

    .line 347
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 350
    :cond_66
    monitor-exit p1

    goto :goto_de

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_33 .. :try_end_6a} :catchall_68

    throw p0

    .line 336
    :cond_6b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->stopAdvertisement()I

    move-result p0

    const-string p1, "MHSMcf:MHS"

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD_AH_STOP_ADVERTISE:return value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    :cond_88
    const-string p1, "MHSMcf:MHS"

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD_AH_START_ADVERTISE:isServiceBinded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isEnabledAHSSettings():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$misAutoHotspotDBEnabled(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result p1

    if-eqz p1, :cond_de

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$misAutoHotspotDBEnabled(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result p1

    if-eqz p1, :cond_de

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->startAdvertisement()I

    move-result p0

    const-string p1, "MHSMcf:MHS"

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD_AH_START_ADVERTISE, retValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    :goto_de
    return-void
.end method
