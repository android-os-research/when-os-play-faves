.class public Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
.super Ljava/lang/Object;
.source "SemWifiMonitor.java"


# static fields
.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field public static final ASSOCIATED_BSSID_EVENT:I = 0x2402d

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final BASE:I = 0x24000

.field public static final BEACON_ABORT_EVENT:I = 0x2406b

.field public static final BEACON_INTERVAL_EVENT:I = 0x2406a

.field public static final CHANNEL_SWITCH_EVENT:I = 0x24070

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field public static final CONNECTIVITY_LOG_EVENT:I = 0x24069

.field private static final DRIVER_EVENT_CHANNEL_SWITCH:I = 0x4

.field private static final DRIVER_EVENT_CONNECTIVITY_LOGGING:I = 0x5

.field private static final DRIVER_EVENT_LEAKY_AP_DETECTION:I = 0x7

.field private static final DRIVER_EVENT_SCHEDULED_PM_TEARDOWN:I = 0x6

.field private static final DRIVER_EVENT_TWT_NOTIFICATION:I = 0x3

.field private static final DRIVER_EVENT_TWT_SETUP:I = 0x1

.field private static final DRIVER_EVENT_TWT_TEARDOWN:I = 0x2

.field public static final EAP_MESSAGE_HANDLE_EVENT:I = 0x24051

.field public static final EAP_NOTIFICATION_NO_NOTIFICATION_INFORMATION:I = 0x3ade68b1

.field public static final FILS_NETWORK_CONNECTION_EVENT:I = 0x2403e

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field public static final IFACE_CREATION_EVENT:I = 0x24064

.field public static final IFACE_REMOVAL_EVENT:I = 0x24065

.field public static final LEAKY_AP_DETECTION_EVENT:I = 0x24072

.field public static final MBO_OCE_BSS_TM_HANDLING_DONE:I = 0x24047

.field public static final NETWORK_ADDED_EVENT:I = 0x24052

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final NETWORK_NOT_FOUND_EVENT:I = 0x2402f

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field public static final ROAMING_CHANNEL_UPDATED_EVENT:I = 0x2406c

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field public static final SCHEDULED_PM_TEARDOWN_EVENT:I = 0x24071

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_BIGDATA_EVENT:I = 0x2400d

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field public static final SUP_SERVICE_DEATH_EVENT:I = 0x24068

.field public static final SUP_SERVICE_REGISTRATION_EVENT:I = 0x24067

.field public static final SUP_TERMINATING_EVENT:I = 0x24066

.field private static final TAG:Ljava/lang/String; = "SemWifiMonitor"

.field public static final TARGET_BSSID_EVENT:I = 0x2402e

.field public static final TWT_NOTIFICATION_EVENT:I = 0x2406f

.field public static final TWT_SETUP_EVENT:I = 0x2406d

.field public static final TWT_TEARDOWN_EVENT:I = 0x2406e

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b


# instance fields
.field private final mHandlerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 296
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    return-void
.end method

