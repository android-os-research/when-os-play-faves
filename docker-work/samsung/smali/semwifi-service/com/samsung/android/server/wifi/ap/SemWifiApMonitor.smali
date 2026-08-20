.class public Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;
.super Ljava/lang/Object;
.source "SemWifiApMonitor.java"


# static fields
.field public static final AP_CHANGED_CHANNEL_EVENT:I = 0x6f

.field public static final AP_CSA_FINISHED_EVENT:I = 0x6e

.field public static final AP_STA_ASSOCIATION_EVENT:I = 0x66

.field public static final AP_STA_CONNECTED_EVENT:I = 0x77

.field public static final AP_STA_DEAUTH_EVENT:I = 0x75

.field public static final AP_STA_DISASSOCIATION_EVENT:I = 0x67

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x65

.field public static final AP_STA_JOIN_EVENT:I = 0x70

.field public static final AP_STA_NEW_EVENT:I = 0x71

.field public static final AP_STA_NOTALLOW_EVENT:I = 0x72

.field public static final AP_STA_NOTIFY_DISASSOCIATION_EVENT:I = 0x73

.field public static final AP_STA_POSSIBLE_PSK_MISMATCH_EVENT:I = 0x6c

.field public static final AP_STA_REMOVE_EVENT:I = 0x74

.field public static final AP_TSF_INFO_EVENT:I = 0x7a

.field private static final BASE:I = 0x64

.field public static final CMD_AP_STA_DISCONNECT:I = 0x78

.field public static final CMD_AP_STA_RECONNECT:I = 0x79

.field public static final CTRL_EVENT_DRIVER_STATE_EVENT:I = 0x6d

.field private static final TAG:Ljava/lang/String; = "SemWifiApMonitor"

.field public static final WPS_FAIL_EVENT:I = 0x69

.field public static final WPS_OVERLAP_DETECTED:I = 0x76

.field public static final WPS_PIN_NEEDED_EVENT:I = 0x6b

.field public static final WPS_SUCCESS_EVENT:I = 0x68

.field public static final WPS_TIMEOUT_EVENT:I = 0x6a


# instance fields
.field private MHSDBG:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->MHSDBG:Z

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_a

    .line 85
    invoke-virtual {p1, p0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    return-void
.end method


# virtual methods
.method public hostapdCallbackEvent(Ljava/lang/String;)V
    .registers 7

    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->MHSDBG:Z

    if-eqz v0, :cond_1a

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hostapdCallbackEvent,tstr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-string v0, " "

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v1, Ljava/util/StringJoiner;

    invoke-direct {v1, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 99
    :goto_26
    array-length v2, p1

    if-ge v0, v2, :cond_31

    .line 100
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 101
    :cond_31
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    aget-object v2, p1, v1

    const-string v3, "WPS-OVERLAP-DETECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    const/16 v2, 0x76

    .line 105
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 107
    :cond_4a
    aget-object v2, p1, v1

    const-string v4, "WPS-FAIL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/16 v2, 0x69

    .line 109
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 111
    :cond_5d
    aget-object v2, p1, v1

    const-string v4, "WPS-SUCCESS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/16 v2, 0x68

    .line 113
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 115
    :cond_70
    aget-object v2, p1, v1

    const-string v4, "WPS-TIMEOUT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const/16 v2, 0x6a

    .line 117
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 119
    :cond_83
    aget-object v2, p1, v1

    const-string v4, "WPS-PIN-NEEDED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    const/16 v2, 0x6b

    .line 121
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 123
    :cond_96
    aget-object v2, p1, v1

    const-string v4, "AP_STA_CONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const/16 p1, 0x66

    .line 125
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_181

    .line 127
    :cond_ab
    aget-object v2, p1, v1

    const-string v4, "AP-STA-REMOVE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    const/16 p1, 0x74

    .line 129
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_181

    .line 131
    :cond_c0
    aget-object v2, p1, v1

    const-string v4, "AP-STA-DEAUTH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    const/16 p1, 0x75

    .line 133
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_181

    .line 135
    :cond_d5
    aget-object v2, p1, v1

    const-string v4, "AP-STA-DISASSOC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    const/16 p1, 0x67

    .line 137
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_181

    .line 139
    :cond_ea
    aget-object v2, p1, v1

    const-string v4, "CTRL-EVENT-DRIVER-STATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const/16 p1, 0x6d

    .line 141
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_181

    .line 143
    :cond_ff
    aget-object v2, p1, v1

    const-string v4, "AP-STA-POSSIBLE-PSK-MISMATCH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    const/16 p1, 0x6c

    .line 145
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_181

    .line 147
    :cond_113
    aget-object v2, p1, v1

    const-string v4, "AP-CSA-FINISHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    const/16 p1, 0x6e

    .line 149
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_181

    .line 151
    :cond_127
    aget-object v2, p1, v1

    const-string v4, "AP-STA-NOTAllOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    const/16 p1, 0x72

    .line 153
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_181

    .line 155
    :cond_13b
    aget-object v2, p1, v1

    const-string v4, "AP-STA-NOTIF-DISASSOC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    const/16 p1, 0x65

    .line 157
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 158
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    goto :goto_181

    .line 162
    :cond_15a
    aget-object v2, p1, v1

    const-string v4, "AP-STA-NEW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    const/16 p1, 0x71

    .line 164
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_181

    .line 166
    :cond_16e
    aget-object p1, p1, v1

    const-string v1, "AP_TSF_INFO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_181

    const/16 p1, 0x7a

    .line 168
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    :cond_181
    :goto_181
    return-void
.end method

.method public declared-synchronized registerHandler(Landroid/os/Handler;)V
    .registers 5

    monitor-enter p0

    .line 79
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->MHSDBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "SemWifiApMonitor"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1b
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->mHandler:Landroid/os/Handler;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 82
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
