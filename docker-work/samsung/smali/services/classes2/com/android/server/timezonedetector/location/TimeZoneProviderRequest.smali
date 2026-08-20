.class public final Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;
.super Ljava/lang/Object;
.source "TimeZoneProviderRequest.java"


# static fields
.field public static final STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;


# instance fields
.field public final mEventFilteringAgeThreshold:Ljava/time/Duration;

.field public final mInitializationTimeout:Ljava/time/Duration;

.field public final mSendUpdates:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;-><init>(ZLjava/time/Duration;Ljava/time/Duration;)V

    sput-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    return-void
.end method

.method public constructor <init>(ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    .line 49
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    .line 50
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    return-void
.end method

.method public static createStartUpdatesRequest(Ljava/time/Duration;Ljava/time/Duration;)Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;
    .registers 4

    .line 57
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 58
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/time/Duration;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/time/Duration;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;-><init>(ZLjava/time/Duration;Ljava/time/Duration;)V

    return-object v0
.end method

.method public static createStopUpdatesRequest()Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 102
    const-class v2, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2f

    .line 105
    :cond_10
    check-cast p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 106
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    iget-boolean v3, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    iget-object v3, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    .line 107
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    iget-object p1, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    .line 108
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public getEventFilteringAgeThreshold()Ljava/time/Duration;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    return-object p0
.end method

.method public getInitializationTimeout()Ljava/time/Duration;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public sendUpdates()Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderRequest{mSendUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInitializationTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventFilteringAgeThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
