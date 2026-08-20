.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/o;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/net/Socket;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda10;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda10;->f$1:Ljava/net/Socket;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->$r8$lambda$9gmcIu5xacjvBbRt5TiKYEMKHjY(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;

    move-result-object p0

    return-object p0
.end method
