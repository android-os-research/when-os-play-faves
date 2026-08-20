.class public interface abstract Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;
.super Ljava/lang/Object;
.source "NetworkStatsAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INetworkStatsAnalyzerCallBack"
.end annotation


# virtual methods
.method public abstract needInternetCheck(II)V
.end method

.method public abstract notifyActivityCheckPoll()V
.end method

.method public abstract notifyAnalyticsDisconnectReason(S)V
.end method

.method public abstract notifyDnsCheckResult(I)V
.end method

.method public abstract notifyDnsResult(II)V
.end method

.method public abstract notifyDnsResultType(II)V
.end method

.method public abstract notifyThroughputUpdate(IJJJ)V
.end method
