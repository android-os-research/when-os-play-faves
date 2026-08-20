.class public Lcom/samsung/android/mcf/continuity/impl/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/o;->i()Lcom/samsung/android/mcf/continuity/impl/c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/o;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$d;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(BILjava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;
    .registers 4

    invoke-virtual {p3, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->a(B)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    :cond_9
    return-object p3
.end method

.method public static synthetic b(Ljava/lang/String;BI)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;BI)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;BI)V

    const-string v1, "ContinuitySession"

    const-string/jumbo v2, "onMessageSent"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$d;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Lcom/samsung/android/mcf/continuity/impl/o;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$d;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->c(Lcom/samsung/android/mcf/continuity/impl/o;)Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda1;-><init>(BI)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_24

    throw p0
.end method
