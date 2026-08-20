.class public Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UncryptSocket"
.end annotation


# instance fields
.field public mInputStream:Ljava/io/DataInputStream;

.field public mLocalSocket:Landroid/net/LocalSocket;

.field public mOutputStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1190
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1191
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1192
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public connectService()Z
    .registers 9

    .line 1121
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const/16 v2, 0x1e

    const-string v3, "RecoverySystemService"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_30

    .line 1128
    :try_start_10
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "uncrypt"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_21

    move v1, v4

    goto :goto_31

    :catch_21
    const-wide/16 v4, 0x3e8

    .line 1134
    :try_start_23
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v2

    const-string v4, "Interrupted:"

    .line 1136
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_30
    move v1, v0

    :goto_31
    if-nez v1, :cond_3c

    const-string v1, "Timed out connecting to uncrypt socket"

    .line 1141
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v0

    .line 1147
    :cond_3c
    :try_start_3c
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    .line 1148
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_56} :catch_57

    return v4

    .line 1150
    :catch_57
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v0
.end method

.method public getPercentageUncrypted()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method public sendAck()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1165
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1166
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method
