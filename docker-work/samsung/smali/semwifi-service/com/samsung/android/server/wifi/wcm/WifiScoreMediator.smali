.class public Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;
.super Ljava/lang/Object;
.source "WifiScoreMediator.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.WifiScoreMediator"


# instance fields
.field private mDesinatedScore:I

.field public scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

.field public startSessionId:I

.field public stopSessionId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    const/16 v0, 0x3c

    .line 31
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    return-void
.end method


# virtual methods
.method public onSetScoreUpdateObserver(Landroid/net/wifi/WifiManager$ScoreUpdateObserver;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    return-void
.end method

.method public onStart(I)V
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiScoreMediator onStart with sessionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor.WifiScoreMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->startSessionId:I

    return-void
.end method

.method public onStop(I)V
    .registers 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiScoreMediator onStop with sessionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor.WifiScoreMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->stopSessionId:I

    return-void
.end method

.method public setWifiNetworkEnabled(Z)V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    const-string v1, "WifiConnectivityMonitor.WifiScoreMediator"

    if-eqz v0, :cond_21

    .line 53
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->startSessionId:I

    invoke-interface {v0, v2, p1}, Landroid/net/wifi/WifiManager$ScoreUpdateObserver;->notifyStatusUpdate(IZ)V

    if-eqz p1, :cond_17

    const/16 p1, 0x3c

    .line 55
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    const-string p0, "Set Wifi network that it can be default network"

    .line 56
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_17
    const/16 p1, 0x1e

    .line 58
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    const-string p0, "Set Wifi network not to be default network"

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_21
    const-string p0, "mWifiScoreMediator.scoreUpdateObserver not assigned properly"

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method public updateWifiScore()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    if-eqz v0, :cond_b

    .line 68
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->startSessionId:I

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    invoke-interface {v0, v1, p0}, Landroid/net/wifi/WifiManager$ScoreUpdateObserver;->notifyScoreUpdate(II)V

    :cond_b
    return-void
.end method
