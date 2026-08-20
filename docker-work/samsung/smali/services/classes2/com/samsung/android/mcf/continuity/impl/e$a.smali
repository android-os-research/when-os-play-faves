.class public Lcom/samsung/android/mcf/continuity/impl/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/t$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/e;->b()Lcom/samsung/android/mcf/continuity/impl/t$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/e;


# direct methods
.method public static synthetic $r8$lambda$y9FRmyfAR24zIepL56WHWHv4X6Q(Lcom/samsung/android/mcf/continuity/impl/e$a;I[B)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e$a;->b(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$a;->a:Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(I[B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$a;->a:Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/e;->b(Lcom/samsung/android/mcf/continuity/impl/e;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I[B)V
    .registers 5
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e$a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/e$a;I[B)V

    const-string p1, "ContinuityConnection"

    const-string/jumbo v1, "onMessageReceived"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$a;->a:Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e$g;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string p0, "null ConnectionCallback"

    invoke-static {p1, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$a;->a:Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/e;->b(Lcom/samsung/android/mcf/continuity/impl/e;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/mcf/continuity/impl/e$g;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public onDisconnected()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$a;->a:Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e$g;

    move-result-object v0

    if-nez v0, :cond_13

    const-string p0, "ContinuityConnection"

    const-string/jumbo v0, "onDisconnected"

    const-string v1, "null ConnectionCallback"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$a;->a:Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/e;->b(Lcom/samsung/android/mcf/continuity/impl/e;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/e$g;->a(Ljava/lang/String;)V

    return-void
.end method
