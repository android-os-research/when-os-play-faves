.class public Lcom/android/server/display/RampAnimator$DualRampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualRampAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mFirst:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mInternalListener:Lcom/android/server/display/RampAnimator$Listener;

.field public mListener:Lcom/android/server/display/RampAnimator$Listener;

.field public final mSecond:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mInternalListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 284
    new-instance v1, Lcom/android/server/display/RampAnimator;

    invoke-direct {v1, p1, p2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 285
    invoke-virtual {v1, v0}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 286
    new-instance p2, Lcom/android/server/display/RampAnimator;

    invoke-direct {p2, p1, p3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object p2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 287
    invoke-virtual {p2, v0}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    return-void
.end method


# virtual methods
.method public animateTo(FFF)Z
    .registers 4

    .line 314
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->animateTo(FFFF)Z

    move-result p0

    return p0
.end method

.method public animateTo(FFFF)Z
    .registers 6

    .line 322
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/display/RampAnimator;->animateTo(FFF)Z

    move-result p1

    .line 323
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->animateTo(FFF)Z

    move-result p0

    if-nez p1, :cond_13

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public getCurrentValue()F
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->getCurrentValue()F

    move-result p0

    return p0
.end method

.method public getTarget()F
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->getTarget()F

    move-result p0

    return p0
.end method

.method public isAnimating()Z
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public setAnimationTimeLimits(JJ)V
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 297
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method
