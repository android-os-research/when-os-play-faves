.class public final Landroid/os/BatteryUsageStatsQuery$Builder;
.super Ljava/lang/Object;
.source "BatteryUsageStatsQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFlags:I

.field private blacklist mFromTimestamp:J

.field private blacklist mMaxStatsAgeMs:J

.field private blacklist mPowerComponents:[I

.field private blacklist mToTimestamp:J

.field private blacklist mUserIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/BatteryUsageStatsQuery$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFromTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFromTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxStatsAgeMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerComponents(Landroid/os/BatteryUsageStatsQuery$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mToTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-void
.end method


# virtual methods
.method public blacklist addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 219
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    if-nez v0, :cond_c

    .line 220
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    .line 222
    :cond_c
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 223
    return-object p0
.end method

.method public blacklist aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 5
    .param p1, "fromTimestamp"    # J
    .param p3, "toTimestamp"    # J

    .line 291
    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFromTimestamp:J

    .line 292
    iput-wide p3, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mToTimestamp:J

    .line 293
    return-object p0
.end method

.method public blacklist build()Landroid/os/BatteryUsageStatsQuery;
    .registers 3

    .line 211
    new-instance v0, Landroid/os/BatteryUsageStatsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/os/BatteryUsageStatsQuery-IA;)V

    return-object v0
.end method

.method public blacklist includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 230
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 231
    return-object p0
.end method

.method public blacklist includePowerComponents([I)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2
    .param p1, "powerComponents"    # [I

    .line 272
    iput-object p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    .line 273
    return-object p0
.end method

.method public blacklist includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 262
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 263
    return-object p0
.end method

.method public blacklist includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 240
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 241
    return-object p0
.end method

.method public blacklist includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 281
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 282
    return-object p0
.end method

.method public blacklist powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 251
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 252
    return-object p0
.end method

.method public blacklist setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 3
    .param p1, "maxStatsAgeMs"    # J

    .line 301
    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    .line 302
    return-object p0
.end method
