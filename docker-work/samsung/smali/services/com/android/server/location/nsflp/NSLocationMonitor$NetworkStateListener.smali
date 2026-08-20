.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkStateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V
    .registers 3

    .line 677
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Constructor, NetworkStateListener subId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSLocationMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;ILcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 10

    const-string v0, "NSLocationMonitor"

    if-nez p1, :cond_b

    const-string/jumbo p0, "onServiceStateChanged null"

    .line 686
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 690
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 691
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v2

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceStateChanged, state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 699
    invoke-virtual {p1, v4, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_70

    .line 703
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    .line 704
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 705
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p1

    const/4 v7, 0x3

    if-ne p1, v7, :cond_4a

    move v4, v5

    .line 707
    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "networkType["

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / nrState="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_70
    const-string p1, "Failed to get registration info from serviceState"

    .line 709
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "unknown"

    move v5, v4

    .line 712
    :goto_79
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "serviceState"

    .line 713
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isRegistered"

    .line 714
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "nrState"

    .line 715
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "channelNumber"

    .line 716
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "networkType"

    .line 717
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "networkTypeName"

    .line 718
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->SERVICE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method
