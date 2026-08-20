.class public Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
.super Ljava/lang/Object;
.source "WindowToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedRotationTransformState"
.end annotation


# instance fields
.field public final mAssociatedTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public mIsTransforming:Z

.field public final mRotatedContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

.field public final mRotator:Lcom/android/server/wm/SeamlessRotator;


# direct methods
.method public constructor <init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;I)V
    .registers 7

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    .line 147
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 148
    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 149
    iput-object p3, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 151
    new-instance p2, Lcom/android/server/wm/SeamlessRotator;

    iget p3, p1, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p2, p3, p4, p1, v0}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    return-void
.end method


# virtual methods
.method public disassociate(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetTransform()V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 174
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/SeamlessRotator;->finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method public transform(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 162
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method
