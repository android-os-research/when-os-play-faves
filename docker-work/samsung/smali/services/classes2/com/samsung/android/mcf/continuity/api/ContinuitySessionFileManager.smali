.class public interface abstract Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;,
        Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    }
.end annotation


# virtual methods
.method public abstract cancelFile(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)V
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerFileInfoListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Z
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract responseReceiveFile(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Landroid/net/Uri;Landroid/content/ContentResolver;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract responseReceiveFile(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/io/OutputStream;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract sendFile(Ljava/lang/String;[BLjava/io/InputStream;JLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract unregisterFileInfoListener()V
.end method
