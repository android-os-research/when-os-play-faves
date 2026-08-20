.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;,
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_SENDER:I = 0x1

.field public static final FLAG_BROADCAST_SENDER:I = 0x2

.field public static final FLAG_SERVICE_SENDER:I = 0x4

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public canceled:Z

.field public canceledFromPID:I

.field public canceledFromUID:I

.field public final controller:Lcom/android/server/am/PendingIntentController;

.field public final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field public lastTag:Ljava/lang/String;

.field public lastTagPrefix:Ljava/lang/String;

.field public mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowlistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;",
            ">;"
        }
    .end annotation
.end field

.field public mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field public sent:Z

.field public stringName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public static synthetic $r8$lambda$0acvBWvihzGS4yw0LCNL-NJDvhU(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5

    .line 259
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    .line 80
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    .line 90
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 91
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 260
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 261
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 262
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 263
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static isPendingIntentBalAllowedByCaller(Landroid/app/ActivityOptions;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 354
    :cond_4
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByCaller(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static isPendingIntentBalAllowedByCaller(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    .line 361
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPendingIntentBalAllowedByPermission(Landroid/app/ActivityOptions;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 346
    :cond_4
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->isPendingIntentBackgroundActivityLaunchAllowedByPermission()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 300
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final completeFinalize()V
    .registers 4

    .line 717
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 719
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_23

    .line 720
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v1, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 723
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    .line 322
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 727
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " packageName="

    .line 728
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " featureId="

    .line 729
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " type="

    .line 730
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " flags=0x"

    .line 731
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v1, :cond_4e

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 733
    :cond_4e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " who="

    .line 734
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    :cond_69
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v1, :cond_73

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_8f

    .line 737
    :cond_73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " requestResolvedType="

    .line 738
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    :cond_8f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    .line 741
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    :cond_ab
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_b3

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_ee

    .line 745
    :cond_b3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " canceled="

    .line 746
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 748
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d4

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    if-eq v0, v2, :cond_ee

    .line 749
    :cond_d4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " cancel uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 750
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " cancel pid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 754
    :cond_ee
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_151

    .line 755
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowlistDuration="

    .line 756
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    .line 757
    :goto_fb
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_14e

    if-eqz v0, :cond_10a

    const-string v2, ", "

    .line 759
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    :cond_10a
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 762
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 763
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, "/"

    .line 765
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 767
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_fb

    .line 772
    :cond_14e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 774
    :cond_151
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_182

    .line 775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    :goto_15e
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-ge v1, v0, :cond_182

    .line 777
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15e

    :cond_182
    return-void
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 707
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_14

    .line 708
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_18

    .line 712
    :cond_14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_18
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 713
    throw v0
.end method

.method public getUserId()I
    .registers 1

    .line 824
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    return p0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 305
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 307
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 22

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    .line 328
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I

    return-void
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I
    .registers 30

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 370
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;II)I

    move-result v0

    return v0
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;II)I
    .registers 47

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v14, p12

    const/4 v13, 0x1

    if-eqz v0, :cond_e

    .line 380
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setDefusable(Z)V

    :cond_e
    if-eqz v14, :cond_13

    .line 381
    invoke-virtual {v14, v13}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 388
    :cond_13
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 389
    :try_start_18
    iget-boolean v3, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/16 v12, -0x60

    if-eqz v3, :cond_6c

    const-string v0, "ActivityManager"

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 392
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 393
    invoke-virtual {v3, v13}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is canceled from UID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " PID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    monitor-exit v2

    return v12

    .line 401
    :cond_6c
    iput-boolean v13, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 402
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_7c

    .line 403
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v3, v15, v13}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 406
    :cond_7c
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v3, :cond_8c

    new-instance v3, Landroid/content/Intent;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_91

    :cond_8c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :goto_91
    move-object v11, v3

    .line 408
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v5, 0x4000000

    and-int/2addr v5, v4

    const/4 v10, 0x0

    if-eqz v5, :cond_9e

    move v5, v13

    goto :goto_9f

    :cond_9e
    move v5, v10

    :goto_9f
    const/4 v6, 0x2

    if-nez v5, :cond_f0

    if-eqz v0, :cond_dd

    .line 411
    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_b0

    .line 413
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    goto :goto_b2

    :cond_b0
    move-object/from16 v3, p3

    .line 418
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v4

    if-lez v4, :cond_c1

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v4

    .line 419
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    move v4, v13

    goto :goto_c2

    :cond_c1
    move v4, v10

    .line 424
    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v5

    if-lez v5, :cond_d0

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v4

    .line 425
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    move v4, v13

    :cond_d0
    if-eqz v4, :cond_df

    .line 430
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    if-eqz v14, :cond_df

    const-string v4, "android:activity.startedFromWindowTypeLauncher"

    .line 432
    invoke-virtual {v14, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_df

    .line 437
    :cond_dd
    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :cond_df
    :goto_df
    move/from16 v4, p10

    and-int/lit16 v4, v4, -0xc4

    and-int v5, p11, v4

    .line 441
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v7

    not-int v4, v4

    and-int/2addr v4, v7

    or-int/2addr v4, v5

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_f2

    .line 443
    :cond_f0
    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :goto_f2
    move-object v8, v3

    .line 456
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v3

    if-eqz v3, :cond_100

    .line 458
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_100
    if-eqz v0, :cond_10d

    const-string v4, "LAUNCH_FROM_NOTIFICATION"

    const/4 v5, -0x1

    .line 473
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_10d

    move v0, v13

    goto :goto_10e

    :cond_10d
    move v0, v10

    .line 474
    :goto_10e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z
    :try_end_110
    .catchall {:try_start_18 .. :try_end_110} :catchall_4ff

    if-eqz v4, :cond_11e

    if-eqz v0, :cond_11e

    :try_start_114
    const-string v0, "LAUNCH_FROM_NOTIFICATION"

    .line 476
    invoke-virtual {v11, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_119} :catch_11a
    .catchall {:try_start_114 .. :try_end_119} :catchall_4ff

    goto :goto_11e

    :catch_11a
    move-exception v0

    .line 478
    :try_start_11b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    :cond_11e
    :goto_11e
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    if-nez v0, :cond_12a

    .line 486
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v0, v3}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_12d

    .line 488
    :cond_12a
    invoke-virtual {v0, v3}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V

    .line 491
    :goto_12d
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v3, :cond_138

    .line 492
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    goto :goto_139

    :cond_138
    const/4 v3, 0x0

    .line 495
    :goto_139
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v5, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v7, v6, :cond_162

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v5, :cond_162

    array-length v7, v5

    if-le v7, v13, :cond_162

    .line 499
    array-length v7, v5

    new-array v9, v7, [Landroid/content/Intent;

    .line 500
    array-length v4, v5

    new-array v12, v4, [Ljava/lang/String;

    .line 501
    array-length v6, v5

    invoke-static {v5, v10, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v5, :cond_15a

    .line 503
    array-length v6, v5

    invoke-static {v5, v10, v12, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15a
    sub-int/2addr v7, v13

    .line 515
    aput-object v11, v9, v7

    sub-int/2addr v4, v13

    .line 516
    aput-object v8, v12, v4

    move-object v7, v9

    goto :goto_164

    :cond_162
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 519
    :goto_164
    monitor-exit v2
    :try_end_165
    .catchall {:try_start_11b .. :try_end_165} :catchall_4ff

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v27

    if-lez p14, :cond_17a

    if-lez p15, :cond_17a

    move/from16 v6, p14

    move/from16 v9, p15

    goto :goto_17c

    :cond_17a
    move v9, v2

    move v6, v4

    :goto_17c
    if-eqz v3, :cond_1f0

    .line 542
    :try_start_17e
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "setPendingIntentAllowlistDuration,reason:"

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v5, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    if-nez v5, :cond_191

    const-string v5, ""

    :cond_191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",pendingintent:"

    .line 545
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-static {v4, v9}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v5, ":"

    .line 547
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1af

    .line 549
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ce

    .line 550
    :cond_1af
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1bd

    .line 551
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_1ce

    .line 552
    :cond_1bd
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1ce

    .line 553
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_1ce
    :goto_1ce
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v10, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-wide v13, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    iget v2, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 556
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v9

    move/from16 v20, v10

    move-wide/from16 v21, v13

    move/from16 v23, v2

    move/from16 v24, v3

    .line 555
    invoke-virtual/range {v17 .. v25}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    goto :goto_22c

    .line 557
    :cond_1f0
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_22c

    move-object/from16 v14, p12

    if-eqz v14, :cond_22e

    .line 561
    new-instance v2, Landroid/app/BroadcastOptions;

    invoke-direct {v2, v14}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    .line 562
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_22e

    .line 563
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 564
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v21

    .line 565
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v23

    .line 566
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v24

    .line 567
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v17, v3

    move/from16 v18, v6

    move/from16 v19, v9

    move/from16 v20, v4

    .line 563
    invoke-virtual/range {v17 .. v25}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    goto :goto_22e

    :cond_22c
    :goto_22c
    move-object/from16 v14, p12

    :cond_22e
    :goto_22e
    if-eqz p5, :cond_233

    const/16 v29, 0x1

    goto :goto_235

    :cond_233
    const/16 v29, 0x0

    .line 572
    :goto_235
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_244

    .line 574
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v2

    :cond_244
    move/from16 v24, v2

    .line 578
    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    if-eq v2, v9, :cond_25c

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 579
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 580
    invoke-static/range {p12 .. p12}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByCaller(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_25c

    const/4 v2, 0x1

    goto :goto_25d

    :cond_25c
    const/4 v2, 0x0

    .line 585
    :goto_25d
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_261
    .catchall {:try_start_17e .. :try_end_261} :catchall_4fa

    const/4 v5, 0x1

    if-eq v4, v5, :cond_41d

    const/4 v5, 0x2

    if-eq v4, v5, :cond_351

    const/4 v0, 0x3

    if-eq v4, v0, :cond_2fc

    const/4 v0, 0x4

    if-eq v4, v0, :cond_277

    const/4 v0, 0x5

    if-eq v4, v0, :cond_277

    :goto_270
    move-object/from16 p3, v11

    move-object v3, v15

    const/16 v21, 0x0

    goto/16 :goto_4cb

    .line 666
    :cond_277
    :try_start_277
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 667
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_282

    move-object/from16 v26, v1

    goto :goto_284

    :cond_282
    const/16 v26, 0x0

    .line 670
    :goto_284
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v4, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_294

    const/16 v21, 0x1

    goto :goto_296

    :cond_294
    const/16 v21, 0x0

    :goto_296
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-nez v0, :cond_2a2

    if-eqz v2, :cond_29f

    goto :goto_2a2

    :cond_29f
    const/16 v25, 0x0

    goto :goto_2a4

    :cond_2a2
    :goto_2a2
    const/16 v25, 0x1

    :goto_2a4
    move-object/from16 v16, v1

    move-object/from16 v17, p13

    move/from16 v18, v3

    move-object/from16 v19, v11

    move-object/from16 v20, v8

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    invoke-virtual/range {v16 .. v26}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;

    const-string v0, "ActivityManager"

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SERVICE intent 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v3, 0x1

    .line 678
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ea
    .catch Ljava/lang/RuntimeException; {:try_start_277 .. :try_end_2ea} :catch_2f2
    .catch Landroid/os/TransactionTooLargeException; {:try_start_277 .. :try_end_2ea} :catch_2eb
    .catchall {:try_start_277 .. :try_end_2ea} :catchall_4fa

    goto :goto_270

    :catch_2eb
    move-object/from16 p3, v11

    move-object v3, v15

    const/16 v12, -0x60

    goto/16 :goto_4cd

    :catch_2f2
    move-exception v0

    :try_start_2f3
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    .line 683
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_270

    :cond_2fc
    const-string v0, "ActivityManager"

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACTIVITY RESULT intent 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v3, 0x1

    .line 627
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, -0x1

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 p6, v0

    move/from16 p7, v1

    move-object/from16 p8, v3

    move-object/from16 p9, v4

    move/from16 p10, v2

    move/from16 p11, p1

    move-object/from16 p12, v11

    invoke-virtual/range {p6 .. p12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_34f
    .catchall {:try_start_2f3 .. :try_end_34f} :catchall_4fa

    goto/16 :goto_270

    .line 592
    :cond_351
    :try_start_351
    iget-object v2, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_386

    array-length v2, v2

    const/4 v13, 0x1

    if-le v2, v13, :cond_386

    .line 593
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 598
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16
    :try_end_36a
    .catch Ljava/lang/RuntimeException; {:try_start_351 .. :try_end_36a} :catch_40c
    .catchall {:try_start_351 .. :try_end_36a} :catchall_4fa

    move-object v1, v2

    move v2, v4

    move v3, v6

    move v4, v9

    move-object v6, v8

    move-object v8, v12

    move v12, v9

    move-object/from16 v9, p7

    const/16 v21, 0x0

    move-object v10, v0

    move-object/from16 p3, v11

    move/from16 v11, v24

    move v0, v12

    move v12, v14

    move v14, v13

    move-object/from16 v13, p0

    move/from16 v14, v16

    .line 593
    :try_start_381
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1

    goto :goto_3bf

    :cond_386
    move v14, v9

    move-object/from16 p3, v11

    const/16 v21, 0x0

    .line 601
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v16, 0x0

    const-string v17, "PendingIntentRecord"

    const/16 v18, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 607
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19
    :try_end_3a2
    .catch Ljava/lang/RuntimeException; {:try_start_381 .. :try_end_3a2} :catch_40a
    .catchall {:try_start_381 .. :try_end_3a2} :catchall_4fa

    move-object v1, v2

    move v2, v4

    move v3, v6

    move v4, v14

    move-object v6, v7

    move-object/from16 v7, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object v13, v0

    move v0, v14

    move/from16 v14, v24

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, p0

    .line 601
    :try_start_3bb
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1
    :try_end_3bf
    .catch Ljava/lang/RuntimeException; {:try_start_3bb .. :try_end_3bf} :catch_406
    .catchall {:try_start_3bb .. :try_end_3bf} :catchall_4fa

    :goto_3bf
    move v12, v1

    :try_start_3c0
    const-string v1, "ActivityManager"

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received ACTIVITY intent 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3dc
    .catch Ljava/lang/RuntimeException; {:try_start_3c0 .. :try_end_3dc} :catch_402
    .catchall {:try_start_3c0 .. :try_end_3dc} :catchall_4fa

    move-object/from16 v15, p0

    :try_start_3de
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v13, 0x1

    .line 614
    invoke-virtual {v3, v13}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ff
    .catch Ljava/lang/RuntimeException; {:try_start_3de .. :try_end_3ff} :catch_400
    .catchall {:try_start_3de .. :try_end_3ff} :catchall_4fa

    goto :goto_41a

    :catch_400
    move-exception v0

    goto :goto_413

    :catch_402
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_413

    :catch_406
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_411

    :catch_40a
    move-exception v0

    goto :goto_411

    :catch_40c
    move-exception v0

    move-object/from16 p3, v11

    const/16 v21, 0x0

    :goto_411
    move/from16 v12, v21

    :goto_413
    :try_start_413
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    .line 619
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41a
    .catchall {:try_start_413 .. :try_end_41a} :catchall_4fa

    :goto_41a
    move-object v3, v15

    goto/16 :goto_4cd

    :cond_41d
    move v13, v5

    move v0, v9

    move-object/from16 p3, v11

    const/16 v21, 0x0

    .line 636
    :try_start_423
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 637
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42e

    move-object/from16 v19, v1

    goto :goto_430

    :cond_42e
    const/16 v19, 0x0

    .line 642
    :goto_430
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget v7, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_43c
    .catch Ljava/lang/RuntimeException; {:try_start_423 .. :try_end_43c} :catch_4c2
    .catchall {:try_start_423 .. :try_end_43c} :catchall_4fa

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p5, :cond_443

    move/from16 v16, v13

    goto :goto_445

    :cond_443
    move/from16 v16, v21

    :goto_445
    const/16 v17, 0x0

    if-nez v3, :cond_44f

    if-eqz v2, :cond_44c

    goto :goto_44f

    :cond_44c
    move/from16 v18, v21

    goto :goto_451

    :cond_44f
    :goto_44f
    move/from16 v18, v13

    :goto_451
    const/16 v20, 0x0

    move v10, v0

    move-object v0, v1

    move-object/from16 v1, p13

    move-object v2, v5

    move-object v3, v4

    move v4, v7

    move v5, v10

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v30, v10

    move/from16 v10, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p12

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v24

    :try_start_46d
    invoke-virtual/range {v0 .. v20}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    move-result v0

    const-string v1, "ActivityManager"

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received BROADCAST intent 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48d
    .catch Ljava/lang/RuntimeException; {:try_start_46d .. :try_end_48d} :catch_4be
    .catchall {:try_start_46d .. :try_end_48d} :catchall_4fa

    move-object/from16 v3, p0

    :try_start_48f
    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v5, 0x1

    .line 652
    invoke-virtual {v4, v5}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b2
    .catch Ljava/lang/RuntimeException; {:try_start_48f .. :try_end_4b2} :catch_4bc
    .catchall {:try_start_48f .. :try_end_4b2} :catchall_4fa

    if-nez v0, :cond_4b7

    move/from16 v10, v21

    goto :goto_4b9

    :cond_4b7
    move/from16 v10, v29

    :goto_4b9
    move/from16 v29, v10

    goto :goto_4cb

    :catch_4bc
    move-exception v0

    goto :goto_4c4

    :catch_4be
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_4c4

    :catch_4c2
    move-exception v0

    move-object v3, v15

    :goto_4c4
    :try_start_4c4
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    .line 660
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4cb
    .catchall {:try_start_4c4 .. :try_end_4cb} :catchall_4fa

    :goto_4cb
    move/from16 v12, v21

    :goto_4cd
    if-eqz v29, :cond_4f6

    const/16 v1, -0x60

    if-eq v12, v1, :cond_4f6

    .line 692
    :try_start_4d3
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 p0, p5

    move-object/from16 p1, v0

    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v3

    invoke-interface/range {p0 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_4f6
    .catch Landroid/os/RemoteException; {:try_start_4d3 .. :try_end_4f6} :catch_4f6
    .catchall {:try_start_4d3 .. :try_end_4f6} :catchall_4fa

    .line 698
    :catch_4f6
    :cond_4f6
    invoke-static/range {v27 .. v28}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_4fa
    move-exception v0

    invoke-static/range {v27 .. v28}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    throw v0

    :catchall_4ff
    move-exception v0

    .line 519
    :try_start_500
    monitor-exit v2
    :try_end_501
    .catchall {:try_start_500 .. :try_end_501} :catchall_4ff

    throw v0
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 22

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    .line 334
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I

    move-result v0

    return v0
.end method

.method public setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c

    .line 286
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_15

    .line 289
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_15
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1e

    .line 292
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method public setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    .line 269
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 270
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 272
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    move-object v2, v8

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;-><init>(JIILjava/lang/String;)V

    invoke-virtual {v0, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 274
    :cond_22
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz p2, :cond_33

    .line 275
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-gtz p1, :cond_33

    .line 277
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 280
    :cond_33
    :goto_33
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 784
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 787
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PendingIntentRecord{"

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_3a

    const/16 v2, 0x2f

    .line 793
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_a8

    const-string v1, " (allowlist: "

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 800
    :goto_50
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    if-eqz v1, :cond_5f

    const-string v2, ","

    .line 802
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_5f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 805
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 806
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 805
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 807
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, "/"

    .line 809
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_a3
    const-string v1, ")"

    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a8
    const/16 v1, 0x7d

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    .line 314
    :cond_5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 315
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-gtz p1, :cond_13

    const/4 p1, 0x0

    .line 316
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_13
    return-void
.end method
