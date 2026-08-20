.class Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;
.super Ljava/lang/Object;
.source "DisconnectInfo.java"


# instance fields
.field public adpsState:I

.field public assocRejectStatusCode:I

.field public connectionDurationMinutes:I

.field public disconnectReason:I

.field public dns1:Ljava/lang/String;

.field public dns2:Ljava/lang/String;

.field public frequency:I

.field public gateway:Ljava/lang/String;

.field public handleState:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public ipSetting:I

.field public lastProcessMessage:I

.field public locallyGenerated:I

.field public netMask:I

.field public networkInternalType:I

.field public nl80211Mode:I

.field public oui:Ljava/lang/String;

.field public previousProcessMessage:I

.field public screenState:I

.field public wifiInfoBssid:Ljava/lang/String;

.field public wifiInfoSsid:Ljava/lang/String;

.field public wpaKeyMgmt:I

.field public wpaRssi:I

.field public wpaState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupTryingToAssocReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupDisconnectReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 55
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 56
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->setupBigDataDiscReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    return-void
.end method

.method private getUpdatedValue(II)I
    .registers 3

    const/4 p0, -0x1

    if-eq p2, p0, :cond_4

    return p2

    :cond_4
    return p1
.end method

.method private getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "unknown"

    if-nez p0, :cond_f

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    return-object p2

    .line 70
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    return-object v0

    :cond_16
    return-object p1
.end method

.method private setupBigDataDiscReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 5

    const/4 v0, -0x1

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wpaSecureType"

    .line 138
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaKeyMgmt:I

    const-string v2, "wpaState"

    .line 140
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaState:I

    const-string v2, "disconnectReason"

    .line 142
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    const-string v2, "assocReason"

    .line 144
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    const-string v2, "locallyGenerated"

    .line 146
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    if-ne v2, v0, :cond_54

    .line 148
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    if-eq v2, v0, :cond_54

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    :cond_54
    const-string v0, "oui"

    const-string v2, "unknown"

    .line 152
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->oui:Ljava/lang/String;

    const-string v0, "frequency"

    .line 154
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->frequency:I

    const/16 v0, -0x63

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "rssi"

    .line 156
    invoke-static {p1, v2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaRssi:I

    const-string v0, "apTypeInt"

    .line 158
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->networkInternalType:I

    const-string v0, "80211mode"

    .line 160
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->nl80211Mode:I

    return-void
.end method

.method private setupDisconnectReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    const-string v1, "ssid"

    const-string v2, "unknown"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    const-string v1, "bssid"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    .line 92
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    const/4 v1, -0x1

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "screen_on"

    .line 92
    invoke-static {p1, v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    .line 94
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    const-string v3, "adpsState"

    invoke-static {p1, v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    const-string v0, "pstate"

    .line 97
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->handleState:Ljava/lang/String;

    const-string v0, "pmsg"

    .line 99
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->lastProcessMessage:I

    const-string v0, "ppmsg"

    .line 101
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->previousProcessMessage:I

    const-string v0, "conn_duration"

    .line 103
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->connectionDurationMinutes:I

    return-void
.end method

.method private setupIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 5

    const/4 v0, -0x1

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ipAssignment"

    .line 108
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    const-string v1, "ip"

    const-string v2, "unknown"

    .line 110
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    const-string v1, "gw"

    .line 112
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    const-string v1, "dns1"

    .line 114
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    const-string v1, "dns2"

    .line 116
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    const-string v1, "networkPrefix"

    .line 118
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    return-void
.end method

.method private setupTryingToAssocReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 4

    const-string v0, "ssid"

    const-string v1, "unknown"

    .line 77
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    const-string v0, "bssid"

    .line 79
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen_on"

    .line 81
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    const-string v1, "adpsState"

    .line 83
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    return-void
.end method


# virtual methods
.method public getRssi()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaRssi:I

    return p0
.end method

.method public updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 6

    .line 123
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    const/4 v1, -0x1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ipAssignment"

    .line 123
    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    const-string v2, "ip"

    const-string v3, "unknown"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    const-string v2, "gw"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    const-string v2, "dns1"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    const-string v2, "dns2"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    .line 133
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    const-string v2, "networkPrefix"

    invoke-static {p1, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getUpdatedValue(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    return-void
.end method
