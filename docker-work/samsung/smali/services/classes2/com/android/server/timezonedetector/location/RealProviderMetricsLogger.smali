.class public final Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;
.super Ljava/lang/Object;
.source "RealProviderMetricsLogger.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;


# instance fields
.field public final mProviderIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;->mProviderIndex:I

    return-void
.end method

.method public static metricsProviderState(I)I
    .registers 1

    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onProviderStateChanged(I)V
    .registers 3

    .line 55
    iget p0, p0, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;->mProviderIndex:I

    .line 57
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;->metricsProviderState(I)I

    move-result p1

    const/16 v0, 0x167

    .line 55
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method
