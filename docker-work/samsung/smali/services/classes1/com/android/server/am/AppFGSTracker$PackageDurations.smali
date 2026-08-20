.class public Lcom/android/server/am/AppFGSTracker$PackageDurations;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "AppFGSTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppFGSTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageDurations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurations<",
        "Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INDEX:I


# instance fields
.field public mForegroundServiceTypes:I

.field public mIsLongRunning:Z

.field public final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 648
    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v0

    sput v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V
    .registers 11

    const/16 v3, 0x9

    const-string v4, "ActivityManager"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 652
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    .line 654
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    sget p2, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    aput-object p3, p1, p2

    .line 655
    iput-object p4, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V
    .registers 3

    .line 659
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    .line 660
    iget-boolean v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 661
    iget v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 662
    iget-object p1, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method


# virtual methods
.method public addEvent(ZJ)V
    .registers 7

    .line 669
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    sget v1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 670
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v1

    if-nez v1, :cond_15

    .line 671
    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    :cond_15
    if-nez p1, :cond_44

    .line 674
    iget p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    .line 676
    :goto_1c
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v2, v1

    if-ge p1, v2, :cond_42

    .line 677
    aget-object v1, v1, p1

    if-nez v1, :cond_26

    goto :goto_3f

    .line 680
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 681
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v1, v1, p1

    new-instance v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v2, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-static {p1}, Lcom/android/server/am/AppFGSTracker;->indexToForegroundServiceType(I)I

    move-result v1

    .line 682
    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    :cond_3f
    :goto_3f
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 686
    :cond_42
    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    :cond_44
    return-void
.end method

.method public formatEventTypeLabel(I)Ljava/lang/String;
    .registers 2

    .line 759
    sget p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    if-ne p1, p0, :cond_7

    const-string p0, "Overall foreground services: "

    return-object p0

    .line 762
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/am/AppFGSTracker;->indexToForegroundServiceType(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundServiceType()I
    .registers 1

    .line 726
    iget p0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    return p0
.end method

.method public hasForegroundServices()Z
    .registers 2

    .line 754
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result p0

    return p0
.end method

.method public isLongRunning()Z
    .registers 1

    .line 750
    iget-boolean p0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    return p0
.end method

.method public final notifyListenersOnStateChangeIfNecessary(ZJI)V
    .registers 13

    const/4 v0, 0x2

    if-eq p4, v0, :cond_9

    const/16 v0, 0x8

    if-eq p4, v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x4

    :cond_9
    move v7, v0

    .line 742
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget v2, p0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    return-void
.end method

.method public setForegroundServiceType(IJ)V
    .registers 9

    .line 694
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eq p1, v0, :cond_66

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_66

    .line 698
    :cond_b
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    xor-int/2addr v0, p1

    .line 699
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    :goto_12
    if-eqz v1, :cond_64

    .line 700
    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v2

    .line 701
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v3

    if-ge v2, v4, :cond_5d

    and-int v4, p1, v1

    if-eqz v4, :cond_43

    .line 704
    aget-object v4, v3, v2

    if-nez v4, :cond_2c

    .line 705
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    aput-object v4, v3, v2

    .line 707
    :cond_2c
    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 708
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v3, v2

    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 709
    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    goto :goto_5d

    .line 713
    :cond_43
    aget-object v3, v3, v2

    if-eqz v3, :cond_5d

    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 714
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v3, v2

    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 715
    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    :cond_5d
    :goto_5d
    not-int v1, v1

    and-int/2addr v0, v1

    .line 720
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_12

    .line 722
    :cond_64
    iput p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    :cond_66
    :goto_66
    return-void
.end method

.method public setIsLongRunning(Z)V
    .registers 2

    .line 746
    iput-boolean p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    return-void
.end method
