.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppTimeLimitController$MyHandler;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;,
        Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$UsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;,
        Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;,
        Lcom/android/server/usage/AppTimeLimitController$UserData;,
        Lcom/android/server/usage/AppTimeLimitController$Lock;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MAX_OBSERVER_PER_UID:J = 0x3e8L

.field public static final ONE:Ljava/lang/Integer;

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final TAG:Ljava/lang/String; = "AppTimeLimitController"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field public mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

.field public final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field public final mObserverApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V
    .registers 6

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$Lock-IA;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    .line 604
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mContext:Landroid/content/Context;

    .line 605
    new-instance p1, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 606
    iput-object p2, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-void
.end method


# virtual methods
.method public addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v12, p2

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-ltz v1, :cond_84

    .line 881
    iget-object v13, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v13

    move/from16 v1, p9

    .line 882
    :try_start_11
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v14

    .line 883
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v15

    .line 884
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v1, :cond_26

    .line 887
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 890
    :cond_26
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    int-to-long v1, v1

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_68

    .line 895
    new-instance v11, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    cmp-long v1, p6, p4

    if-ltz v1, :cond_3f

    const/4 v1, 0x0

    move-object/from16 v16, v1

    goto :goto_41

    :cond_3f
    move-object/from16 v16, p8

    :goto_41
    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object v0, v11

    move-object/from16 v11, v16

    .line 896
    invoke-direct/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    .line 897
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 903
    invoke-virtual {v14, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v1

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 905
    monitor-exit v13

    return-void

    .line 892
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_81
    move-exception v0

    .line 905
    monitor-exit v13
    :try_end_83
    .catchall {:try_start_11 .. :try_end_83} :catchall_81

    throw v0

    .line 879
    :cond_84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 23

    move-object v0, p0

    move/from16 v10, p2

    .line 769
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-ltz v1, :cond_72

    .line 772
    iget-object v11, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v11

    move/from16 v1, p7

    .line 773
    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v12

    .line 774
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v13

    .line 775
    iget-object v1, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    if-eqz v1, :cond_25

    .line 778
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 781
    :cond_25
    iget-object v1, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    int-to-long v1, v1

    .line 782
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_56

    .line 786
    new-instance v14, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 788
    iget-object v1, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 794
    invoke-virtual {v12, v14}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 795
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v12, v14, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 796
    monitor-exit v11

    return-void

    .line 783
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6f
    move-exception v0

    .line 796
    monitor-exit v11
    :try_end_71
    .catchall {:try_start_10 .. :try_end_71} :catchall_6f

    throw v0

    .line 770
    :cond_72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v13, p2

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-ltz v1, :cond_81

    .line 829
    iget-object v14, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v14

    move/from16 v1, p10

    .line 830
    :try_start_11
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v15

    .line 831
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v12

    .line 832
    iget-object v1, v12, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    if-eqz v1, :cond_26

    .line 835
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 838
    :cond_26
    iget-object v1, v12, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    int-to-long v1, v1

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_65

    .line 843
    new-instance v10, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v12

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p8

    move-object v0, v10

    move-wide/from16 v10, p6

    move-object/from16 p10, v15

    move-object v15, v12

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    .line 845
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object/from16 v1, p10

    .line 847
    invoke-virtual {v1, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v2

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 849
    monitor-exit v14

    return-void

    .line 840
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_7e
    move-exception v0

    .line 849
    monitor-exit v14
    :try_end_80
    .catchall {:try_start_11 .. :try_end_80} :catchall_7e

    throw v0

    .line 827
    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1028
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    move v1, v0

    .line 1033
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_45

    .line 1034
    aget-object v2, p1, v1

    const-string v3, "actives"

    .line 1035
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1036
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v2

    .line 1037
    :try_start_14
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move v1, v0

    :goto_1b
    if-ge v1, p1, :cond_3d

    .line 1039
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 1040
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    iget-object v3, v3, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    .line 1041
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v0

    :goto_2c
    if-ge v5, v4, :cond_3a

    .line 1043
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1046
    :cond_3d
    monitor-exit v2

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_3f

    throw p0

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1052
    :cond_45
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p1

    :try_start_48
    const-string v1, "\n  App Time Limits"

    .line 1053
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_54
    if-ge v2, v1, :cond_69

    const-string v3, "   User "

    .line 1056
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1059
    :cond_69
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1060
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_72
    if-ge v0, v1, :cond_87

    const-string v2, "   Observer App "

    .line 1062
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    invoke-virtual {v2, p2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 1065
    :cond_87
    monitor-exit p1

    return-void

    :catchall_89
    move-exception p0

    monitor-exit p1
    :try_end_8b
    .catchall {:try_start_48 .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 613
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 615
    :cond_10
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getAppUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 651
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 652
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .registers 11

    .line 679
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 680
    :try_start_3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_10

    .line 682
    monitor-exit v0

    return-object p2

    .line 685
    :cond_10
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_8f

    .line 686
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_8f

    .line 690
    :cond_22
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 691
    :goto_29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 692
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v4, :cond_52

    .line 693
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    move v5, v2

    .line 694
    :goto_3e
    iget-object v6, v4, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_52

    .line 695
    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 696
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 702
    :cond_55
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 703
    monitor-exit v0

    return-object p2

    .line 706
    :cond_5d
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    const/4 p1, 0x1

    .line 707
    :goto_64
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge p1, p2, :cond_80

    .line 708
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 709
    invoke-virtual {p2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_7d

    move-object p0, p2

    :cond_7d
    add-int/lit8 p1, p1, 0x1

    goto :goto_64

    .line 713
    :cond_80
    new-instance p1, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    .line 714
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getTotaUsageLimit()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;-><init>(JJ)V

    monitor-exit v0

    return-object p1

    .line 687
    :cond_8f
    :goto_8f
    monitor-exit v0

    return-object p2

    :catchall_91
    move-exception p0

    .line 715
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_91

    throw p0
.end method

.method public getAppUsageLimitGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 666
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 668
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getAppUsageLimitObserverPerUidLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getAppUsageObserverPerUidLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getElapsedRealtime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinTimeLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public final getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-nez v0, :cond_15

    .line 734
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$ObserverAppData-IA;)V

    .line 735
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public final getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_15

    .line 723
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$UserData-IA;)V

    .line 724
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public getSessionUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 658
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 660
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getUsageSessionObserverPerUidLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public final noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 754
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length p0, p0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p0, :cond_18

    .line 756
    iget-object v1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 758
    invoke-virtual {p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(J)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 971
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V

    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 937
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    .line 940
    iget-object v1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2a

    .line 942
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2a

    .line 945
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 946
    monitor-exit v0

    return-void

    .line 949
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v1

    .line 951
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    sget-object v3, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_41

    .line 954
    monitor-exit v0

    return-void

    .line 956
    :cond_41
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_46
    if-ge p2, p1, :cond_56

    .line 958
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    sub-long v4, v1, p3

    .line 959
    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_46

    .line 961
    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public noteUsageStop(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 982
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    .line 985
    iget-object v1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_5a

    .line 991
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 992
    sget-object v3, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 994
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 995
    monitor-exit v0

    return-void

    .line 998
    :cond_30
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 999
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v1

    .line 1002
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_45

    .line 1003
    monitor-exit v0

    return-void

    .line 1005
    :cond_45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_4a
    if-ge p2, p1, :cond_58

    .line 1007
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 1008
    invoke-virtual {v3, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4a

    .line 1011
    :cond_58
    monitor-exit v0

    return-void

    .line 987
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to stop usage for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in use"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_76
    move-exception p0

    .line 1011
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 742
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 744
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 745
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1022
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1016
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeAppUsageLimitObserver(III)V
    .registers 4

    .line 917
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 918
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    .line 919
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz p0, :cond_14

    .line 922
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 924
    :cond_14
    monitor-exit p3

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public removeAppUsageObserver(III)V
    .registers 4

    .line 807
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 808
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    .line 809
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    if-eqz p0, :cond_14

    .line 812
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 814
    :cond_14
    monitor-exit p3

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public removeUsageSessionObserver(III)V
    .registers 4

    .line 861
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 862
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    .line 863
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    if-eqz p0, :cond_14

    .line 866
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 868
    :cond_14
    monitor-exit p3

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method
