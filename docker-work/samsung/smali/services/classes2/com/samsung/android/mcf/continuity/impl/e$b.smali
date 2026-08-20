.class public Lcom/samsung/android/mcf/continuity/impl/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/e;->b(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/e;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$b;->b:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$b;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .registers 4
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onFailed : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuityConnection"

    const-string v1, "handleAcceptedSocket"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

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

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$b;->b:Lcom/samsung/android/mcf/continuity/impl/e;

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/e$b;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    move v4, p6

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;I[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method
