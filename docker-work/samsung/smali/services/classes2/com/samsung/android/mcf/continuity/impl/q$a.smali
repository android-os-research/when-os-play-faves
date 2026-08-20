.class public Lcom/samsung/android/mcf/continuity/impl/q$a;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/q;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/q;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q$a;->b:Lcom/samsung/android/mcf/continuity/impl/q;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/q$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onSessionStatusChanged(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onWifiInfoUpdated(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onSessionStatusChanged(I)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$a$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q$a$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;I)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWifiInfoUpdated(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityWifiInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q$a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;Ljava/util/List;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
