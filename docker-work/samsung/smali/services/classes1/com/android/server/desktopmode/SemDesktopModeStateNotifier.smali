.class public Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
.super Ljava/lang/Object;
.source "SemDesktopModeStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;
    }
.end annotation


# static fields
.field public static final NAME_LIMIT:I = 0x64

.field public static final REGISTER_LIMIT:I = 0x14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final REMOVED_SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String; = "android.app.action.ENTER_KNOX_DESKTOP_MODE"

.field public static final REMOVED_SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String; = "android.app.action.EXIT_KNOX_DESKTOP_MODE"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public final mInnerLock:Ljava/lang/Object;

.field public final mListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInnerLock(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/Injector;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInjector:Lcom/android/server/desktopmode/Injector;

    return-void
.end method

.method public static trimName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_b
    return-object p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 148
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mListeners ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 151
    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    .line 152
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_52

    .line 154
    :cond_62
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 155
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_25 .. :try_end_66} :catchall_6a

    .line 156
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_6a
    move-exception p0

    .line 155
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public final enforceRegisterLimitLocked(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;",
            ">;I)V"
        }
    .end annotation

    if-lez p3, :cond_5c

    .line 129
    iget p0, p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    :cond_9
    const/4 p0, 0x0

    .line 133
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    .line 134
    iget v1, v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->pid:I

    iget v2, p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->pid:I

    if-ne v1, v2, :cond_12

    iget v0, v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    iget v1, p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    if-ne v0, v1, :cond_12

    add-int/lit8 p0, p0, 0x1

    if-ne p0, p3, :cond_12

    .line 137
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Only "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " listener"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    if-ne p3, p2, :cond_48

    const-string p2, ""

    goto :goto_4b

    :cond_48
    const-string/jumbo p2, "s"

    .line 138
    :goto_4b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " per pid/uid is allowed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    return-void

    .line 127
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Limit must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getListenersCopy()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 6

    .line 82
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->getListenersCopy()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    .line 87
    :try_start_14
    iget-object v1, v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_8

    :catch_1a
    move-exception v1

    .line 89
    sget-object v2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->TAG:Ljava/lang/String;

    const-string v3, "Failed to notify DesktopModeListener"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 94
    :cond_23
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2c

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->sendBroadcast(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_2c
    return-void
.end method

.method public registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .registers 13

    .line 49
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_3e

    const/4 v2, 0x0

    .line 52
    :try_start_8
    new-instance v9, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    const/16 v3, 0x64

    .line 53
    invoke-static {p2, v3}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->trimName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderGetCallingPid()I

    move-result v7

    iget-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 54
    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;-><init>(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;II)V

    .line 55
    iget-object p1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    const/16 p2, 0x14

    invoke-virtual {p0, v9, p1, p2}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->enforceRegisterLimitLocked(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;Ljava/util/Map;I)V

    .line 56
    invoke-interface {v1, v9, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 57
    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    invoke-interface {p0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_31} :catch_34
    .catchall {:try_start_8 .. :try_end_31} :catchall_3e

    const/4 p0, 0x1

    .line 58
    :try_start_32
    monitor-exit v0

    return p0

    :catch_34
    move-exception p0

    .line 60
    sget-object p1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->TAG:Ljava/lang/String;

    const-string p2, "Failed to register DesktopModeListener"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    monitor-exit v0

    return v2

    :catchall_3e
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final sendBroadcast(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 8

    .line 108
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 109
    :goto_8
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz v0, :cond_11

    .line 110
    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    goto :goto_13

    .line 111
    :cond_11
    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    :goto_13
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const-string v4, "android.app.extra.DISPLAY_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000000

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 109
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    if-eqz v0, :cond_34

    const-string v0, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    goto :goto_36

    :cond_34
    const-string v0, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    .line 118
    :goto_36
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 116
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 74
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 75
    monitor-exit v0

    return p0

    .line 77
    :cond_1e
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method
