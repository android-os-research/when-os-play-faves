.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;
.super Ljava/lang/Object;
.source "SemWifiCoexManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    return-void
.end method


# virtual methods
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

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SoftApInfo;

    .line 280
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfoChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiCoexManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetCSC_SUPPORT_5G_ANT_SHARE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 285
    :cond_41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    :cond_59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)Z

    goto :goto_4

    :cond_5f
    return-void
.end method

.method public onStateChanged(II)V
    .registers 4

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStateChanged:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWifiCoexManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_40

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_30

    goto :goto_40

    .line 272
    :cond_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_73

    const-string p0, "onStateChanged: WIFI_AP_STATE_ENABLED"

    .line 273
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_40
    :goto_40
    const-string p1, "onStateChanged: WIFI_AP_STATE_DISABLED"

    .line 264
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 266
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetCSC_SUPPORT_5G_ANT_SHARE()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 269
    :cond_56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-nez p1, :cond_6e

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-nez p1, :cond_6e

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 270
    :cond_6e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)Z

    :cond_73
    :goto_73
    return-void
.end method
