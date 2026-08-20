.class public interface abstract Lcom/android/server/sepunion/friends/action/ActionExecutable;
.super Ljava/lang/Object;
.source "ActionExecutable.java"


# virtual methods
.method public abstract execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
.end method

.method public executeOnSameThread(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public preExecute(Landroid/os/Bundle;II)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method
