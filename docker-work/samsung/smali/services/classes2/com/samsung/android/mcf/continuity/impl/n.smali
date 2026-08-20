.class public Lcom/samsung/android/mcf/continuity/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "ContinuityServerSocket"


# instance fields
.field public final a:Ljava/net/ServerSocket;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vz_g8vP2Wy2VvttyTT-QUJTB1Gg(Lcom/samsung/android/mcf/continuity/impl/n;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/n;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/n;->a:Ljava/net/ServerSocket;

    return-void
.end method

.method public static b()Lcom/samsung/android/mcf/continuity/impl/n;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/n;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/n;-><init>()V

    return-object v0
.end method

.method private synthetic b(Ljava/util/function/Consumer;)V
    .registers 7

    const-string v0, "accept"

    const-string v1, "ContinuityServerSocket"

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/n;->a:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_2d

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4

    :catch_2d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/n;->a:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_23

    :catch_6
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuityServerSocket"

    const-string v1, "close"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public a(Ljava/util/function/Consumer;)Z
    .registers 3
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/net/Socket;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/n$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/n$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/n;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/n;->a:Ljava/net/ServerSocket;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public d()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/n;->a:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p0

    return p0
.end method
