.class public final Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
.super Ljava/lang/Object;
.source "GeolocationTimeZoneSuggestion.java"


# instance fields
.field public mDebugInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mEffectiveFromElapsedMillis:J

.field public final mZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mEffectiveFromElapsedMillis:J

    if-nez p3, :cond_b

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    goto :goto_16

    .line 89
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    :goto_16
    return-void
.end method

.method public static createCertainSuggestion(JLjava/util/List;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    return-object v0
.end method

.method public static createUncertainSuggestion(J)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 4

    .line 99
    new-instance v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    return-object v0
.end method

.method public static parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 4

    const/4 v0, 0x0

    .line 180
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v0, "--zone_ids"

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 183
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 187
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 193
    invoke-static {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->parseZoneIdsArg(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 194
    new-instance v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    const-string p0, "Command line injection"

    .line 196
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseZoneIdsArg(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "UNCERTAIN"

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-string v0, "EMPTY"

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 206
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_31

    .line 209
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_31
    return-object v0
.end method

.method public static printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Geolocation suggestion options:"

    .line 217
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --zone_ids {UNCERTAIN|EMPTY|<Olson ID>+}"

    .line 218
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs addDebugInfo([Ljava/lang/String;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 145
    :cond_b
    iget-object p0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 153
    const-class v2, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    .line 157
    :cond_10
    check-cast p1, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 158
    iget-wide v2, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mEffectiveFromElapsedMillis:J

    iget-wide v4, p1, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mEffectiveFromElapsedMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget-object p0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    .line 159
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getDebugInfo()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez p0, :cond_9

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public getEffectiveFromElapsedMillis()J
    .registers 3

    .line 118
    iget-wide v0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mEffectiveFromElapsedMillis:J

    return-wide v0
.end method

.method public getZoneIds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 164
    iget-wide v1, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mEffectiveFromElapsedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeolocationTimeZoneSuggestion{mEffectiveFromElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mEffectiveFromElapsedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mZoneIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
