.class public abstract Lcom/samsung/android/mcf/continuity/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "ContinuityFile"


# instance fields
.field public final a:Ljava/net/Socket;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/Socket;[B[BI)V
    .registers 6
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->a:Ljava/net/Socket;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->b:[B

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/h;->c:[B

    iput p4, p0, Lcom/samsung/android/mcf/continuity/impl/h;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/h;->a(I)V

    return-void
.end method

.method public final a(I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->i:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/h;->b()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    if-nez v1, :cond_15

    const-string p0, "ContinuityFile"

    const-string p1, "cancel"

    const-string v0, "null fileStatusListenerWrapper"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public a(ID)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->i:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    if-nez v1, :cond_14

    const-string p0, "ContinuityFile"

    const-string p1, "nextFileStatusUpdated"

    const-string p2, "null fileStatusListenerWrapper"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public a([B)[B
    .registers 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->d:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->b:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->c:[B

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/b;->a([BI[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .registers 4

    const-string v0, "ContinuityFile"

    const-string v1, "close"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->h:[B

    const/16 v2, 0x46

    iput v2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->i:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1c

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->a:Ljava/net/Socket;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public b([B)[B
    .registers 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->d:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->b:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->c:[B

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/b;->b([BI[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .registers 2

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/h;->a(I)V

    return-void
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public abstract e()V
.end method
