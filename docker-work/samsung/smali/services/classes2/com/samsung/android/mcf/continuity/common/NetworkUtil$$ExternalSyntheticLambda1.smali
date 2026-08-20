.class public final synthetic Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/net/Socket;

.field public final synthetic f$1:Ljava/net/SocketAddress;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;->f$0:Ljava/net/Socket;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;->f$1:Ljava/net/SocketAddress;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;->f$0:Ljava/net/Socket;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;->f$1:Ljava/net/SocketAddress;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->$r8$lambda$P7ua9tjQdHR4-DgpqqgTj2R3Dms(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V

    return-void
.end method
