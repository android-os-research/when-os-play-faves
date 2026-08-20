.class public Lcom/samsung/android/mcf/continuity/impl/t$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;Ljava/util/function/Consumer;ILjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/t;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/util/function/Consumer;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$d;->b:Lcom/samsung/android/mcf/continuity/impl/t;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$d;->a:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .registers 2
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$d;->a:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$d;->b:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-virtual {p2, p1, p5, p6}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;[BI)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$d;->a:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
