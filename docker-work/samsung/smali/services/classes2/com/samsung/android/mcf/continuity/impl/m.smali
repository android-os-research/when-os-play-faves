.class public Lcom/samsung/android/mcf/continuity/impl/m;
.super Lcom/samsung/android/mcf/continuity/impl/h;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "ContinuitySendFile"

.field public static final o:I = 0x19000


# instance fields
.field public final k:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final l:J

.field public m:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-MChcJSLrYYUInQX2m8oOsOtXm0(Lcom/samsung/android/mcf/continuity/impl/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/m;->i()V

    return-void
.end method

.method public static synthetic $r8$lambda$cQoP5Sa3YvNX2E5k1DBACk7lnFo(Lcom/samsung/android/mcf/continuity/impl/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/m;->g()V

    return-void
.end method

.method public static synthetic $r8$lambda$rAuiLq9WXJbrHCluWNaI5a6iv8s(Lcom/samsung/android/mcf/continuity/impl/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/m;->h()V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;I[BLjava/io/InputStream;J[B[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 12
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p8, p9, p10}, Lcom/samsung/android/mcf/continuity/impl/h;-><init>(Ljava/net/Socket;[B[BI)V

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/h;->h:[B

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/m;->m:Ljava/io/InputStream;

    iput-wide p6, p0, Lcom/samsung/android/mcf/continuity/impl/m;->l:J

    iput-object p11, p0, Lcom/samsung/android/mcf/continuity/impl/h;->i:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;)J
    .registers 12
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "queryFileSize"

    const-string v1, "ContinuitySendFile"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v2, p1

    move-object v3, p0

    :try_start_d
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_5d

    if-nez p0, :cond_1e

    :try_start_13
    const-string p1, "null cursor"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_51

    if-eqz p0, :cond_1d

    :try_start_1a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_5d

    :cond_1d
    return-wide v8

    :cond_1e
    :try_start_1e
    const-string p1, "_size"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_31

    const-string/jumbo p1, "size column doesn\'t exist"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_51

    :try_start_2d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_5d

    return-wide v8

    :cond_31
    :try_start_31
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_51

    :try_start_4d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_5d

    return-wide v2

    :catchall_51
    move-exception p1

    if-eqz p0, :cond_5c

    :try_start_54
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p0

    :try_start_59
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    throw p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/InputStream;)J
    .registers 8
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/m;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-string v3, "getFileSize"

    const-string v4, "ContinuitySendFile"

    if-lez v2, :cond_24

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "queryFileSize = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v3, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0

    :cond_24
    :try_start_24
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p0

    int-to-long p0, p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availableSize = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v3, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3d} :catch_3e

    return-wide p0

    :catch_3e
    const-string p0, "null cursor"

    invoke-static {v4, v3, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/m;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/m;[B)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/m;->c([B)V

    return-void
.end method

.method private synthetic g()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->a:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/m;->f()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-void
.end method

.method private synthetic h()V
    .registers 11

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySendFile"

    const-string/jumbo v3, "sendFileData"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/16 v3, 0x3e

    :try_start_2c
    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/h;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_a0

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v4

    :try_start_35
    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/m;->m:Ljava/io/InputStream;

    if-nez v7, :cond_5d

    const-string v2, "ContinuitySendFile"

    const-string/jumbo v5, "sendFileInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "null mFileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    monitor-exit v4

    return-void

    :cond_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_9d

    iget-wide v4, p0, Lcom/samsung/android/mcf/continuity/impl/m;->l:J

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_74

    const-string v2, "ContinuitySendFile"

    const-string/jumbo v4, "sendFileData"

    const-string v5, "empty file"

    invoke-static {v2, v4, v5}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :cond_74
    move-object v1, p0

    move-wide v3, v4

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/m;->a(IJLjava/io/InputStream;Ljava/io/OutputStream;)V

    :try_start_7a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_9c

    :catch_7e
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close IOException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuitySendFile"

    const-string/jumbo v1, "sendFileData"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    return-void

    :catchall_9d
    move-exception p0

    :try_start_9e
    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0

    :catch_a0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOutputStream IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ContinuitySendFile"

    const-string/jumbo v5, "sendFileData"

    invoke-static {v4, v5, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :catchall_bf
    move-exception p0

    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw p0
.end method

.method private synthetic i()V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/m;->m:Ljava/io/InputStream;

    const/16 v2, 0x3e

    const-wide/16 v3, 0x0

    if-nez v1, :cond_2f

    const-string v1, "ContinuitySendFile"

    const-string/jumbo v5, "sendFileInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "null mFileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    monitor-exit v0

    return-void

    :cond_2f
    iget-wide v5, p0, Lcom/samsung/android/mcf/continuity/impl/m;->l:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_5b

    const-string v1, "ContinuitySendFile"

    const-string/jumbo v5, "sendFileInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    monitor-exit v0

    return-void

    :cond_5b
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->h:[B

    if-eqz v1, :cond_11e

    array-length v1, v1

    if-nez v1, :cond_64

    goto/16 :goto_11e

    :cond_64
    invoke-static {v5, v6}, Lcom/samsung/android/mcf/continuity/common/Utils;->longToBytes(J)[B

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/h;->h:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x8

    new-array v5, v5, [B

    array-length v6, v1

    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/samsung/android/mcf/continuity/impl/h;->h:[B

    array-length v1, v1

    array-length v8, v6

    invoke-static {v6, v7, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_142

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ContinuitySendFile"

    const-string/jumbo v7, "sendFileInfo"

    invoke-static {v6, v7, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/mcf/continuity/impl/h;->b([B)[B

    move-result-object v0

    if-nez v0, :cond_d1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encrypt fail : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySendFile"

    const-string/jumbo v5, "sendFileInfo"

    invoke-static {v1, v5, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :cond_d1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v5

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    :try_start_ed
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f6} :catch_fc

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :catch_fc
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySendFile"

    const-string/jumbo v5, "sendFileInfo"

    invoke-static {v1, v5, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :cond_11e
    :goto_11e
    :try_start_11e
    const-string v1, "ContinuitySendFile"

    const-string/jumbo v5, "sendFileInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid fileInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    monitor-exit v0

    return-void

    :catchall_142
    move-exception p0

    monitor-exit v0
    :try_end_144
    .catchall {:try_start_11e .. :try_end_144} :catchall_142

    throw p0
.end method


# virtual methods
.method public final a(IJLjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 22
    .param p4    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-wide/from16 v2, p2

    const-string/jumbo v4, "sendFileData"

    const-string v5, "ContinuitySendFile"

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v6

    const v7, 0x19000

    new-array v7, v7, [B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_18
    const/16 v12, 0x3e

    move-object/from16 v13, p4

    :try_start_1c
    invoke-virtual {v13, v7}, Ljava/io/InputStream;->read([B)I

    move-result v14
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_b1

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2e

    const-string/jumbo v0, "readLen is -1"

    :goto_26
    invoke-static {v5, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    goto/16 :goto_d1

    :cond_2e
    const/4 v15, 0x0

    invoke-static {v7, v15, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    array-length v15, v14

    if-nez v15, :cond_39

    const-string v0, "empty payload"

    goto :goto_26

    :cond_39
    invoke-virtual {v1, v14}, Lcom/samsung/android/mcf/continuity/impl/h;->b([B)[B

    move-result-object v15

    if-nez v15, :cond_48

    const-string v0, "encrypt fail"

    invoke-static {v5, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :cond_48
    const/16 v12, 0x17

    invoke-virtual {v6, v12}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v12

    invoke-static {v15}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    move-object/from16 v15, p5

    :try_start_62
    invoke-virtual {v12, v15}, Lcom/google/protobuf/GeneratedMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_a6

    array-length v10, v14

    int-to-long v10, v10

    add-long/2addr v8, v10

    long-to-double v10, v8

    move-object v12, v6

    move-object v14, v7

    long-to-double v6, v2

    div-double/2addr v10, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v6

    const/16 v6, 0x2b

    invoke-virtual {v1, v6, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    cmp-long v6, v8, v2

    if-ltz v6, :cond_a2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {v1, v0, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    goto :goto_d1

    :cond_a2
    move-object v6, v12

    move-object v7, v14

    goto/16 :goto_18

    :catch_a6
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeDelimitedTo IOException : "

    goto :goto_bb

    :catch_b1
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read IOException : "

    :goto_bb
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e

    invoke-virtual {v1, v2, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    :goto_d1
    return-void
.end method

.method public b()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/m;->m:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_30

    if-eqz v1, :cond_2b

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/m;->m:Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e
    .catchall {:try_start_7 .. :try_end_d} :catchall_30

    goto :goto_2b

    :catch_e
    move-exception v1

    :try_start_f
    const-string v2, "ContinuitySendFile"

    const-string v3, "close"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    invoke-super {p0}, Lcom/samsung/android/mcf/continuity/impl/h;->b()V

    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final c([B)V
    .registers 7
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/Utils;->bytesToInt([B)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    const-string v1, "ContinuitySendFile"

    const-string v2, "handleFileTransferAcceptPacket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/m;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    const/16 v2, 0x28

    if-eq v1, v2, :cond_54

    const-string p1, "ContinuitySendFile"

    const-string v1, "handleFileTransferAcceptPacket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_54
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    if-eq p1, v1, :cond_7a

    if-eqz p1, :cond_74

    const-string p0, "ContinuitySendFile"

    const-string v1, "handleFileTransferDenyPacket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid confirm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_74
    const/16 p1, 0x29

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    goto :goto_7f

    :cond_7a
    const/16 p1, 0x2a

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    :goto_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p0

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public e()V
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/m$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/m$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/m;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/m$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/m$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/m;)V

    return-object v0
.end method

.method public j()V
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/m$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/m$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/m;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k()V
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/m$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/m$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/impl/m;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method
