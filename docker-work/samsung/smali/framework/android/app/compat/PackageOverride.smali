.class public final Landroid/app/compat/PackageOverride;
.super Ljava/lang/Object;
.source "PackageOverride.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/compat/PackageOverride$Builder;,
        Landroid/app/compat/PackageOverride$EvaluatedOverride;
    }
.end annotation


# static fields
.field public static final blacklist VALUE_DISABLED:I = 0x2

.field public static final blacklist VALUE_ENABLED:I = 0x1

.field public static final blacklist VALUE_UNDEFINED:I


# instance fields
.field private final blacklist mEnabled:Z

.field private final blacklist mMaxVersionCode:J

.field private final blacklist mMinVersionCode:J


# direct methods
.method private constructor blacklist <init>(JJZ)V
    .registers 6
    .param p1, "minVersionCode"    # J
    .param p3, "maxVersionCode"    # J
    .param p5, "enabled"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    .line 78
    iput-wide p3, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    .line 79
    iput-boolean p5, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(JJZLandroid/app/compat/PackageOverride-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/compat/PackageOverride;-><init>(JJZ)V

    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/compat/PackageOverride;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;

    .line 138
    new-instance v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/compat/PackageOverride;-><init>(JJZ)V

    return-object v6
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 145
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 146
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/compat/PackageOverride;

    .line 147
    .local v2, "that":Landroid/app/compat/PackageOverride;
    iget-wide v3, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    iget-wide v5, v2, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2c

    iget-wide v3, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    iget-wide v5, v2, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2c

    iget-boolean v3, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    iget-boolean v4, v2, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-ne v3, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    .line 145
    .end local v2    # "that":Landroid/app/compat/PackageOverride;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public blacklist evaluate(J)I
    .registers 5
    .param p1, "versionCode"    # J

    .line 88
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 89
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x2

    :goto_13
    return v0

    .line 91
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist evaluateForAllVersions()I
    .registers 5

    .line 100
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 101
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x2

    :goto_1a
    return v0

    .line 103
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMaxVersionCode()J
    .registers 3

    .line 121
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    return-wide v0
.end method

.method public whitelist getMinVersionCode()J
    .registers 3

    .line 112
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 160
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    iget-wide v2, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 161
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_1a
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-wide v3, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget-boolean v1, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "[%d,%d,%b]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 131
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    return-void
.end method
