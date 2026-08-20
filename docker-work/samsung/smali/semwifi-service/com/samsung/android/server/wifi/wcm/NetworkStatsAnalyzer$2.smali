.class Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;
.super Ljava/lang/Object;
.source "NetworkStatsAnalyzer.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)V
    .registers 2

    .line 651
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;->this$0:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAnalyticsDisconnectReason(S)V
    .registers 2

    .line 654
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;->this$0:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->-$$Nest$fgetmNetworkStatsAnalyzerCallBack(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyAnalyticsDisconnectReason(S)V

    return-void
.end method

.method public notifyDnsResult(II)V
    .registers 3

    .line 659
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;->this$0:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->-$$Nest$fgetmNetworkStatsAnalyzerCallBack(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyDnsResult(II)V

    return-void
.end method
