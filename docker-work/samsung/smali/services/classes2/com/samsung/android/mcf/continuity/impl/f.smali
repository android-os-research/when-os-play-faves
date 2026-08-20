.class public Lcom/samsung/android/mcf/continuity/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/f$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "ContinuityDatagramSocket"

.field public static final c:I = 0xe0


# instance fields
.field public final a:Ljava/net/DatagramSocket;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$kgPJh_scEfIVHhlR0lU4_4q9J_M(Lcom/samsung/android/mcf/continuity/impl/f;Lcom/samsung/android/mcf/continuity/impl/f$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/f;->a(Lcom/samsung/android/mcf/continuity/impl/f$a;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/f;->a:Ljava/net/DatagramSocket;

    const/16 p0, 0xe0

    invoke-virtual {v0, p0}, Ljava/net/DatagramSocket;->setTrafficClass(I)V

    return-void
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/impl/f$a;)V
    .registers 9

    const-string/jumbo v0, "read"

    const-string v1, "ContinuityDatagramSocket"

    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/f;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v2
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_b} :catch_a0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receivedBufferSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/net/DatagramPacket;

    new-array v4, v2, [B

    invoke-direct {v3, v4, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    :goto_27
    :try_start_27
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/f;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_86

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v5

    if-eqz v2, :cond_83

    array-length v6, v2

    add-int/2addr v4, v5

    if-ge v6, v4, :cond_3f

    goto :goto_83

    :cond_3f
    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    :try_start_43
    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->parseFrom([B)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    move-result-object v2
    :try_end_47
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_43 .. :try_end_47} :catch_69

    if-nez v2, :cond_4c

    const-string v2, "null continuityPacket"

    goto :goto_7f

    :cond_4c
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getId()I

    move-result v6

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v2

    if-nez v2, :cond_61

    const-string v2, "null byteString"

    goto :goto_7f

    :cond_61
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1, v4, v5, v6, v2}, Lcom/samsung/android/mcf/continuity/impl/f$a;->a(Ljava/net/InetAddress;II[B)V

    goto :goto_27

    :catch_69
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidProtocolBufferException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7f
    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_83
    :goto_83
    const-string p0, "null data"

    goto :goto_9c

    :catch_86
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datagramSocket read IOException : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9c
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_a0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReceiveBufferSize IOException : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lcom/samsung/android/mcf/continuity/impl/f;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/f;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/f;->a:Ljava/net/DatagramSocket;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    return-void
.end method

.method public a(Ljava/net/SocketAddress;B[B)V
    .registers 6
    .param p1    # Ljava/net/SocketAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p2

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite;->toByteArray()[B

    move-result-object p2

    new-instance p3, Ljava/net/DatagramPacket;

    array-length v0, p2

    invoke-direct {p3, p2, v0, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/f;->a:Ljava/net/DatagramSocket;

    invoke-virtual {p0, p3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public b(Lcom/samsung/android/mcf/continuity/impl/f$a;)V
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/f$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/f$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/f;Lcom/samsung/android/mcf/continuity/impl/f$a;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/f;->a:Ljava/net/DatagramSocket;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p0

    return p0
.end method
