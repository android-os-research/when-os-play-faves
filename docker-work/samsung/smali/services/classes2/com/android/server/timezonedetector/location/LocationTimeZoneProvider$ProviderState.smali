.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
.super Ljava/lang/Object;
.source "LocationTimeZoneProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState$ProviderStateEnum;
    }
.end annotation


# static fields
.field public static final PROVIDER_STATE_DESTROYED:I = 0x6

.field public static final PROVIDER_STATE_PERM_FAILED:I = 0x5

.field public static final PROVIDER_STATE_STARTED_CERTAIN:I = 0x2

.field public static final PROVIDER_STATE_STARTED_INITIALIZING:I = 0x1

.field public static final PROVIDER_STATE_STARTED_UNCERTAIN:I = 0x3

.field public static final PROVIDER_STATE_STOPPED:I = 0x4

.field public static final PROVIDER_STATE_UNKNOWN:I


# instance fields
.field public final currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public final event:Landroid/service/timezone/TimeZoneProviderEvent;

.field public final mDebugInfo:Ljava/lang/String;

.field public final mStateEntryTimeMillis:J

.field public final provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final stateEnum:I


# direct methods
.method public static bridge synthetic -$$Nest$smprettyPrintStateEnum(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->prettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    .registers 6

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 190
    iput p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 191
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 192
    iput-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->mStateEntryTimeMillis:J

    .line 194
    iput-object p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->mDebugInfo:Ljava/lang/String;

    return-void
.end method

.method public static createStartingState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .registers 8

    .line 200
    new-instance v6, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Initial state"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V

    return-object v6
.end method

.method public static prettyPrintStateEnum(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "Destroyed (6)"

    return-object p0

    :pswitch_1d
    const-string p0, "Perm failure (5)"

    return-object p0

    :pswitch_20
    const-string p0, "Stopped (4)"

    return-object p0

    :pswitch_23
    const-string p0, "Started uncertain (3)"

    return-object p0

    :pswitch_26
    const-string p0, "Started certain (2)"

    return-object p0

    :pswitch_29
    const-string p0, "Started initializing (1)"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 318
    :cond_12
    check-cast p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 319
    iget v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    iget v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    iget-object v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 320
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 321
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 326
    iget v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .registers 3

    .line 286
    iget p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x3

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method public isTerminated()Z
    .registers 2

    .line 293
    iget p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_b

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .registers 12

    .line 214
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_100

    .line 238
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid this.stateEnum="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :pswitch_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal transition out of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 235
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->prettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d9

    :pswitch_3f
    const-string v0, ", currentUserConfig="

    packed-switch p1, :pswitch_data_112

    .line 278
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown newStateEnum="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5b
    if-nez p2, :cond_60

    if-nez p3, :cond_60

    goto :goto_a9

    .line 269
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Terminal state: event and currentUserConfig must be null, newStateEnum="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", event="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_85
    if-nez p2, :cond_8a

    if-nez p3, :cond_8a

    goto :goto_a9

    .line 250
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Stopped state: event and currentUserConfig must be null, event="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a7
    if-eqz p3, :cond_b6

    .line 281
    :goto_a9
    new-instance v6, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V

    return-object v6

    .line 261
    :cond_b6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Started state: currentUserConfig must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :pswitch_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot transition to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->prettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_d9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Must transition from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->prettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->prettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_be
        :pswitch_a7
        :pswitch_a7
        :pswitch_a7
        :pswitch_85
        :pswitch_5b
        :pswitch_5b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderState{stateEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 302
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->prettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentUserConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStateEntryTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->mStateEntryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
