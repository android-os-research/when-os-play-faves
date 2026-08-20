.class public Lcom/samsung/android/mcf/continuity/impl/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Ljava/util/function/BiConsumer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/function/BiConsumer;

.field public final synthetic b:I

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/impl/t;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/util/function/BiConsumer;I)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->c:Lcom/samsung/android/mcf/continuity/impl/t;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->a:Ljava/util/function/BiConsumer;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .registers 3
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->a:Ljava/util/function/BiConsumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/net/Socket;III[BI)V
    .registers 13
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p3}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->configureTcpSocket(Ljava/net/Socket;I)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->c:Lcom/samsung/android/mcf/continuity/impl/t;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->a:Ljava/util/function/BiConsumer;

    move-object v1, p1

    move v3, p2

    move-object v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/BiConsumer;I[BI)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->c:Lcom/samsung/android/mcf/continuity/impl/t;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$b;->b:I

    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Lcom/samsung/android/mcf/continuity/impl/t;I)V

    return-void
.end method
