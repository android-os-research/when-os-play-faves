.class public Lcom/samsung/android/mcf/continuity/impl/p$a;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/p;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/p;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/p$a;->b:Lcom/samsung/android/mcf/continuity/impl/p;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/p$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;->onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method


# virtual methods
.method public onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/p$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/p$a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
