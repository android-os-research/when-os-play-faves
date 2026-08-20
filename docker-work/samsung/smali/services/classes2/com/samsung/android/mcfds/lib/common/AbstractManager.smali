.class public abstract Lcom/samsung/android/mcfds/lib/common/AbstractManager;
.super Ljava/lang/Object;
.source "AbstractManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mPendingMessageQueue:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BYOrynWufn89Q_cezU2_OLK3aqY(ILandroid/os/Message;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->lambda$removePendingMessageByCommand$0(ILandroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;Ljava/lang/String;)V
    .registers 5
    .param p1    # Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$removePendingMessageByCommand$0(ILandroid/os/Message;)Z
    .registers 2

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {p0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {p0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public obtain(ILandroid/os/Bundle;)Landroid/os/Message;
    .registers 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public queueContains(Landroid/os/Message;)Z
    .registers 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removePendingMessageByCommand(I)V
    .registers 3

    .line 68
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/mcfds/lib/common/AbstractManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    return-void

    .line 64
    :cond_12
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendPendingMessages()V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 73
    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v2, v1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    goto :goto_6

    .line 75
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