.method private sendMessage(I)V
    .registers 3

    const/4 v0, 0x0

    .line 320
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(II)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 328
    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(III)V
    .registers 5

    const/4 v0, 0x0

    .line 332
    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(IIILjava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    .line 336
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 324
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 3

    .line 292
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 341
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_12

    .line 343
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_12

    .line 346
    :cond_28
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 235
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 243
    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .registers 6

    const/4 v0, 0x0

    .line 247
    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    .line 251
    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 239
    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const-string v1, "SemWifiMonitor"

    if-eqz p1, :cond_56

    if-eqz v0, :cond_56

    .line 257
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 258
    iget p1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_ac

    .line 260
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 262
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_22

    .line 267
    :cond_38
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_ac

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropping event because ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is stopped"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 272
    :cond_56
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p1, :cond_5f

    const-string p1, "Sending to all monitors because there\'s no matching iface"

    .line 273
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_5f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_92

    goto :goto_69

    .line 279
    :cond_92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_96
    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_96

    .line 281
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_96

    .line 288
    :cond_ac
    :goto_ac
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    return-void
.end method

.method private sendTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V
    .registers 14

    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "setup_id"

    .line 676
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "status"

    .line 677
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "reason"

    .line 678
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "negotiation_type"

    .line 679
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "flow_type"

    .line 680
    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "triggered"

    .line 681
    invoke-virtual {v0, p2, p7}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "target_wake_time"

    .line 682
    invoke-virtual {v0, p2, p8, p9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "wake_duration"

    .line 683
    invoke-virtual {v0, p2, p10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "wake_interval"

    .line 684
    invoke-virtual {v0, p2, p11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const p2, 0x2406d

    .line 685
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const v2, 0x2402d

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 487
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V
    .registers 11

    const v2, 0x2402b

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p2

    move-object v5, p4

    .line 477
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11

    const v2, 0x24007

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 437
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastBcnEventAbort(Ljava/lang/String;I)V
    .registers 4

    const v0, 0x2406b

    .line 657
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    return-void
.end method

.method public broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .registers 12

    .line 645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 646
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ssid"

    .line 647
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "bssid"

    .line 648
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel"

    .line 649
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "beaconInterval"

    .line 650
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "timestamp"

    .line 651
    invoke-virtual {v0, p2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "systemtime"

    .line 652
    invoke-virtual {v0, p2, p8, p9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const p2, 0x2406a

    .line 653
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastBigdataEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 449
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "feature"

    .line 450
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    .line 451
    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x2400d

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 452
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastChannelSwitchEvent(Ljava/lang/String;I)V
    .registers 4

    const v0, 0x24070

    .line 704
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    return-void
.end method

.method public broadcastConnectivityLogEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24069

    .line 640
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastDriverEvent(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_94

    .line 744
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_93

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDriverEvent: undefined event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93

    :pswitch_26
    const v2, 0x24072

    .line 741
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_93

    :pswitch_2d
    if-eqz p3, :cond_93

    const v2, 0x24071

    .line 737
    aget v3, p3, v5

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    goto :goto_93

    :pswitch_38
    if-eqz v3, :cond_93

    .line 731
    array-length v2, v3

    if-lez v2, :cond_93

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    goto :goto_93

    :pswitch_57
    if-eqz p3, :cond_93

    const v2, 0x24070

    .line 727
    aget v3, p3, v5

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    goto :goto_93

    :pswitch_62
    if-eqz p3, :cond_93

    const v2, 0x2406f

    .line 722
    aget v3, p3, v5

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    goto :goto_93

    :pswitch_6d
    if-eqz p3, :cond_93

    const v2, 0x2406e

    .line 717
    aget v3, p3, v5

    aget v4, p3, v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    goto :goto_93

    :pswitch_7a
    if-eqz p3, :cond_93

    .line 711
    aget v2, p3, v5

    int-to-byte v2, v2

    const/4 v3, 0x0

    aget v4, p3, v4

    int-to-byte v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    aget v10, p3, v10

    const/4 v11, 0x3

    aget v11, p3, v11

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V

    :cond_93
    :goto_93
    return-void

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_6d
        :pswitch_62
        :pswitch_57
        :pswitch_38
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method

.method public broadcastEapEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p3, :cond_7

    .line 462
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_a

    :cond_7
    const p3, 0x3ade68b1

    :goto_a
    move v4, p3

    const v2, 0x24051

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p4

    .line 464
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastFilsNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const v2, 0x2403e

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 519
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastInterfaceCreatedEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24064

    .line 577
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastInterfaceRemovedEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24065

    .line 587
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastNetworkAddedEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24052

    .line 620
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const v2, 0x24003

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 508
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11

    const v2, 0x24004

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 532
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastNetworkIdentityRequestEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const v2, 0x2400f

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 421
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastNetworkNotFoundEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const v0, 0x2402f

    .line 630
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastRoamingChannelUpdatedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ssid"

    .line 663
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [I

    const/4 v1, 0x0

    .line 665
    :goto_11
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 666
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    const-string p3, "frequencies"

    .line 668
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const p2, 0x2406c

    .line 669
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24001

    .line 557
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24002

    .line 567
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastSupplicantServiceDeathEvent()V
    .registers 2

    const v0, 0x24068

    .line 611
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(I)V

    return-void
.end method

.method public broadcastSupplicantServiceRegistrationEvent()V
    .registers 2

    const v0, 0x24067

    .line 603
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(I)V

    return-void
.end method

.method public broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .registers 12

    .line 546
    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;

    invoke-direct {v5, p2, p3, p4, p5}, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;-><init>(ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    const v2, 0x24006

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const v2, 0x2402e

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 497
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastTerminatingEvent()V
    .registers 2

    const v0, 0x24066

    .line 595
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(I)V

    return-void
.end method

.method public broadcastTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V
    .registers 12

    .line 691
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V

    return-void
.end method

.method public broadcastTwtNotificationEvent(Ljava/lang/String;B)V
    .registers 4

    const v0, 0x2406f

    .line 700
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    return-void
.end method

.method public broadcastTwtTeardownEvent(Ljava/lang/String;BB)V
    .registers 5

    const v0, 0x2406e

    .line 696
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    return-void
.end method

.method public broadcastWpsFailEvent(Ljava/lang/String;II)V
    .registers 6

    const/4 v0, 0x1

    const v1, 0x24009

    if-eq p3, v0, :cond_29

    const/4 v0, 0x2

    if-eq p3, v0, :cond_24

    const/16 v0, 0xc

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x12

    if-eq p2, v0, :cond_1a

    if-nez p3, :cond_14

    goto :goto_15

    :cond_14
    move p2, p3

    :goto_15
    const/4 p3, 0x0

    .line 383
    invoke-direct {p0, p1, v1, p3, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    return-void

    :cond_1a
    const/4 p2, 0x6

    .line 371
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    return-void

    :cond_1f
    const/4 p2, 0x3

    .line 374
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    return-void

    :cond_24
    const/4 p2, 0x4

    .line 363
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    return-void

    :cond_29
    const/4 p2, 0x5

    .line 360
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    return-void
.end method

.method public broadcastWpsOverlapEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x2400a

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastWpsSuccessEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x24008

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastWpsTimeoutEvent(Ljava/lang/String;)V
    .registers 3

    const v0, 0x2400b

    .line 410
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized deregisterHandler(ILandroid/os/Handler;)V
    .registers 4

    monitor-enter p0

    .line 307
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    if-nez p1, :cond_d

    .line 309
    monitor-exit p0

    return-void

    .line 311
    :cond_d
    :try_start_d
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 312
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .registers 5

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1c

    if-nez p1, :cond_d

    .line 179
    monitor-exit p0

    return-void

    .line 181
    :cond_d
    :try_start_d
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1c

    if-nez p1, :cond_17

    .line 183
    monitor-exit p0

    return-void

    .line 185
    :cond_17
    :try_start_17
    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    .line 186
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 158
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method isMonitoring(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 192
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized registerHandler(ILandroid/os/Handler;)V
    .registers 5

    monitor-enter p0

    .line 298
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_15

    .line 300
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    :cond_15
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 304
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .registers 6

    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_15

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_25

    .line 170
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 171
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :cond_25
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 174
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMonitoring(Ljava/lang/String;Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 212
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_20

    const-string v0, "SemWifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 215
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 223
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_20

    const-string v0, "SemWifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 227
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
