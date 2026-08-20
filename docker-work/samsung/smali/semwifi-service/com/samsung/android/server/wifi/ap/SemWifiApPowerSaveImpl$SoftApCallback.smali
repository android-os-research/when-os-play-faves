.class Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;
.super Ljava/lang/Object;
.source "SemWifiApPowerSaveImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V

    return-void
.end method


# virtual methods
.method public onConnectedClientsChanged(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedClientsChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",:clients size,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApPowerSaveImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmStateMachineMap(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    if-eqz p1, :cond_4c

    const/4 v0, 0x3

    .line 199
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->sendMessage(II)V

    .line 200
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmTempClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;I)V

    .line 201
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$mcheckMaxClient(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V

    :cond_4c
    return-void
.end method

.method public onInfoChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 209
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$sfgetMHSDBG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfoChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiApPowerSaveImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2d
    return-void
.end method

.method public onStateChanged(II)V
    .registers 6

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStateChanged:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWifiApPowerSaveImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V

    .line 173
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I

    move-result p1

    const/4 p2, 0x0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_a1

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I

    move-result p1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_a1

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I

    move-result p1

    const/16 v1, 0xe

    if-ne p1, v1, :cond_3b

    goto :goto_a1

    .line 179
    :cond_3b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_ac

    .line 181
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifichip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmPowerSaveChecked(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I

    move-result v0

    if-nez v0, :cond_91

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    const-string v0, "Broadcom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setHotspoPciePowerManage(Z)V

    goto :goto_ac

    .line 188
    :cond_91
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmStartTimeOfHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;J)V

    .line 189
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmIsEnabledSoftAp(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V

    goto :goto_ac

    .line 176
    :cond_a1
    :goto_a1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$msendMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V

    .line 177
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmIsEnabledSoftAp(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V

    :cond_ac
    :goto_ac
    return-void
.end method
