.class public Lcom/android/server/location/gnss/GnssPowerStats;
.super Ljava/lang/Object;
.source "GnssPowerStats.java"


# instance fields
.field public final mElapsedRealtimeFlags:I

.field public final mElapsedRealtimeNanos:J

.field public final mElapsedRealtimeUncertaintyNanos:D

.field public final mMultibandAcquisitionModeEnergyMilliJoule:D

.field public final mMultibandTrackingModeEnergyMilliJoule:D

.field public final mOtherModesEnergyMilliJoule:[D

.field public final mSinglebandAcquisitionModeEnergyMilliJoule:D

.field public final mSinglebandTrackingModeEnergyMilliJoule:D

.field public final mTotalEnergyMilliJoule:D


# direct methods
.method public constructor <init>(IJDDDDDD[D)V
    .registers 20

    move-object v0, p0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 57
    iput v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    move-wide v1, p2

    .line 58
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    move-wide v1, p4

    .line 59
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    move-wide v1, p6

    .line 60
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    move-wide v1, p8

    .line 61
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    move-wide v1, p10

    .line 62
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    move-wide v1, p12

    .line 63
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    move-wide/from16 v1, p14

    .line 64
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    move-object/from16 v1, p16

    .line 65
    iput-object v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;Landroid/location/GnssCapabilities;)V
    .registers 9

    .line 150
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeNanos()Z

    move-result p1

    if-eqz p1, :cond_38

    const-string/jumbo p1, "time: "

    .line 151
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result p3

    if-eqz p3, :cond_38

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    const-wide/16 v2, 0x0

    cmpl-double p3, v0, v2

    if-eqz p3, :cond_38

    const-string p3, " +/- "

    .line 154
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 158
    :cond_38
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerTotal()Z

    move-result p1

    const-string/jumbo p3, "mJ"

    if-eqz p1, :cond_4f

    const-string/jumbo p1, "total power: "

    .line 159
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 161
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 163
    :cond_4f
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerSinglebandTracking()Z

    move-result p1

    if-eqz p1, :cond_63

    const-string/jumbo p1, "single-band tracking power: "

    .line 164
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 166
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    :cond_63
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerMultibandTracking()Z

    move-result p1

    if-eqz p1, :cond_77

    const-string/jumbo p1, "multi-band tracking power: "

    .line 169
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 171
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 173
    :cond_77
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerSinglebandAcquisition()Z

    move-result p1

    if-eqz p1, :cond_8b

    const-string/jumbo p1, "single-band acquisition power: "

    .line 174
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 176
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 178
    :cond_8b
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerMultibandAcquisition()Z

    move-result p1

    if-eqz p1, :cond_9f

    const-string/jumbo p1, "multi-band acquisition power: "

    .line 179
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 181
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 183
    :cond_9f
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerOtherModes()Z

    move-result p1

    if-eqz p1, :cond_d2

    const/4 p1, 0x0

    .line 184
    :goto_a6
    iget-object p4, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    array-length p4, p4

    if-ge p1, p4, :cond_d2

    .line 185
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "other mode ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] power: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget-object p4, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    aget-wide v0, p4, p1

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 187
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a6

    :cond_d2
    return-void
.end method

.method public getElapsedRealtimeNanos()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getElapsedRealtimeUncertaintyNanos()D
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    return-wide v0
.end method

.method public getMultibandAcquisitionModeEnergyMilliJoule()D
    .registers 3

    .line 130
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getMultibandTrackingModeEnergyMilliJoule()D
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getOtherModesEnergyMilliJoule()[D
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    return-object p0
.end method

.method public getSinglebandAcquisitionModeEnergyMilliJoule()D
    .registers 3

    .line 122
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getSinglebandTrackingModeEnergyMilliJoule()D
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getTotalEnergyMilliJoule()D
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    return-wide v0
.end method

.method public hasElapsedRealtimeNanos()Z
    .registers 2

    .line 70
    iget p0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasElapsedRealtimeUncertaintyNanos()Z
    .registers 1

    .line 75
    iget p0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public validate()V
    .registers 1

    .line 142
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeNanos()Z

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    return-void
.end method
