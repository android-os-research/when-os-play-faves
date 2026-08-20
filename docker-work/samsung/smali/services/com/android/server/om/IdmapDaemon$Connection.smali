.class public Lcom/android/server/om/IdmapDaemon$Connection;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/IdmapDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connection"
.end annotation


# instance fields
.field public final mIdmap2:Landroid/os/IIdmap2;

.field public mOpened:Z

.field public final synthetic this$0:Lcom/android/server/om/IdmapDaemon;


# direct methods
.method public static synthetic $r8$lambda$_2yCKbqx6LtMHdAep9W0ZgQ-ivk(Lcom/android/server/om/IdmapDaemon$Connection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->lambda$close$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .registers 4

    .line 79
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 80
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_d
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 82
    iput-object p2, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 83
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon$Connection-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    return-void
.end method

.method private synthetic lambda$close$0()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_7
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_27

    .line 107
    :cond_1c
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$smstopIdmapService()V

    .line 108
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fputmService(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    .line 109
    monitor-exit v0

    return-void

    .line 104
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 89
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    if-nez v1, :cond_d

    .line 90
    monitor-exit v0

    return-void

    :cond_d
    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 94
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 97
    monitor-exit v0

    return-void

    .line 100
    :cond_1e
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/IdmapDaemon$Connection;)V

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {p0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 111
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public getIdmap2()Landroid/os/IIdmap2;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    return-object p0
.end method
