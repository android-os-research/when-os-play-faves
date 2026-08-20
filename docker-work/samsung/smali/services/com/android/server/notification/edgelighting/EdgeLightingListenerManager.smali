.class public Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;
.super Ljava/lang/Object;
.source "EdgeLightingListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "EdgeLightingListenerManager"


# instance fields
.field public mIsRunning:Z

.field public final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;",
            ">;"
        }
    .end annotation
.end field

.field public mLooper:Landroid/os/Looper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooper(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 25
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "-ListenerManager start"

    .line 128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 130
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 131
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e

    .line 133
    :cond_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_25

    const-string p0, ""

    .line 134
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_25
    move-exception p0

    .line 133
    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public isRunning()Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mIsRunning:Z

    return p0
.end method

.method public register(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 12

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 40
    :try_start_8
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v2, :cond_39

    .line 41
    :cond_10
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register : pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mListeners = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_39
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v3, :cond_3f

    .line 45
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgettoken(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 46
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "register : already registered"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    monitor-exit v1

    return-void

    .line 49
    :cond_61
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgetcomponent(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 50
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_73

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v4, :cond_93

    .line 51
    :cond_73
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "register : pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " unregister because of same component"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 57
    :cond_97
    new-instance v8, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 58
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "R listener."

    invoke-virtual {p1, p2, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_8 .. :try_end_bb} :catchall_f9

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_bf
    :goto_bf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 63
    invoke-static {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgettoken(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_bf

    invoke-static {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgetcomponent(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 64
    invoke-static {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgettoken(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgetcomponent(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->unregister(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgetcomponent(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UR listener by same component"

    invoke-virtual {v0, p2, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    :cond_f8
    return-void

    :catchall_f9
    move-exception p0

    .line 60
    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw p0
.end method

.method public startEdgeLighting()V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_e
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v1, :cond_14

    .line 101
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgetisEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 102
    invoke-static {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fputisEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)V

    .line 103
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStarted()V

    goto :goto_14

    .line 106
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public stopEdgeLighting()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    .line 112
    monitor-exit v0

    return-void

    .line 114
    :cond_e
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v1, :cond_14

    .line 115
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgetisEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    .line 116
    invoke-static {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fputisEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)V

    .line 117
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStopped()V

    goto :goto_14

    .line 120
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public unregister(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    .line 71
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v1, :cond_30

    .line 73
    :cond_b
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mListeners = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v3, :cond_37

    .line 78
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$fgettoken(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object v1, v3

    goto :goto_37

    :cond_51
    if-nez v1, :cond_5d

    .line 84
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregister : cannot find the matched host"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v0

    return-void

    .line 87
    :cond_5d
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    .line 88
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string v2, "UR listener"

    invoke-virtual {p0, p2, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    const/4 p0, 0x0

    .line 91
    invoke-interface {p1, v1, p0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 92
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw p0
.end method
