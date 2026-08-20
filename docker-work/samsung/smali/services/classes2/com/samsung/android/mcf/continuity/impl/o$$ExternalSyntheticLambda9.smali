.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda9;->f$0:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda9;->f$0:Ljava/net/Socket;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;

    move-result-object p0

    return-object p0
.end method
