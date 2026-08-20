.class public Lcom/samsung/android/mcf/continuity/impl/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/g;->a()Lcom/samsung/android/mcf/continuity/impl/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/g;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/g;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g$b;->a:Lcom/samsung/android/mcf/continuity/impl/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;->onResult(II)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g$b;->a:Lcom/samsung/android/mcf/continuity/impl/g;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/g;->a(Lcom/samsung/android/mcf/continuity/impl/g;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;

    if-nez p0, :cond_19

    const-string p0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo p1, "onResult"

    const-string p2, "null apStatusCallback"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/g$b$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/g$b$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;II)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
