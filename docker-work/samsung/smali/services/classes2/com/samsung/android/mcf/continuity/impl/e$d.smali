.class public Lcom/samsung/android/mcf/continuity/impl/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/net/Socket;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/function/BiConsumer;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/e;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/util/function/BiConsumer;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$d;->b:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$d;->a:Ljava/util/function/BiConsumer;

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

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$d;->a:Ljava/util/function/BiConsumer;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/net/Socket;III[BI)V
    .registers 7
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p3}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->configureTcpSocket(Ljava/net/Socket;I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$d;->a:Ljava/util/function/BiConsumer;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p5, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
