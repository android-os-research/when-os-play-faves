.class public Lcom/android/server/AppStateTrackerImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    .line 468
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_ae

    :goto_17
    move v1, v0

    goto :goto_39

    :sswitch_19
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_17

    :cond_22
    const/4 v1, 0x2

    goto :goto_39

    :sswitch_24
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_17

    :cond_2d
    move v1, v3

    goto :goto_39

    :sswitch_2f
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_17

    :cond_38
    move v1, v4

    :goto_39
    packed-switch v1, :pswitch_data_bc

    goto :goto_ac

    :pswitch_3d
    const-string v1, "android.intent.extra.REPLACING"

    .line 482
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 483
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.UID"

    .line 484
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 487
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_5a
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 489
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p1, p1, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 490
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mupdateBackgroundRestrictedUidPackagesLocked(Lcom/android/server/AppStateTrackerImpl;)V

    .line 491
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 492
    monitor-exit v0

    goto :goto_ac

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_5a .. :try_end_80} :catchall_7e

    throw p0

    .line 476
    :pswitch_81
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 477
    :try_start_88
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_94

    goto :goto_95

    :cond_94
    move v3, v4

    :goto_95
    iput-boolean v3, p1, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    .line 478
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_88 .. :try_end_98} :catchall_9e

    .line 479
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mupdateForceAllAppStandbyState(Lcom/android/server/AppStateTrackerImpl;)V

    goto :goto_ac

    :catchall_9e
    move-exception p0

    .line 478
    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p0

    :pswitch_a1
    if-lez p1, :cond_ac

    .line 472
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->doUserRemoved(I)V

    :cond_ac
    :goto_ac
    return-void

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x7ad942ef -> :sswitch_2f
        -0x5bb23923 -> :sswitch_24
        0x1f50b9c2 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_81
        :pswitch_3d
    .end packed-switch
.end method
