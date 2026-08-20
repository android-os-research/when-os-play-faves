.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:Ljava/net/SocketAddress;

.field public final synthetic f$3:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$2:Ljava/net/SocketAddress;

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$1:Ljava/net/Socket;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$2:Ljava/net/SocketAddress;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$q5DrhA_wVRpdT4cAtx1zNHNkPmo(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V

    return-void
.end method
