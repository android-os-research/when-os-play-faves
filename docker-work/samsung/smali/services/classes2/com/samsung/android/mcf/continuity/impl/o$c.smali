.class public Lcom/samsung/android/mcf/continuity/impl/o$c;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/o;->f()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
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

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$c;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$c;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "onFileInfoReceived"

    const-string p2, "null fileInfoListener"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;->onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method
