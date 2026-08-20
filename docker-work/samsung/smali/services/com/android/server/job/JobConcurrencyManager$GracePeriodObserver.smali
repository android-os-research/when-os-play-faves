.class Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;
.super Landroid/app/UserSwitchObserver;
.source "JobConcurrencyManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GracePeriodObserver"
.end annotation


# instance fields
.field public mCurrentUserId:I

.field public mGracePeriod:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mGracePeriodExpiration:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1922
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 1913
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    .line 1919
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    .line 1923
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1924
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    .line 1925
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1926
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriod:I

    return-void
.end method


# virtual methods
.method public isWithinGracePeriodForUser(I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1951
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1952
    :try_start_3
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    if-eq p1, v1, :cond_1f

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1953
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    const-wide v3, 0x7fffffffffffffffL

    .line 1954
    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-gez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    monitor-exit v0

    return p0

    :catchall_22
    move-exception p0

    .line 1955
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 1944
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1945
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1946
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onUserSwitchComplete(I)V
    .registers 7

    .line 1932
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriod:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1933
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1934
    :try_start_d
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_22

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1935
    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1936
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    invoke-virtual {v3, v4, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 1938
    :cond_22
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1939
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    .line 1940
    monitor-exit v2

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw p0
.end method
