.class public Lcom/samsung/android/mcf/continuity/impl/t$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/t;->c()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/t;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$e;->a:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .registers 4

    const-string v0, "ContinuityTcpSocketManager"

    const-string/jumbo v1, "onDisconnected"

    const-string v2, "normal socket is disconnected"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$e;->a:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->d(Lcom/samsung/android/mcf/continuity/impl/t;)V

    return-void
.end method

.method public onPacketReceived(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$e;->a:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/t;->e(Lcom/samsung/android/mcf/continuity/impl/t;)[B

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$e;->a:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/t;->f(Lcom/samsung/android/mcf/continuity/impl/t;)I

    move-result p0

    invoke-static {v0, p1, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Lcom/samsung/android/mcf/continuity/impl/t;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;[BI)V

    return-void
.end method
