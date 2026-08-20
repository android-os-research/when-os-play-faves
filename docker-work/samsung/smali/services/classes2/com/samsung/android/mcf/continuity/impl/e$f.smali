.class public Lcom/samsung/android/mcf/continuity/impl/e$f;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
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

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$f;->b:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$f;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;-><init>()V

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

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$f;->b:Lcom/samsung/android/mcf/continuity/impl/e;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$f;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-static {v0, p1, p2, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method
