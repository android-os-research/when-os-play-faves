.class public final Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;
.super Ljava/lang/Object;
.source "AppCompatOverridesParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/compat/overrides/AppCompatOverridesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageOverrideComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/compat/PackageOverride;",
        ">;"
    }
.end annotation


# instance fields
.field public final mVersionCode:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-wide p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    return-void
.end method

.method public static getVersionProximity(Landroid/app/compat/PackageOverride;J)J
    .registers 5

    .line 390
    invoke-static {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 391
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    .line 393
    :cond_c
    invoke-static {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionBeforeRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 394
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0

    :cond_18
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z
    .registers 5

    .line 374
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isVersionBeforeRange(Landroid/app/compat/PackageOverride;J)Z
    .registers 5

    .line 382
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isVersionInRange(Landroid/app/compat/PackageOverride;J)Z
    .registers 5

    .line 365
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_12

    .line 366
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public compare(Landroid/app/compat/PackageOverride;Landroid/app/compat/PackageOverride;)I
    .registers 9

    .line 341
    iget-wide v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p1, v0, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionInRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    .line 342
    iget-wide v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p2, v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionInRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_15

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    return v2

    .line 348
    :cond_15
    iget-wide v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p1, v0, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    .line 349
    iget-wide v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p2, v4, v5}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v1

    if-eq v0, v1, :cond_28

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    return v2

    .line 356
    :cond_28
    iget-wide v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    .line 357
    invoke-static {p1, v0, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->getVersionProximity(Landroid/app/compat/PackageOverride;J)J

    move-result-wide v0

    iget-wide p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p2, p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->getVersionProximity(Landroid/app/compat/PackageOverride;J)J

    move-result-wide p0

    .line 356
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 331
    check-cast p1, Landroid/app/compat/PackageOverride;

    check-cast p2, Landroid/app/compat/PackageOverride;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->compare(Landroid/app/compat/PackageOverride;Landroid/app/compat/PackageOverride;)I

    move-result p0

    return p0
.end method
