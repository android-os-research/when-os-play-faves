.class public Lcom/samsung/android/mcf/continuity/impl/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/m;->f()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/m;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/m;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/h;->f:I

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_15

    const/16 v1, 0x46

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    goto :goto_1c

    :cond_15
    const/16 v1, 0x3e

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/h;->a(ID)V

    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public onPacketReceived(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .registers 7
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    iget-object v1, v1, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    iget v2, v2, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    if-eq v0, v2, :cond_48

    const-string p1, "ContinuitySendFile"

    const-string/jumbo v2, "onPacketReceived"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    iget v0, v0, Lcom/samsung/android/mcf/continuity/impl/h;->g:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/m;->a(Lcom/samsung/android/mcf/continuity/impl/m;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_99

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    if-nez p1, :cond_5e

    const-string p0, "ContinuitySendFile"

    const-string/jumbo p1, "onPacketReceived"

    const-string v0, "null byteString"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5e
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/mcf/continuity/impl/h;->a([B)[B

    move-result-object p1

    if-nez p1, :cond_75

    const-string p0, "ContinuitySendFile"

    const-string/jumbo p1, "onPacketReceived"

    const-string v0, "null byteString"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_75
    const/16 v1, 0x16

    if-eq v0, v1, :cond_93

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid type : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuitySendFile"

    const-string/jumbo v0, "onPacketReceived"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_93
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/m$a;->a:Lcom/samsung/android/mcf/continuity/impl/m;

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/m;->a(Lcom/samsung/android/mcf/continuity/impl/m;[B)V

    return-void

    :catchall_99
    move-exception p0

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0
.end method
