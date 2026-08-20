.class public Lcom/samsung/android/mcf/continuity/impl/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/t$f;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "ContinuityTcpSocketManager"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:I

.field public final d:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public volatile e:Lcom/samsung/android/mcf/continuity/impl/t$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile f:Ljava/net/Socket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile g:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile h:I

.field public final i:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public volatile j:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile k:Ljava/net/Socket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile l:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile m:I

.field public final n:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final o:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public volatile p:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0XK2LrZl3tqsPk3oRDOJ_43mBAg(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6WdbBa5M3u-1or-2leCZGDzm3ok(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BwODJwP28iT3YjPkIXq6Fsg06hA(Lcom/samsung/android/mcf/continuity/impl/t;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;B[B)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/t;->a(IILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;B[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$IpOQamZx5lGzU92PcLcsvYP8M7s(Lcom/samsung/android/mcf/continuity/impl/t;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->f(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MHtbT3Ld_pkXJ-E_lcNdQR0-eDQ(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/Consumer;ILjava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Ljava/util/function/Consumer;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbSfHJsx0_8P8QG8bJBx8PyotFg(Lcom/samsung/android/mcf/continuity/impl/t;IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t;->a(IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nu42sHzTFr5LPdiT-Z0f6SKFJb8(Lcom/samsung/android/mcf/continuity/impl/t;IB[B[B)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t;->a(IB[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O8bujqa7w2iG30Gnb_rdKLowmgs(Lcom/samsung/android/mcf/continuity/impl/t;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;IB[BLjava/lang/Boolean;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;IB[BLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PPTiFHTBGJVSqi-unu5oA6Xxn4Q(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;[BILjava/util/function/BiConsumer;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;[BILjava/util/function/BiConsumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i7RN_kd-GJfIjUDXfnsQdDslTiE(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/BiConsumer;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Ljava/util/function/BiConsumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iGRM53cVIMlvZo3v7rBnCSaWOBo(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->b(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ncWgSB8exednv8VjOPSHXJ61rzU(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/BiConsumer;ILjava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Ljava/util/function/BiConsumer;ILjava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLcom/samsung/android/mcf/continuity/impl/t$f;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/impl/t$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->i:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->n:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->o:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/t;->c:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/t;->e:Lcom/samsung/android/mcf/continuity/impl/t$f;

    const/16 p2, 0x9

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ContTcpLowDelay"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->createSingleThreadPoolExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ContTcpNormal"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->createSingleThreadPoolExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)I
    .registers 3
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x0

    return p0

    :catch_9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityTcpSocketManager"

    const-string/jumbo v0, "sendPacket"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private synthetic a(IB[B[B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/t;->a(IB[B)I

    move-result p1

    new-instance p2, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda5;

    invoke-direct {p2, p4, p1}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    const/4 p2, -0x1

    if-ne p1, p2, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->f()V

    :cond_12
    return-void
.end method

.method private synthetic a(IILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;B[B)V
    .registers 13

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->d(I)Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;IB[B)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/mcf/continuity/impl/t;->a(ILjava/util/function/Consumer;)V

    return-void

    :cond_15
    invoke-virtual {p0, p1, p4, p5}, Lcom/samsung/android/mcf/continuity/impl/t;->a(IB[B)I

    move-result p0

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda15;

    invoke-direct {p1, p3, p0}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;IB[BLjava/lang/Boolean;)V
    .registers 6

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_19

    const-string p0, "ContinuityTcpSocketManager"

    const-string/jumbo p2, "sendNormalSocket"

    const-string p3, "fail connectNormalSocket"

    invoke-static {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda16;

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_19
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t;->a(IB[B)I

    move-result p0

    new-instance p2, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda17;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/t;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/t;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->g(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/t;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;[BI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;[BI)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/BiConsumer;I[BI)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Ljava/util/function/BiConsumer;I[BI)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "ContinuityTcpSocketManager"

    const-string/jumbo v0, "tryConnectNormalSocket"

    const-string v1, "fail connectNormalSocket"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private synthetic a(Ljava/net/Socket;)V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->b()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-void
.end method

.method private synthetic a(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;I)V
    .registers 6

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/BiConsumer;I)V

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic a(Ljava/net/Socket;Ljava/util/function/BiConsumer;I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/t$b;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/t$b;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/util/function/BiConsumer;I)V

    invoke-static {p1, v0, v1, p3}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;I)V

    return-void
.end method

.method private synthetic a(Ljava/net/Socket;Ljava/util/function/BiConsumer;ILjava/lang/Boolean;)V
    .registers 11

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_14

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/t$a;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/mcf/continuity/impl/t$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/util/function/BiConsumer;)V

    const/16 v4, 0x44e

    const/16 v5, 0xb

    move-object v0, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;III)V

    return-void
.end method

.method private synthetic a(Ljava/net/Socket;Ljava/util/function/Consumer;ILjava/lang/Boolean;)V
    .registers 11

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_f

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/t$d;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/mcf/continuity/impl/t$d;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/util/function/Consumer;)V

    const/16 v4, 0x44d

    const/16 v5, 0xb

    move-object v0, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;III)V

    return-void
.end method

.method private synthetic a(Ljava/net/Socket;[BILjava/util/function/BiConsumer;I)V
    .registers 6

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->f:Ljava/net/Socket;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t;->g:[B

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/t;->h:I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method private synthetic b(Ljava/net/Socket;)V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->c()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/t;)[B
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->g:[B

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/impl/t;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->h:I

    return p0
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/t;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->a()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/mcf/continuity/impl/t;)[B
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->l:[B

    return-object p0
.end method

.method public static synthetic f(Lcom/samsung/android/mcf/continuity/impl/t;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->m:I

    return p0
.end method

.method private synthetic f(I)V
    .registers 3

    const/16 v0, 0x44d

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/t;->d(I)Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/impl/t;->a(ILjava/util/function/Consumer;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    packed-switch p1, :pswitch_data_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported trafficType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityTcpSocketManager"

    const-string v0, "getEncryptType"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :pswitch_1d
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->m:I

    return p0

    :pswitch_20
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->h:I

    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x44c
        :pswitch_20
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final a(IB[B)I
    .registers 15
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->d(I)Ljava/net/Socket;

    move-result-object v6

    const/4 v0, -0x1

    const-string/jumbo v7, "sendMessage"

    const-string v8, "ContinuityTcpSocketManager"

    if-nez v6, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null socket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v7, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_27
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->c(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v2

    if-nez v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null builder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v7, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_48
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->b(I)[B

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lcom/samsung/android/mcf/continuity/impl/b;->b([BI[B[B)[B

    move-result-object v5

    if-nez v5, :cond_73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypt fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v7, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_73
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    new-instance v10, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;IB[B[B)V

    invoke-static {v8, v7, v10}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-static {v6, v9}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)I

    move-result v0

    return v0
.end method

.method public final a()V
    .registers 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->k:Ljava/net/Socket;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->k:Ljava/net/Socket;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final a(IIB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 15
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/t;->e(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-nez v0, :cond_19

    const-string p0, "ContinuityTcpSocketManager"

    const-string/jumbo p1, "sendNormalSocket"

    const-string p2, "null threadPoolExecutor"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda9;

    invoke-direct {p0, p5}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_19
    new-instance v8, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move v4, p1

    move-object v5, p5

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;B[B)V

    invoke-static {v0, v8}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(ILjava/util/function/Consumer;)V
    .registers 8
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->e()Ljava/net/SocketAddress;

    move-result-object v0

    const-string v1, "connectNormalSocket"

    const-string v2, "ContinuityTcpSocketManager"

    if-nez v0, :cond_15

    const-string p0, "null socketAddress"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_15
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocket()Ljava/net/Socket;

    move-result-object v3

    const-string v4, "-"

    invoke-static {v2, v1, v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/Consumer;I)V

    invoke-static {v3, v0, v1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;[BI)V
    .registers 9
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    const-string/jumbo v2, "onPacketReceived"

    const-string v3, "ContinuityTcpSocketManager"

    if-nez p1, :cond_2e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "null byteString : "

    :goto_1a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2a
    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    invoke-static {p1, p3, v4, p2}, Lcom/samsung/android/mcf/continuity/impl/b;->a([BI[B[B)[B

    move-result-object p1

    if-nez p1, :cond_42

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decrypt fail : "

    goto :goto_1a

    :cond_42
    const/16 p2, 0xb

    if-eq v0, p2, :cond_5c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "wrong packetType = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :cond_5c
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->e:Lcom/samsung/android/mcf/continuity/impl/t$f;

    if-nez p0, :cond_63

    const-string p0, "null messageCallback"

    goto :goto_2a

    :cond_63
    invoke-interface {p0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/t$f;->a(I[B)V

    :goto_66
    return-void
.end method

.method public a(Ljava/net/Socket;ILjava/util/function/BiConsumer;)V
    .registers 11
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/BiConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->e()Ljava/net/SocketAddress;

    move-result-object v3

    const-string v0, "connectLowDelaySocket"

    const-string v1, "ContinuityTcpSocketManager"

    if-nez v3, :cond_1d

    const-string p0, "null socketAddress"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/t;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/mcf/continuity/impl/t;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;I)V

    invoke-static {v6}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/net/Socket;Ljava/util/function/BiConsumer;I[BI)V
    .registers 14
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/BiConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;I[BI)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContinuityTcpSocketManager"

    const-string/jumbo v3, "setLowDelaySocket"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->f:Ljava/net/Socket;

    if-eqz v0, :cond_22

    const-string v5, "close prevControlSocket"

    invoke-static {v2, v3, v5}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    :cond_22
    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;[BILjava/util/function/BiConsumer;I)V

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/net/Socket;[BI)V
    .registers 7
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityTcpSocketManager"

    const-string/jumbo v2, "setNormalSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_19
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->a()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->k:Ljava/net/Socket;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t;->l:[B

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/t;->m:I

    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

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

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->h:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->g:[B

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/b;->a([BI[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/t$c;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;)V

    return-object v0
.end method

.method public final b(IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 13
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->e(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-nez v0, :cond_19

    const-string p0, "ContinuityTcpSocketManager"

    const-string/jumbo p1, "sendLowDelaySocket"

    const-string p2, "null threadPoolExecutor"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda3;

    invoke-direct {p0, p4}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_19
    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {v0, v7}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(IIB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 6
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    packed-switch p2, :pswitch_data_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not supported trafficType = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityTcpSocketManager"

    const-string/jumbo p2, "sendTcpMessage"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :pswitch_1d
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/t;->a(IIB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    goto :goto_24

    :pswitch_21
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/mcf/continuity/impl/t;->b(IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x44c
        :pswitch_21
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public b(Ljava/net/Socket;ILjava/util/function/BiConsumer;)V
    .registers 5
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/BiConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/BiConsumer;I)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(I)[B
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported trafficType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityTcpSocketManager"

    const-string v0, "getIv"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1d
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->l:[B

    return-object p0

    :pswitch_20
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->g:[B

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x44c
        :pswitch_20
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public b([B)[B
    .registers 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->h:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t;->d:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->g:[B

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/b;->b([BI[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/t$e;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/t$e;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;)V

    return-object v0
.end method

.method public final c(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported trafficType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityTcpSocketManager"

    const-string v0, "getPacketBuilder"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1d
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->n:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    return-object p0

    :pswitch_20
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->i:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x44c
        :pswitch_20
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final d(I)Ljava/net/Socket;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported trafficType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityTcpSocketManager"

    const-string v0, "getSocket"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1d
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->k:Ljava/net/Socket;

    return-object p0

    :pswitch_20
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->f:Ljava/net/Socket;

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x44c
        :pswitch_20
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public d()V
    .registers 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "ContinuityTcpSocketManager"

    const-string v1, "destroy"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/t;->e:Lcom/samsung/android/mcf/continuity/impl/t$f;

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/t;->f:Ljava/net/Socket;

    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/t;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v3, :cond_1e

    const-string/jumbo v4, "shutdown mLowDelaySocketThreadPoolExecutor"

    invoke-static {v0, v1, v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_1e
    iput-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/t;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->a()V

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/t;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v3, :cond_30

    const-string/jumbo v4, "shutdown mNormalDelaySocketThreadPoolExecutor"

    invoke-static {v0, v1, v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_30
    iput-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/t;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public final e()Ljava/net/SocketAddress;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->b:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string p0, "ContinuityTcpSocketManager"

    const-string v0, "getSocketAddress"

    const-string v1, "null Ip"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->c:I

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocketAddress(Ljava/lang/String;I)Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public final e(I)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported trafficType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityTcpSocketManager"

    const-string v0, "getThreadPoolExecutor"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1d
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_22

    :pswitch_20
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_22
    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x44c
        :pswitch_20
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final f()V
    .registers 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t;->e:Lcom/samsung/android/mcf/continuity/impl/t$f;

    if-nez p0, :cond_f

    const-string p0, "ContinuityTcpSocketManager"

    const-string/jumbo v0, "onControlSocketDisconnected"

    const-string v1, "null messageCallback"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/impl/t$f;->onDisconnected()V

    return-void
.end method

.method public final g(I)V
    .registers 4

    const/16 v0, 0x44d

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/t;->e(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-nez v0, :cond_13

    const-string p0, "ContinuityTcpSocketManager"

    const-string/jumbo p1, "tryConnectNormalSocket"

    const-string v0, "null threadPoolExecutor"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/mcf/continuity/impl/t;I)V

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    return-void
.end method
