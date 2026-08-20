.class public Lcom/samsung/android/mcf/continuity/impl/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/l;->f()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/l;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/l;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/l$a;->a:Lcom/samsung/android/mcf/continuity/impl/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/l$a;->a:Lcom/samsung/android/mcf/continuity/impl/l;

    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/l$a;->a:Lcom/samsung/android/mcf/continuity/impl/l;

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
    .registers 8
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    const-string v2, "null byteString"

    const-string/jumbo v3, "onPacketReceived"

    const-string v4, "ContinuityReceiveFile"

    if-nez p1, :cond_19

    invoke-static {v4, v3, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/l$a;->a:Lcom/samsung/android/mcf/continuity/impl/l;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/samsung/android/mcf/continuity/impl/h;->a([B)[B

    move-result-object p1

    if-nez p1, :cond_29

    invoke-static {v4, v3, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const/16 v2, 0x15

    if-eq v0, v2, :cond_4c

    const/16 v2, 0x17

    if-eq v0, v2, :cond_46

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid type : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_46
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/l$a;->a:Lcom/samsung/android/mcf/continuity/impl/l;

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/l;->a(Lcom/samsung/android/mcf/continuity/impl/l;I[B)V

    return-void

    :cond_4c
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/l$a;->a:Lcom/samsung/android/mcf/continuity/impl/l;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/l;->b(I[B)V

    return-void
.end method
