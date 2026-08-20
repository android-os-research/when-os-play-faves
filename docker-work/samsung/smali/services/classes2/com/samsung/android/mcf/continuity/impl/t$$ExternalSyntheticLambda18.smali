.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:Ljava/net/SocketAddress;

.field public final synthetic f$3:Ljava/util/function/BiConsumer;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$2:Ljava/net/SocketAddress;

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$3:Ljava/util/function/BiConsumer;

    iput p5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$1:Ljava/net/Socket;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$2:Ljava/net/SocketAddress;

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$3:Ljava/util/function/BiConsumer;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda18;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$0XK2LrZl3tqsPk3oRDOJ_43mBAg(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;I)V

    return-void
.end method
