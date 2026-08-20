.class public abstract Lcom/android/server/am/BaseAppStateTracker;
.super Ljava/lang/Object;
.source "BaseAppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseAppStateTracker$Injector;,
        Lcom/android/server/am/BaseAppStateTracker$StateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStatePolicy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final STATE_TYPE_FGS_LOCATION:I = 0x4

.field public static final STATE_TYPE_FGS_MEDIA_PLAYBACK:I = 0x2

.field public static final STATE_TYPE_FGS_WITH_NOTIFICATION:I = 0x8

.field public static final STATE_TYPE_INDEX_FGS_LOCATION:I = 0x2

.field public static final STATE_TYPE_INDEX_FGS_MEDIA_PLAYBACK:I = 0x1

.field public static final STATE_TYPE_INDEX_FGS_WITH_NOTIFICATION:I = 0x3

.field public static final STATE_TYPE_INDEX_MEDIA_SESSION:I = 0x0

.field public static final STATE_TYPE_INDEX_PERMISSION:I = 0x4

.field public static final STATE_TYPE_MEDIA_SESSION:I = 0x1

.field public static final STATE_TYPE_NUM:I = 0x5

.field public static final STATE_TYPE_PERMISSION:I = 0x10

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BaseAppStateTracker$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 92
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController;->getLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    if-nez p3, :cond_24

    .line 95
    new-instance p1, Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    goto :goto_53

    :cond_24
    const/4 p1, 0x0

    const/4 p2, 0x1

    :try_start_26
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    .line 99
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateTracker$Injector;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_33

    move-object p1, p2

    goto :goto_4a

    :catch_33
    move-exception p2

    .line 101
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to instantiate "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ActivityManager"

    invoke-static {p4, p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    if-nez p1, :cond_51

    .line 103
    new-instance p1, Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;-><init>()V

    :cond_51
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    :goto_53
    return-void
.end method

.method public static stateIndexToType(I)I
    .registers 2

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method public static stateTypeToIndex(I)I
    .registers 1

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method public static stateTypesToString(I)Ljava/lang/String;
    .registers 5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_d
    if-eqz v1, :cond_66

    if-eqz v3, :cond_16

    const/16 v3, 0x7c

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    if-eq v1, v2, :cond_59

    const/4 v3, 0x2

    if-eq v1, v3, :cond_53

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4d

    const/16 v3, 0x8

    if-eq v1, v3, :cond_47

    const/16 v3, 0x10

    if-eq v1, v3, :cond_41

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    const-string v3, "PERMISSION"

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_47
    const-string v3, "FGS_NOTIFICATION"

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_4d
    const-string v3, "FGS_LOCATION"

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_53
    const-string v3, "FGS_MEDIA_PLAYBACK"

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_59
    const-string v3, "MEDIA_SESSION"

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5e
    not-int v1, v1

    and-int/2addr p0, v1

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    move v3, v2

    goto :goto_d

    :cond_66
    const-string p0, "]"

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 272
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 3

    return-void
.end method

.method public getPolicy()Lcom/android/server/am/BaseAppStatePolicy;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    return-object p0
.end method

.method public getTrackerInfoForStatsd(I)[B
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .registers 1
    .annotation build Lcom/android/server/am/AppRestrictionController$TrackerType;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public notifyListenersOnStateChange(ILjava/lang/String;ZJI)V
    .registers 19

    move-object v0, p0

    .line 157
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 158
    :try_start_5
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_b
    if-ge v2, v3, :cond_23

    .line 159
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/am/BaseAppStateTracker$StateListener;

    move v6, p1

    move-object v7, p2

    move v8, p3

    move-wide/from16 v9, p4

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lcom/android/server/am/BaseAppStateTracker$StateListener;->onStateChange(ILjava/lang/String;ZJI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 161
    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public onLockedBootCompleted()V
    .registers 1

    return-void
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 2

    .line 239
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->onSystemReady()V

    return-void
.end method

.method public onUidAdded(I)V
    .registers 2

    return-void
.end method

.method public onUidGone(I)V
    .registers 2

    return-void
.end method

.method public onUidProcStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onUidRemoved(I)V
    .registers 2

    return-void
.end method

.method public onUserAdded(I)V
    .registers 2

    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    return-void
.end method

.method public onUserStarted(I)V
    .registers 2

    return-void
.end method

.method public onUserStopped(I)V
    .registers 2

    return-void
.end method

.method public registerStateListener(Lcom/android/server/am/BaseAppStateTracker$StateListener;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
