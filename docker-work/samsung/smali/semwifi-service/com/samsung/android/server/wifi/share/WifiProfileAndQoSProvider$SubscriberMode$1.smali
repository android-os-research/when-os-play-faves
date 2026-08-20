.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;
.super Ljava/lang/Object;
.source "WifiProfileAndQoSProvider.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V
    .registers 2

    .line 1866
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedPasswordDelivery()V
    .registers 3

    .line 1885
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(II)V

    return-void
.end method

.method public onFoundDevicesForPassword(Z)V
    .registers 3

    .line 1890
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(II)V

    return-void
.end method

.method public onPasswordDelivered(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 5

    .line 1875
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmLastRequestedConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmLastRequestedConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;

    move-result-object v0

    .line 1876
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1877
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v0, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_40

    .line 1879
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong password of configKey is delivered "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiProfileShare.Sub"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method public onQoSDataDelivered(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 5

    .line 1869
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;

    .line 1870
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPartOfBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getSpeedArray()[I

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;[ILcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore-IA;)V

    const/16 p1, 0x15

    .line 1869
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
