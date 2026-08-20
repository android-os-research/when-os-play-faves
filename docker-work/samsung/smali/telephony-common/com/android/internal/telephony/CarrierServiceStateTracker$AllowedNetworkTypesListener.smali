.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;
.super Landroid/telephony/TelephonyCallback;
.source "CarrierServiceStateTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllowedNetworkTypesListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAllowedNetworkTypesChanged(IJ)V
    .registers 6

    if-eqz p1, :cond_3

    return-void

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmAllowedNetworkType(Lcom/android/internal/telephony/CarrierServiceStateTracker;)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_17

    .line 94
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fputmAllowedNetworkType(Lcom/android/internal/telephony/CarrierServiceStateTracker;J)V

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$mhandleAllowedNetworkTypeChanged(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    :cond_17
    return-void
.end method
