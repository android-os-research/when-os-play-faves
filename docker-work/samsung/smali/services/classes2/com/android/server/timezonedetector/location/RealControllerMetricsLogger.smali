.class public final Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;
.super Ljava/lang/Object;
.source "RealControllerMetricsLogger.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static metricsState(Ljava/lang/String;)I
    .registers 10

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_6c

    goto :goto_60

    :sswitch_10
    const-string v0, "FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v3

    goto :goto_61

    :sswitch_1a
    const-string v0, "INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v7

    goto :goto_61

    :sswitch_24
    const-string v0, "CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v6

    goto :goto_61

    :sswitch_2e
    const-string v0, "UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v5

    goto :goto_61

    :sswitch_38
    const-string v0, "DESTROYED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v4

    goto :goto_61

    :sswitch_42
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v2

    goto :goto_61

    :sswitch_4c
    const-string v0, "PROVIDERS_INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v1

    goto :goto_61

    :sswitch_56
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v8

    goto :goto_61

    :cond_60
    :goto_60
    const/4 p0, -0x1

    :goto_61
    packed-switch p0, :pswitch_data_8e

    return v1

    :pswitch_65
    return v2

    :pswitch_66
    return v3

    :pswitch_67
    return v4

    :pswitch_68
    return v5

    :pswitch_69
    return v6

    :pswitch_6a
    return v7

    :pswitch_6b
    return v8

    :sswitch_data_6c
    .sparse-switch
        -0x4584e253 -> :sswitch_56
        -0x1be9cf16 -> :sswitch_4c
        0x19d1382a -> :sswitch_42
        0x1c83a5f9 -> :sswitch_38
        0x33ff1fc9 -> :sswitch_2e
        0x52aa9882 -> :sswitch_24
        0x72462c4d -> :sswitch_1a
        0x7b29883d -> :sswitch_10
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch
.end method


# virtual methods
.method public onStateChange(Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;->metricsState(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x19f

    .line 51
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method
