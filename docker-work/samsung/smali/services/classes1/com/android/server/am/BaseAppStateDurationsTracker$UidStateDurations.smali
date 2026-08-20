.class public Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
.super Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
.source "BaseAppStateDurationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateDurationsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidStateDurations"
.end annotation


# direct methods
.method public constructor <init>(ILcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .registers 4

    const-string v0, ""

    .line 263
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;)V
    .registers 2

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)V

    return-void
.end method
