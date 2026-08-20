.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdCallback;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback$Stub;
.source "SemHostapdHalV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SehHostapdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 4

    .line 398
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure on iface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sehHostapdCallbackEvent(Ljava/lang/String;)V
    .registers 6

    .line 403
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sehHostapdCallbackEvent=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isRegisteredVar:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 405
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApMonitor()Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->hostapdCallbackEvent(Ljava/lang/String;)V

    :cond_39
    if-eqz p1, :cond_5a

    const-string p0, "FAILED_ADD_ACCESSPOINT"

    .line 407
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 408
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :cond_5a
    if-eqz p1, :cond_7a

    const-string p0, "REMOVE_ACCESSPOINT_FAILED"

    .line 409
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 410
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    return-void
.end method
