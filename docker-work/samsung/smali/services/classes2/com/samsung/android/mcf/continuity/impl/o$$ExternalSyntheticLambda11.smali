.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/o;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    check-cast p1, Ljava/net/Socket;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/net/Socket;)V

    return-void
.end method
