.class public Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;
.super Ljava/lang/Object;
.source "ActivityRecordGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecordGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OccludedHolder"
.end annotation


# instance fields
.field public final values:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Lcom/android/server/wm/ActivityRecordGroups;->-$$Nest$sfgetGROUPS()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;->values:[Z

    return-void
.end method


# virtual methods
.method public fill(Z)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;->values:[Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public occluded()Z
    .registers 4

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;->values:[Z

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_d

    move v0, v2

    :cond_d
    return v0
.end method

.method public set(IZ)V
    .registers 4

    .line 98
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;->values:[Z

    aget-boolean v0, p0, p1

    or-int/2addr p2, v0

    aput-boolean p2, p0, p1

    return-void
.end method
