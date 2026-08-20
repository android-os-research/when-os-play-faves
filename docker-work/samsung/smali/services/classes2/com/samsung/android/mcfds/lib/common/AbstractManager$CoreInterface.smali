.class public interface abstract Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
.super Ljava/lang/Object;
.source "AbstractManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/common/AbstractManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoreInterface"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract obtain(ILandroid/os/Bundle;)Landroid/os/Message;
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract sendMessage(Landroid/os/Message;)I
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract sendMessage(Landroid/os/Message;Landroid/os/Bundle;)I
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
