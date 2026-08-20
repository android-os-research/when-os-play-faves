.class public Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;
.super Ljava/lang/Object;
.source "SemStateChangeResult.java"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public networkId:I

.field public state:Landroid/net/wifi/SupplicantState;

.field public wifiSsid:Lcom/samsung/android/wifi/SemWifiSsid;


# direct methods
.method public constructor <init>(ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->wifiSsid:Lcom/samsung/android/wifi/SemWifiSsid;

    .line 38
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->BSSID:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->networkId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " SSID: "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->wifiSsid:Lcom/samsung/android/wifi/SemWifiSsid;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " BSSID: "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " nid: "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " state: "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
