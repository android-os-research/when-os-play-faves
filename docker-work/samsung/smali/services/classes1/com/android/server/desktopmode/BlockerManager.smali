.class public Lcom/android/server/desktopmode/BlockerManager;
.super Ljava/lang/Object;
.source "BlockerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBlockers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlockers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultBlocker:Lcom/android/server/desktopmode/DefaultBlocker;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlockers(Lcom/android/server/desktopmode/BlockerManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/BlockerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/BlockerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;Lcom/android/server/desktopmode/Injector;)V
    .registers 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/desktopmode/DefaultBlocker;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mDefaultBlocker:Lcom/android/server/desktopmode/DefaultBlocker;

    .line 58
    iput-object p2, p0, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 59
    iput-object p5, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultBlocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/BlockerManager;->getDefaultBlockerInfo(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    monitor-enter v0

    .line 127
    :try_start_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBlockers ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 129
    iget-object p0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 130
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_70

    .line 132
    :cond_80
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 133
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_43 .. :try_end_84} :catchall_88

    .line 134
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_88
    move-exception p0

    .line 133
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;
    .registers 3

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/BlockerManager;->getDefaultBlockerInfo(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 110
    :cond_7
    iget-object p1, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    monitor-enter p1

    .line 111
    :try_start_a
    iget-object p0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    if-eqz v0, :cond_14

    .line 113
    monitor-exit p1

    return-object v0

    .line 116
    :cond_24
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final getDefaultBlockerInfo(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;
    .registers 9

    .line 93
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mDefaultBlocker:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DefaultBlocker;->getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 95
    new-instance p1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    iget v0, v3, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 96
    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->reasonToString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingPid()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;-><init>(Lcom/android/server/desktopmode/BlockerManager;Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;II)V

    return-object p1

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z
    .registers 13

    .line 63
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2f

    const/4 v2, 0x0

    .line 66
    :try_start_8
    new-instance v9, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    iget-object v3, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 67
    invoke-virtual {v3}, Lcom/android/server/desktopmode/Injector;->binderGetCallingPid()I

    move-result v7

    iget-object v3, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v3}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;-><init>(Lcom/android/server/desktopmode/BlockerManager;Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;II)V

    .line 68
    invoke-interface {v1, v9, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 69
    iget-object p1, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    invoke-interface {p1, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p0, p0, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v2}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2a} :catch_2d
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2f

    const/4 p0, 0x1

    .line 71
    :try_start_2b
    monitor-exit v0

    return p0

    .line 73
    :catch_2d
    monitor-exit v0

    return v2

    :catchall_2f
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 82
    iget-object v2, p1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 83
    iget-object p1, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_29

    .line 84
    iget-object p0, p0, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v1}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 86
    :cond_29
    monitor-exit v0

    return v1

    .line 88
    :cond_2b
    monitor-exit v0

    return v1

    :catchall_2d
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method
