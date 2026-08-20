.class public final Lcom/android/server/AppStateTrackerImpl$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StandbyTracker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 794
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    .line 802
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    const/4 p5, 0x5

    if-ne p4, p5, :cond_13

    .line 805
    :try_start_a
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p4, p4, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p1

    goto :goto_1b

    .line 807
    :cond_13
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p4, p4, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p1

    :goto_1b
    if-eqz p1, :cond_26

    .line 810
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyExemptedBucketChanged()V

    .line 812
    :cond_26
    monitor-exit p3

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw p0
.end method
