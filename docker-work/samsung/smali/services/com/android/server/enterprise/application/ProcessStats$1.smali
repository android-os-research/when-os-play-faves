.class public Lcom/android/server/enterprise/application/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I
    .registers 6

    .line 239
    iget p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr p0, v0

    .line 240
    iget v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v1, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_13

    if-le p0, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1

    .line 246
    :cond_13
    iget-boolean p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iget-boolean v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eq p0, v0, :cond_1e

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    .line 250
    :cond_1e
    iget-boolean p1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iget-boolean p2, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eq p1, p2, :cond_29

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 236
    check-cast p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    check-cast p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ProcessStats$1;->compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I

    move-result p0

    return p0
.end method
