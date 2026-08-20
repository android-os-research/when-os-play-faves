.class Lcom/android/internal/telephony/dataconnection/DcTracker$AllowedNetworkTypesListener;
.super Landroid/telephony/TelephonyCallback;
.source "DcTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowedNetworkTypesListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 12267
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$AllowedNetworkTypesListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$AllowedNetworkTypesListener;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void
.end method


# virtual methods
.method public whitelist onAllowedNetworkTypesChanged(IJ)V
    .registers 6

    if-eqz p1, :cond_3

    return-void

    .line 12275
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmAllowedNetworkType(Lcom/android/internal/telephony/dataconnection/DcTracker;)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_17

    .line 12276
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmAllowedNetworkType(Lcom/android/internal/telephony/dataconnection/DcTracker;J)V

    .line 12277
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateApnForLteRoaming()Z

    :cond_17
    return-void
.end method
