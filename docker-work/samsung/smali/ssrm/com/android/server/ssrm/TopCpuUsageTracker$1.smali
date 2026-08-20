.class Lcom/android/server/ssrm/TopCpuUsageTracker$1;
.super Ljava/lang/Object;
.source "TopCpuUsageTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/TopCpuUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;)I
    .registers 9
    .param p1, "sta"    # Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .param p2, "stb"    # Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 281
    iget v0, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    iget v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    add-int/2addr v0, v1

    .line 282
    .local v0, "ta":I
    iget v1, p2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    iget v2, p2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    add-int/2addr v1, v2

    .line 283
    .local v1, "tb":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_13

    .line 284
    if-le v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    return v2

    .line 286
    :cond_13
    iget-boolean v4, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    if-eq v4, v5, :cond_20

    .line 287
    iget-boolean v4, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    if-eqz v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    return v2

    .line 289
    :cond_20
    iget-boolean v4, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->removed:Z

    if-eq v4, v5, :cond_2d

    .line 290
    iget-boolean v4, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    if-eqz v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    return v2

    .line 292
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 278
    check-cast p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    check-cast p2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/TopCpuUsageTracker$1;->compare(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;)I

    move-result p1

    return p1
.end method
