.class public Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;
.super Ljava/lang/Object;
.source "TelephonySubscriptionTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/TelephonySubscriptionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveDataSubscriptionId()I
    .registers 1

    .line 572
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z
    .registers 2

    .line 567
    invoke-static {p1}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p0

    return p0
.end method
