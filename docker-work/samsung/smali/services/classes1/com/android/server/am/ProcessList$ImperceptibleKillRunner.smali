.class public final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.super Landroid/app/IUidObserver$Stub;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImperceptibleKillRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;,
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
    }
.end annotation


# static fields
.field public static final DROPBOX_TAG_IMPERCEPTIBLE_KILL:Ljava/lang/String; = "imperceptible_app_kill"

.field public static final EXTRA_PID:Ljava/lang/String; = "pid"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_REQUESTER:Ljava/lang/String; = "requester"

.field public static final EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public volatile mIdle:Z

.field public mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

.field public mUidObserverEnabled:Z

.field public mWorkItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public static synthetic $r8$lambda$ovzX54utB3esAfb6VpP2waXFiX8(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->lambda$killProcessLocked$0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleDeviceIdle(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleDeviceIdle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidGone(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidGone(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidStateChanged(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidStateChanged(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .registers 3

    .line 6088
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 6037
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 6040
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    .line 6089
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$killProcessLocked$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 6205
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 6207
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 6095
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_13

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_13
    if-eqz v0, :cond_27

    .line 6096
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6097
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_27

    const/4 p0, 0x0

    return p0

    .line 6101
    :cond_27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6102
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    const-string/jumbo v3, "pid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6103
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6105
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "reason"

    .line 6106
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "requester"

    .line 6107
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6108
    iget-object p2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    iget p3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_6c

    .line 6110
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6111
    iget-object p3, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6113
    :cond_6c
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6114
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    if-nez p1, :cond_91

    .line 6115
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver-IA;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    .line 6116
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 6118
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6119
    iget-object p2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p2, p2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_91
    const/4 p0, 0x1

    return p0
.end method

.method public final handleDeviceIdle()V
    .registers 17

    move-object/from16 v0, p0

    .line 6139
    iget-object v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/DropBoxManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/DropBoxManager;

    const/4 v11, 0x1

    if-eqz v10, :cond_1f

    const-string/jumbo v1, "imperceptible_app_kill"

    .line 6141
    invoke-virtual {v10, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v12, v11

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    move v12, v1

    .line 6143
    :goto_21
    iget-object v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v13, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6144
    iget-object v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v11

    move v14, v1

    .line 6145
    :goto_31
    iget-boolean v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_96

    if-ltz v14, :cond_96

    .line 6146
    iget-object v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/List;

    .line 6147
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    move v9, v1

    .line 6148
    :goto_46
    iget-boolean v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_87

    if-ltz v9, :cond_87

    .line 6149
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "pid"

    .line 6151
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "uid"

    .line 6152
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "timestamp"

    .line 6153
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "reason"

    .line 6154
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "requester"

    .line 6155
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v1, p0

    move-object v8, v10

    move v11, v9

    move v9, v12

    .line 6150
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 6157
    invoke-interface {v15, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_83
    add-int/lit8 v9, v11, -0x1

    const/4 v11, 0x1

    goto :goto_46

    .line 6160
    :cond_87
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_92

    .line 6161
    iget-object v1, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_92
    add-int/lit8 v14, v14, -0x1

    const/4 v11, 0x1

    goto :goto_31

    .line 6164
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 6165
    monitor-exit v13
    :try_end_9a
    .catchall {:try_start_26 .. :try_end_9a} :catchall_9e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit v13
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final handleUidGone(I)V
    .registers 4

    .line 6270
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6271
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6272
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 6273
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final handleUidStateChanged(II)V
    .registers 16

    .line 6239
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    const-string/jumbo v2, "imperceptible_app_kill"

    .line 6241
    invoke-virtual {v0, v2}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v10, v1

    goto :goto_1e

    :cond_1c
    const/4 v2, 0x0

    move v10, v2

    .line 6242
    :goto_1e
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v11, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6243
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 6244
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_98

    .line 6245
    iget-object p2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_98

    .line 6247
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    move v12, v2

    .line 6248
    :goto_4c
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_8a

    if-ltz v12, :cond_8a

    .line 6249
    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "pid"

    .line 6251
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "uid"

    .line 6252
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "timestamp"

    .line 6253
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "reason"

    .line 6254
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "requester"

    .line 6255
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object v1, p0

    move-object v8, v0

    move v9, v10

    .line 6250
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 6257
    invoke-interface {p2, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_87
    add-int/lit8 v12, v12, -0x1

    goto :goto_4c

    .line 6260
    :cond_8a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_95

    .line 6261
    iget-object p2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6263
    :cond_95
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 6266
    :cond_98
    monitor-exit v11
    :try_end_99
    .catchall {:try_start_23 .. :try_end_99} :catchall_9d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_9d
    move-exception p0

    :try_start_9e
    monitor-exit v11
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 6193
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 6194
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 6195
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_bf

    const/4 v0, 0x1

    if-eqz v1, :cond_be

    .line 6197
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_be

    iget p1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p1, p2, :cond_be

    .line 6198
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_29

    goto/16 :goto_be

    .line 6204
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_39

    return v0

    .line 6214
    :cond_39
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object p2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 6215
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 6214
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    const/4 p0, 0x0

    return p0

    :cond_53
    const/16 p1, 0xd

    const/16 p2, 0xf

    .line 6220
    invoke-virtual {v1, p5, p1, p2, v0}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 6223
    iget-boolean p1, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez p1, :cond_6f

    .line 6224
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    iget-object p2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    if-eqz p8, :cond_be

    .line 6228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6230
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/am/ActivityManagerService;->appendDropBoxProcessHeaders(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Reason: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Requester UID: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "imperceptible_app_kill"

    .line 6233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p0, p1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    return v0

    :catchall_bf
    move-exception p0

    .line 6195
    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw p0
.end method

.method public notifyDeviceIdleness(Z)V
    .registers 4

    .line 6127
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 6128
    :goto_8
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2e

    .line 6130
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6131
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 6132
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6134
    :cond_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2e

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onUidActive(I)V
    .registers 2

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    .line 6278
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 6291
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final registerUidObserverIfNecessaryLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 6171
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    .line 6172
    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 6173
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "android"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    goto :goto_31

    .line 6176
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x0

    .line 6177
    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 6178
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    :cond_31
    :goto_31
    return-void
.end method
