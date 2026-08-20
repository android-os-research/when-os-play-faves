.class public final Lcom/android/server/power/ShutdownCheckPoints;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;,
        Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$Injector;
    }
.end annotation


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

.field public static final MAX_CHECK_POINTS:I = 0x64

.field public static final MAX_DUMP_FILES:I = 0x14

.field public static final TAG:Ljava/lang/String; = "ShutdownCheckPoints"


# instance fields
.field public final mCheckPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;",
            ">;"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    .line 89
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 110
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static newDumpThread(Ljava/io/File;)Ljava/lang/Thread;
    .registers 2

    .line 119
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static recordCheckPoint(ILjava/lang/String;)V
    .registers 3

    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;)V
    .registers 2

    .line 94
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 105
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    monitor-enter v0

    .line 156
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    .line 159
    invoke-virtual {v0, p1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->dump(Ljava/io/PrintWriter;)V

    .line 160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_f

    :cond_22
    return-void

    :catchall_23
    move-exception p0

    .line 157
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxDumpFiles()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;-><init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V

    return-object v0
.end method

.method public recordCheckPointInternal(ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 131
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    goto :goto_15

    .line 132
    :cond_e
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;ILjava/lang/String;)V

    .line 130
    :goto_15
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Binder shutdown checkpoint recorded with pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxCheckPoints()I

    move-result v1

    if-le p1, v1, :cond_1b

    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 149
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public recordCheckPointInternal(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    const-string p0, "ShutdownCheckPoints"

    const-string p1, "System server shutdown checkpoint recorded"

    .line 125
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "android"

    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 139
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p3}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    goto :goto_17

    .line 140
    :cond_10
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_17
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "Shutdown intent checkpoint recorded intent=%s from package=%s"

    .line 141
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
