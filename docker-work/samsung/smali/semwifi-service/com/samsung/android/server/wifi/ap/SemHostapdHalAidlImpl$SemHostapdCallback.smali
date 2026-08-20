.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub;
.source "SemHostapdHalAidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemHostapdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;


# direct methods
.method public static synthetic $r8$lambda$oUnleMFY8uAFr99Xf8dJRs4V4Lw(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->lambda$sehHostapdCallbackEvent$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$sehHostapdCallbackEvent$0()V
    .registers 1

    .line 507
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->terminate()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "f40f81e9a2993c8dec149d5a4331e91ed53eef3d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public sehHostapdCallbackEvent(Ljava/lang/String;)V
    .registers 6

    .line 494
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetMHSDBG(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z

    move-result v0

    const-string v1, "sehHostapdCallbackEvent=  "

    const-string v2, "SemHostapdHalAidlImpl"

    if-eqz v0, :cond_2c

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isRegisteredVar:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 498
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApMonitor()Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->hostapdCallbackEvent(Ljava/lang/String;)V

    :cond_3f
    if-eqz p1, :cond_5c

    const-string v0, "FAILED_ADD_ACCESSPOINT"

    .line 500
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 501
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :cond_5c
    if-eqz p1, :cond_79

    const-string v0, "REMOVE_ACCESSPOINT_FAILED"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :cond_79
    if-eqz p1, :cond_a3

    const-string v0, "DISABLED"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a3
    :goto_a3
    return-void
.end method
