.class public interface abstract Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
    }
.end annotation


# virtual methods
.method public abstract registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Z)Z
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract sendMessage(Ljava/lang/String;[BIILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract sendMessage(Ljava/lang/String;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
