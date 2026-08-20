.class public Lcom/samsung/android/mcf/continuity/impl/s$a;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/s;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/s;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/s;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/s$a;->b:Lcom/samsung/android/mcf/continuity/impl/s;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/s$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;->onReceived(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/lang/String;[B)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/s$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/s$a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
