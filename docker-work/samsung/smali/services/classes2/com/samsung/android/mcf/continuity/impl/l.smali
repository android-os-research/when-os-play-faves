.class public Lcom/samsung/android/mcf/continuity/impl/l;
.super Lcom/samsung/android/mcf/continuity/impl/h;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "ContinuityReceiveFile"


# instance fields
.field public final k:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Ljava/io/OutputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:J

.field public o:J


# direct methods
.method public static synthetic $r8$lambda$3GApVAZ1lCIsh_8NksiPW5x5Nwo(Lcom/samsung/android/mcf/continuity/impl/l;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/l;->a(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$_lzaU_3o9sYpJF10_ttT2RtkViA(Lcom/samsung/android/mcf/continuity/impl/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/l;->g()V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;[B[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 7
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/samsung/android/mcf/continuity/impl/h;-><init>(Ljava/net/Socket;[B[BI)V

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/mcf/continuity/impl/l;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method

.method private synthetic a(II)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContinuityReceiveFile"

    const-string/jumbo v3, "sendFileTransferResponse"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/Utils;->intToBytes(I)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/h;->b([B)[B

    move-result-object p2

    const/16 v0, 0x3e

    const-wide/16 v4, 0x0

    if-nez p2, :cond_57

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypt fail : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sendMessage"

    invoke-static {v2, p2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :cond_57
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v1

    const/16 v6, 0x16

    invoke-virtual {v1, v6}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    :try_start_73
    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7c} :catch_82

    const/16 p1, 0x33

    invoke-virtual {p0, p1, v4, v5}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :catch_82
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;->onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/l;I[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/l;->a(I[B)V

    return-void
.end method

.method private synthetic g()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->a:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/l;->f()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-void
.end method


# virtual methods
.method public final a(I[B)V
    .registers 11
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    if-eq v1, p1, :cond_39

    const-string p2, "ContinuityReceiveFile"

    const-string v1, "handleFileTransferDataPacket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_39
    iget p1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    const/16 v1, 0x33

    if-eq p1, v1, :cond_73

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleFileTransferDataPacket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_73
    iget-wide v2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->o:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/samsung/android/mcf/continuity/impl/l;->n:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/l;->m:Ljava/io/OutputStream;

    const/16 v6, 0x3e

    if-nez p1, :cond_a6

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleFileTransferDataPacket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null mFileOutputStream "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    monitor-exit v0

    return-void

    :cond_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_10c

    :try_start_a7
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ea

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_ad
    iget-wide v2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->o:J

    array-length p2, p2

    int-to-long v6, p2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->o:J

    long-to-double v2, v2

    iget-wide v6, p0, Lcom/samsung/android/mcf/continuity/impl/l;->n:J

    long-to-double v6, v6

    div-double/2addr v2, v6

    mul-double/2addr v2, v4

    monitor-exit p1
    :try_end_bb
    .catchall {:try_start_ad .. :try_end_bb} :catchall_e7

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    cmpl-double p1, v2, v4

    if-nez p1, :cond_e6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "success : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityReceiveFile"

    const-string v0, "handleFileTransferDataPacket"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3d

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    :cond_e6
    return-void

    :catchall_e7
    move-exception p0

    :try_start_e8
    monitor-exit p1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0

    :catch_ea
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "write IOException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityReceiveFile"

    const-string v0, "handleFileTransferDataPacket"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    return-void

    :catchall_10c
    move-exception p0

    :try_start_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw p0
.end method

.method public final a(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x32

    :try_start_5
    iput v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/l;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_15

    if-eqz p0, :cond_14

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public a(ILjava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .registers 6
    .param p2    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Supplier<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid confirm = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleTransferRequestPacket"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_20
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/l;->a(Ljava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/l;->b(I)V

    return v0

    :cond_2a
    return v1

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/l;->b(I)V

    return v0
.end method

.method public final a(Ljava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .registers 4
    .param p1    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    if-eqz p1, :cond_18

    if-nez p2, :cond_b

    goto :goto_18

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->i:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/l;->m:Ljava/io/OutputStream;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0

    :cond_18
    :goto_18
    const-string p0, "ContinuityReceiveFile"

    const-string/jumbo p1, "setFile"

    const-string p2, "null outputStream or fileStatusListenerWrapper"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/l;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->m:Ljava/io/OutputStream;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_32

    if-eqz v2, :cond_2d

    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/l;->m:Ljava/io/OutputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10
    .catchall {:try_start_a .. :try_end_f} :catchall_32

    goto :goto_2d

    :catch_10
    move-exception v1

    :try_start_11
    const-string v2, "ContinuityReceiveFile"

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

    :cond_2d
    :goto_2d
    invoke-super {p0}, Lcom/samsung/android/mcf/continuity/impl/h;->b()V

    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final b(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/l;II)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void

    :catchall_f
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public b(I[B)V
    .registers 10
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid payload = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleTransferRequestPacket"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    const/4 v0, 0x0

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, p2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_5b

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleTransferRequestPacket"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_5b
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/Utils;->bytesToLong([B)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->n:J

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/i;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    const-string v3, "THIS_DEVICE"

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/mcf/continuity/impl/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "ContinuityReceiveFile"

    const-string v3, "handleFileTransferRequestPacket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/mcf/continuity/impl/l;->n:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/l;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/l;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    :goto_9a
    monitor-exit v1

    return-void

    :catchall_9c
    move-exception p0

    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_3a .. :try_end_9e} :catchall_9c

    throw p0
.end method

.method public e()V
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/impl/l;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/l$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/l$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/l;)V

    return-object v0
.end method
