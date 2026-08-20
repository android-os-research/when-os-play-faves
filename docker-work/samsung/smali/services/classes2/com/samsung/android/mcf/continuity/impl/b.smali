.class public Lcom/samsung/android/mcf/continuity/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ContinuityAuthHelper"

.field public static final b:I = 0x10

.field public static final c:I = 0xa

.field public static final d:I = -0x1

.field public static final e:I = 0x0

.field public static final f:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/Socket;[BI)Lorg/json/JSONObject;
    .registers 7
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocketOnce(Ljava/net/Socket;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "receiveAuthPacket"

    const-string v2, "ContinuityAuthHelper"

    if-nez p0, :cond_12

    const-string p0, "null continuityPacket"

    :goto_e
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v3

    if-eq v3, p2, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "wrong type = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p0

    if-nez p0, :cond_34

    const-string p0, "null byteString"

    goto :goto_e

    :cond_34
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->decryptCbc([B[B)[B

    move-result-object p0

    if-nez p0, :cond_41

    const-string p0, "decrypt fail"

    goto :goto_e

    :cond_41
    :try_start_41
    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_4d} :catch_4e

    return-object p1

    :catch_4e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "JSONException : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e
.end method

.method public static synthetic a(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;)V
    .registers 19

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start, LUP = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "ContinuityAuthHelper"

    const-string/jumbo v9, "startAuthForAcceptSocket"

    invoke-static {v8, v9, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/b;->a()[B

    move-result-object v0

    const-string/jumbo v2, "send AUTH_INIT"

    invoke-static {v8, v9, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1, v0}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[B[B)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v0, "fail sendAuthInit"

    invoke-static {v8, v9, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void

    :cond_3a
    const/4 v2, 0x4

    invoke-static {v6, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BI)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4a

    const-string v0, "fail receiveAuthPacket"

    invoke-static {v8, v9, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void

    :cond_4a
    const-string/jumbo v4, "receive AUTH_ACK"

    invoke-static {v8, v9, v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/impl/j;->g(Lorg/json/JSONObject;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->hashSHA256([B)[B

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/impl/j;->d(Lorg/json/JSONObject;)[B

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/impl/j;->f(Lorg/json/JSONObject;)I

    move-result v11

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/impl/j;->j(Lorg/json/JSONObject;)I

    move-result v12

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/impl/j;->b(Lorg/json/JSONObject;)I

    move-result v13

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/impl/j;->c(Lorg/json/JSONObject;)I

    move-result v14

    if-eqz v4, :cond_c0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->hashSHA256([B)[B

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_c0

    :cond_79
    const-string/jumbo v0, "send AUTH_FIN"

    invoke-static {v8, v9, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v4

    move v3, p0

    move v4, v12

    move v5, v13

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[B[BIII)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v0, "fail sendAuthFin"

    invoke-static {v8, v9, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void

    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "success, UP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ET = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v10

    move v6, v14

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;III[BI)V

    return-void

    :cond_c0
    :goto_c0
    const-string v0, "fail authentication"

    invoke-static {v8, v9, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic a(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;II)V
    .registers 16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start, LUP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityAuthHelper"

    const-string/jumbo v2, "startAuthForConnectSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BI)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string p0, "fail receiveAuthPacket"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void

    :cond_2a
    const-string/jumbo v3, "receive AUTH_INIT"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/j;->g(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->hashSHA256([B)[B

    move-result-object v6

    if-nez v6, :cond_43

    const-string p0, "null hashRcvNonce"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void

    :cond_43
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/b;->a()[B

    move-result-object v0

    const-string/jumbo v3, "send AUTH_ACK"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v7, p0

    move v8, p4

    move v9, p5

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[B[B[BIII)Z

    move-result p0

    if-nez p0, :cond_62

    const-string p0, "fail sendAuthAck"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void

    :cond_62
    const/4 p0, 0x5

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BI)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_72

    const-string p0, "null jsonObjectAuthFin"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void

    :cond_72
    const-string/jumbo p2, "receive AUTH_FIN"

    invoke-static {v1, v2, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/j;->d(Lorg/json/JSONObject;)[B

    move-result-object p2

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/j;->f(Lorg/json/JSONObject;)I

    move-result v5

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/j;->j(Lorg/json/JSONObject;)I

    move-result v3

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/j;->b(Lorg/json/JSONObject;)I

    move-result v4

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/j;->c(Lorg/json/JSONObject;)I

    move-result v9

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->hashSHA256([B)[B

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_c1

    if-ne p4, v3, :cond_c1

    if-eq p5, v4, :cond_9b

    goto :goto_c1

    :cond_9b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "success, UP = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ET = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p3

    move-object v4, p1

    move v6, p4

    move v7, p5

    move-object v8, v0

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;III[BI)V

    return-void

    :cond_c1
    :goto_c1
    const-string p0, "fail authentication"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/mcf/continuity/impl/b$a;->a(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic a(Ljava/net/Socket;)V
    .registers 4

    const-string v0, "ContinuityAuthHelper"

    const-string/jumbo v1, "startAuthForAcceptSocket"

    const-string/jumbo v2, "timeout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    return-void
.end method

.method public static a(Ljava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;I)V
    .registers 5
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;-><init>(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;)V

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda3;-><init>(Ljava/net/Socket;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0xa

    invoke-static {v0, p1, p2, p3, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->schedule(Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static a(Ljava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;III)V
    .registers 14
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;

    move-object v0, v7

    move v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;-><init>(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;II)V

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda1;-><init>(Ljava/net/Socket;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0xa

    invoke-static {v7, p1, p2, p3, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->schedule(Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static a(Ljava/net/Socket;[BILorg/json/JSONObject;)Z
    .registers 7
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p3, p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->encryptCbc([B[B)[B

    move-result-object p1

    const/4 p3, 0x0

    const-string/jumbo v0, "send"

    const-string v1, "ContinuityAuthHelper"

    if-nez p1, :cond_1c

    const-string p0, "encryption fail"

    :goto_18
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_1c
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p2

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    :try_start_3e
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_47

    const/4 p0, 0x1

    return p0

    :catch_47
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IOException : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18
.end method

.method public static a(Ljava/net/Socket;[B[B)Z
    .registers 4
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/impl/j;->a([B)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_12

    const-string p0, "ContinuityAuthHelper"

    const-string/jumbo p1, "sendAuthInit"

    const-string p2, "null jsonObject"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BILorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/net/Socket;[B[BIII)Z
    .registers 6
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p2, p3, p4, p5}, Lcom/samsung/android/mcf/continuity/impl/j;->a([BIII)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_12

    const-string p0, "ContinuityAuthHelper"

    const-string/jumbo p1, "sendAuthFin"

    const-string p2, "null jsonObject"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p3, 0x5

    invoke-static {p0, p1, p3, p2}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BILorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/net/Socket;[B[B[BIII)Z
    .registers 7
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
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
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p2, p3, p4, p5, p6}, Lcom/samsung/android/mcf/continuity/impl/j;->a([B[BIII)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_12

    const-string p0, "ContinuityAuthHelper"

    const-string/jumbo p1, "sendAuthAck"

    const-string p2, "null jsonObject"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p3, 0x4

    invoke-static {p0, p1, p3, p2}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BILorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static a()[B
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method public static a([BI[B[B)[B
    .registers 4
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_c

    const/4 p3, 0x1

    if-eq p1, p3, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    invoke-static {p0, p2}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->decryptCtr([B[B)[B

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->decryptCbc([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/net/Socket;)V
    .registers 4

    const-string v0, "ContinuityAuthHelper"

    const-string/jumbo v1, "startAuthForConnectSocket"

    const-string/jumbo v2, "timeout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    return-void
.end method

.method public static b([BI[B[B)[B
    .registers 4
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_c

    const/4 p3, 0x1

    if-eq p1, p3, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    invoke-static {p0, p2}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->encryptCtr([B[B)[B

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->encryptCbc([B[B[B)[B

    move-result-object p0

    return-object p0
.end method
