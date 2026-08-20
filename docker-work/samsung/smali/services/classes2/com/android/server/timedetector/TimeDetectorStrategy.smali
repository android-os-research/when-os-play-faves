.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategy$Origin;
    }
.end annotation


# static fields
.field public static final ORIGIN_EXTERNAL:I = 0x5

.field public static final ORIGIN_GNSS:I = 0x4

.field public static final ORIGIN_MANUAL:I = 0x2

.field public static final ORIGIN_NETWORK:I = 0x3

.field public static final ORIGIN_TELEPHONY:I = 0x1


# direct methods
.method public static getTimeAt(Landroid/os/TimestampedValue;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 101
    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public static originToString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_33

    const/4 v0, 0x2

    if-eq p0, v0, :cond_30

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x5

    if-ne p0, v0, :cond_12

    const-string p0, "external"

    return-object p0

    .line 121
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const-string p0, "gnss"

    return-object p0

    :cond_2d
    const-string p0, "network"

    return-object p0

    :cond_30
    const-string p0, "manual"

    return-object p0

    :cond_33
    const-string/jumbo p0, "telephony"

    return-object p0
.end method

.method public static stringToOrigin(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 130
    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_72

    :goto_18
    move v0, v2

    goto :goto_50

    :sswitch_1a
    const-string v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_18

    :cond_23
    move v0, v4

    goto :goto_50

    :sswitch_25
    const-string/jumbo v0, "telephony"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_18

    :cond_2f
    move v0, v5

    goto :goto_50

    :sswitch_31
    const-string v0, "gnss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_18

    :cond_3a
    move v0, v6

    goto :goto_50

    :sswitch_3c
    const-string v0, "manual"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_18

    :cond_45
    move v0, v1

    goto :goto_50

    :sswitch_47
    const-string v3, "external"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto :goto_18

    :cond_50
    :goto_50
    packed-switch v0, :pswitch_data_88

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "originString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6b
    return v5

    :pswitch_6c
    return v1

    :pswitch_6d
    return v4

    :pswitch_6e
    return v6

    :pswitch_6f
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_72
    .sparse-switch
        -0x6c869c35 -> :sswitch_47
        -0x4075183a -> :sswitch_3c
        0x307d87 -> :sswitch_31
        0x2eaeb418 -> :sswitch_25
        0x6de15a2e -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
    .end packed-switch
.end method


# virtual methods
.method public abstract getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
.end method

.method public abstract suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
.end method

.method public abstract suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
.end method

.method public abstract suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
.end method

.method public abstract suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
.end method

.method public abstract suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
.end method
