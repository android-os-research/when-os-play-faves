.class public final Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppRequestObserver"
.end annotation


# instance fields
.field public final mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppRequestedModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 1582
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 1584
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "  AppRequestObserver"

    .line 1668
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mAppRequestedModeByDisplay:"

    .line 1669
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1670
    :goto_c
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string v3, " -> "

    const-string v4, "    "

    if-ge v1, v2, :cond_41

    .line 1671
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1672
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    .line 1673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_41
    const-string v1, "    mAppPreferredRefreshRateRangeByDisplay:"

    .line 1675
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    :goto_46
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_77

    .line 1677
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1678
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1679
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 1680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_77
    return-void
.end method

.method public final findModeByIdLocked(II)Landroid/view/Display$Mode;
    .registers 7

    .line 1655
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    const/4 p1, 0x0

    if-nez p0, :cond_10

    return-object p1

    .line 1659
    :cond_10
    array-length v0, p0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 1660
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    if-ne v3, p2, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    return-object p1
.end method

.method public final setAppPreferredRefreshRateRangeLocked(IFF)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_d

    cmpl-float v1, p3, v0

    if-lez v1, :cond_b

    goto :goto_d

    :cond_b
    :goto_b
    move-object v1, v2

    goto :goto_26

    :cond_d
    :goto_d
    cmpl-float v1, p3, v0

    if-lez v1, :cond_12

    goto :goto_14

    :cond_12
    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1630
    :goto_14
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v1, p2, p3}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    .line 1631
    iget p2, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_26

    iget p2, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_26

    goto :goto_b

    .line 1637
    :cond_26
    :goto_26
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1638
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1637
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    return-void

    :cond_33
    if-eqz v1, :cond_43

    .line 1643
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1644
    iget p2, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget p3, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {p2, p3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    goto :goto_48

    .line 1646
    :cond_43
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1649
    :goto_48
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1650
    :try_start_4f
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 p3, 0x6

    invoke-static {p0, p1, p3, v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1651
    monitor-exit p2

    return-void

    :catchall_57
    move-exception p0

    monitor-exit p2
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw p0
.end method

.method public setAppRequest(IIFF)V
    .registers 6

    .line 1589
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1590
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 1591
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppPreferredRefreshRateRangeLocked(IFF)V

    .line 1593
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final setAppRequestedModeLocked(II)V
    .registers 6

    .line 1597
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object p2

    .line 1598
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    if-eqz p2, :cond_2e

    .line 1605
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1607
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forBaseModeRefreshRate(F)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 1608
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1609
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p2

    .line 1608
    invoke-static {v1, p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p2

    goto :goto_34

    .line 1611
    :cond_2e
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    move-object p2, v0

    .line 1616
    :goto_34
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v2, 0x7

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1618
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method
