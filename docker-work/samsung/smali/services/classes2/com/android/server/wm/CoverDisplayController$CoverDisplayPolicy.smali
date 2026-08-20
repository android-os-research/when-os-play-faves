.class public Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;
.super Ljava/lang/Object;
.source "CoverDisplayController.java"

# interfaces
.implements Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CoverDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverDisplayPolicy"
.end annotation


# instance fields
.field public final mIsClosed:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->mIsClosed:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public canHaveCoverHomeDisplay(I)Z
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->getExtraDisplayId()I

    move-result p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getExtraDisplayId()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public getOtherDisplayBelowTargetDisplay(I)I
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->mIsClosed:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->getExtraDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_20

    goto :goto_17

    :cond_15
    if-nez p1, :cond_20

    :goto_17
    if-nez p1, :cond_1e

    .line 106
    invoke-virtual {p0}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->getExtraDisplayId()I

    move-result p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method public shouldNotHandleForcedResizableTaskIfNeeded(II)Z
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->getExtraDisplayId()I

    move-result p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public shouldNotPositionToTopDisplay(I)Z
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->mIsClosed:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    if-nez p1, :cond_1a

    goto :goto_1b

    .line 99
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->getExtraDisplayId()I

    move-result p0

    if-ne p1, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method
