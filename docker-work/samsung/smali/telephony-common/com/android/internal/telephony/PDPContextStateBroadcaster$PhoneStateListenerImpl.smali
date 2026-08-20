.class Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneStateListenerImpl"
.end annotation


# instance fields
.field blacklist mContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public whitelist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 8

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->-$$Nest$sfgetDEBUG_LOG()Z

    move-result v0

    const-string v1, "PDPContextStateBroadcaster"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DR Status"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_20
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_10a

    if-eqz p1, :cond_10a

    .line 97
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->-$$Nest$smdataStateToString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->-$$Nest$sfgetDEBUG_LOG()Z

    move-result v2

    if-eqz v2, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkState == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4a
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 103
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApnTypeBitMask()I

    move-result p1

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->-$$Nest$sfgetDEBUG_LOG()Z

    move-result v4

    if-eqz v4, :cond_70

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApnTypes == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_70
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->-$$Nest$sfgetDEBUG_LOG()Z

    move-result v4

    if-eqz v4, :cond_8e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sApnType == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    if-eqz v2, :cond_10a

    if-eqz v3, :cond_10a

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->-$$Nest$sfgetDEBUG_LOG()Z

    move-result v4

    if-eqz v4, :cond_b0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "linkProps == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_b0
    invoke-static {}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->-$$Nest$sfgetDEBUG_LOG()Z

    move-result v4

    if-eqz v4, :cond_ca

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "objApnSetting == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_ca
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getId()I

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "CONNECTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 114
    iget-object p0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendRequested(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V

    goto :goto_10a

    .line 115
    :cond_e1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f5

    const-string v1, "CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v2, p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendConnected(Landroid/content/Context;Landroid/net/LinkProperties;Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V

    goto :goto_10a

    .line 117
    :cond_f5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10a

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;->mContext:Landroid/content/Context;

    const-string v0, "Discon"

    invoke-static {p0, v2, p1, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendDisconnected(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10a
    :goto_10a
    return-void
.end method
