.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/util/function/BiConsumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;->f$1:Ljava/net/Socket;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/BiConsumer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$tmosjuEOy-nkJKTA5Q-awJklPZ0(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;)V

    return-void
.end method
