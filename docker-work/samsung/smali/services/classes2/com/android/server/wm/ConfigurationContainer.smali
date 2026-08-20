.class public abstract Lcom/android/server/wm/ConfigurationContainer;
.super Ljava/lang/Object;
.source "ConfigurationContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOUNDS_CHANGE_NONE:I = 0x0

.field public static final BOUNDS_CHANGE_POSITION:I = 0x1

.field public static final BOUNDS_CHANGE_SIZE:I = 0x2


# instance fields
.field public mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ConfigurationContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field public mFullConfiguration:Landroid/content/res/Configuration;

.field public mHasOverrideConfiguration:Z

.field public mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field public mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

.field public final mRequestsTmpConfig:Landroid/content/res/Configuration;

.field public mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

.field public final mResolvedTmpConfig:Landroid/content/res/Configuration;

.field public mReturnBounds:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 91
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 98
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 104
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 3

    if-eq p0, p1, :cond_1f

    if-eqz p0, :cond_12

    .line 295
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_1f

    :cond_12
    if-eqz p1, :cond_1d

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public static isCompatibleActivityType(II)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p0, v1, :cond_9

    return v2

    :cond_9
    if-eqz p0, :cond_f

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    move v0, v2

    :cond_f
    :goto_f
    return v0
.end method


# virtual methods
.method public applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;)Z
    .registers 6

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    .line 604
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    .line 605
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 604
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ConfigurationContainer;->setOverrideNightMode(Landroid/content/res/Configuration;I)Z

    move-result p1

    if-eqz p1, :cond_1b

    move p1, v0

    goto :goto_1c

    :cond_1b
    move p1, v1

    :goto_1c
    if-eqz p2, :cond_28

    .line 606
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ConfigurationContainer;->setOverrideLocales(Landroid/content/res/Configuration;Landroid/os/LocaleList;)Z

    move-result p2

    if-eqz p2, :cond_28

    move p2, v0

    goto :goto_29

    :cond_28
    move p2, v1

    :goto_29
    if-nez p1, :cond_2d

    if-eqz p2, :cond_32

    .line 609
    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_32
    if-nez p1, :cond_38

    if-eqz p2, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    :cond_38
    :goto_38
    return v0
.end method

.method public containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 724
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public diffRequestedOverrideBounds(Landroid/graphics/Rect;)I
    .registers 5

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 437
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p1, :cond_1a

    .line 439
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    if-eqz p1, :cond_31

    .line 444
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_31

    .line 445
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p0, p1, :cond_33

    :cond_31
    or-int/lit8 v1, v1, 0x2

    :cond_33
    return v1
.end method

.method public diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I
    .registers 5

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideMaxBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 415
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p1, :cond_1a

    .line 417
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    if-eqz p1, :cond_31

    .line 422
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_31

    .line 423
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p0, p1, :cond_33

    :cond_31
    or-int/lit8 v1, v1, 0x2

    :cond_33
    return v1
.end method

.method public dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .line 173
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " override-mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested-bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7a
    if-ltz v1, :cond_a0

    .line 801
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7a

    :cond_a0
    return-void
.end method

.method public dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 7

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Full="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Merg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    iget-boolean p3, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz p3, :cond_bf

    .line 848
    iget-object p3, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p3

    if-eqz p3, :cond_8d

    .line 849
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Over="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bf

    .line 851
    :cond_8d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Over(Request)="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Over(Resolve)="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    :cond_bf
    :goto_bf
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_c5
    if-ltz p3, :cond_e2

    .line 856
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/ConfigurationContainer;->dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_c5

    :cond_e2
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11

    .line 754
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_c

    .line 756
    iget-boolean v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz v2, :cond_1c

    .line 757
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000001L

    const/4 v5, 0x2

    if-ne p4, v5, :cond_18

    move v5, v0

    goto :goto_19

    :cond_18
    move v5, v1

    :goto_19
    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    :cond_1c
    if-nez p4, :cond_32

    .line 764
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 765
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    :cond_32
    if-ne p4, v0, :cond_37

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->dumpDebugWindowingMode(Landroid/util/proto/ProtoOutputStream;)V

    .line 774
    :cond_37
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpDebugWindowingMode(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    const-wide v0, 0x10b00000002L

    .line 778
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000013L

    .line 779
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 781
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const-wide v4, 0x10500000002L

    .line 782
    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 784
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 785
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z
    .registers 2

    .line 282
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public equivalentRequestedOverrideMaxBounds(Landroid/graphics/Rect;)Z
    .registers 2

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getActivityType()I
    .registers 1

    .line 557
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 309
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract getChildCount()I
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getMaxBounds()Landroid/graphics/Rect;
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 315
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method getName()Ljava/lang/String;
    .registers 1

    .line 808
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getParent()Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public getPosition(Landroid/graphics/Point;)V
    .registers 3

    .line 322
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 323
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public getRequestedOverrideBounds()Landroid/graphics/Rect;
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 339
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRequestedOverrideBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 362
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRequestedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getRequestedOverrideMaxBounds()Landroid/graphics/Rect;
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRequestedOverrideWindowingMode()I
    .registers 1

    .line 463
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public getResolvedOverrideBounds()Landroid/graphics/Rect;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 328
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getResolvedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getStagePosition()I
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p0

    return p0
.end method

.method public getStageType()I
    .registers 1

    .line 499
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result p0

    return p0
.end method

.method public getWindowConfiguration()Landroid/app/WindowConfiguration;
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    return-object p0
.end method

.method public getWindowingMode()I
    .registers 1

    .line 458
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public hasChild()Z
    .registers 1

    .line 816
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasOverrideBounds()Z
    .registers 1

    .line 354
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasRequestedOverrideConfiguration()Z
    .registers 1

    .line 188
    iget-boolean p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    return p0
.end method

.method public hasStagePosition(I)Z
    .registers 2

    .line 507
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public inFreeformWindowingMode()Z
    .registers 2

    .line 545
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public inFullscreenWindowingMode()Z
    .registers 2

    .line 550
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public inMultiWindowMode()Z
    .registers 1

    .line 527
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 528
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    .line 529
    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p0

    return p0
.end method

.method public inPinnedWindowingMode()Z
    .registers 2

    .line 541
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public inSplitScreenWindowingMode()Z
    .registers 1

    .line 517
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result p0

    return p0
.end method

.method public isActivityTypeAssistant()Z
    .registers 2

    .line 595
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isActivityTypeDream()Z
    .registers 2

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isActivityTypeHome()Z
    .registers 2

    .line 582
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final isActivityTypeHomeOrRecents()Z
    .registers 2

    .line 590
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isActivityTypeRecents()Z
    .registers 2

    .line 586
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isActivityTypeStandard()Z
    .registers 2

    .line 649
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isActivityTypeStandardOrUndefined()Z
    .registers 2

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    if-nez p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public isAlwaysOnTop()Z
    .registers 1

    .line 812
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p0

    return p0
.end method

.method public isAlwaysOnTopFreeform()Z
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 834
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isCompatible(II)Z
    .registers 7

    .line 683
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 684
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p2, :cond_e

    move v0, v3

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-ne v1, p1, :cond_12

    move v2, v3

    :cond_12
    if-eqz v0, :cond_17

    if-eqz v2, :cond_17

    return v3

    :cond_17
    if-eqz p2, :cond_1b

    if-ne p2, v3, :cond_21

    .line 693
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p0

    if-nez p0, :cond_22

    :cond_21
    return v0

    :cond_22
    return v2
.end method

.method isDexMode()Z
    .registers 2

    .line 827
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public matchParentBounds()Z
    .registers 1

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 144
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->unsetAlwaysOnTop()V

    .line 145
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 147
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_44

    .line 154
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_32
    if-ltz p1, :cond_44

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_32

    .line 159
    :cond_44
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4c
    if-ltz p1, :cond_5e

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4c

    .line 163
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_64
    if-ltz p1, :cond_72

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_64

    :cond_72
    return-void
.end method

.method public onMergedOverrideConfigurationChanged()V
    .registers 3

    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->unsetAlwaysOnTop()V

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_25

    .line 253
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 255
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ltz v0, :cond_37

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_37
    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 735
    iget-object p1, p1, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    :cond_a
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 212
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    goto :goto_10

    :cond_e
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public providesMaxBounds()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 3

    const/4 v0, 0x1

    .line 703
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V

    return-void
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 711
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1a

    .line 713
    iget-object p2, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, p2}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 714
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, p0}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1a
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    .line 183
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setActivityType(I)V
    .registers 5

    .line 562
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    if-nez v0, :cond_1f

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 578
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 569
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActivityType\'s exception occurs, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    .line 570
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 569
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " activityType="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnTop(Z)V
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    .line 481
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setBounds(IIII)I
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->providesMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-nez v0, :cond_18

    if-nez v1, :cond_18

    return v0

    .line 385
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 386
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 387
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0
.end method

.method public setDexTaskDocking(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$DexTaskDocking;
        .end annotation
    .end param

    .line 905
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 906
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    .line 907
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setDisplayWindowingMode(I)V
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 488
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setEmbedActivityMode(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$EmbedActivityMode;
        .end annotation
    .end param

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 883
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setFreeformTaskPinning(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$FreeformTaskPinning;
        .end annotation
    .end param

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setFreeformTaskPinningState(I)V

    .line 870
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setFreeformTaskStashing(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$FreeformStashType;
        .end annotation
    .end param

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setFreeformStashState(I)V

    .line 895
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final setOverrideLocales(Landroid/content/res/Configuration;Landroid/os/LocaleList;)Z
    .registers 3

    .line 636
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 639
    :cond_e
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    const/4 p0, 0x1

    .line 640
    iput-boolean p0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    return p0
.end method

.method public final setOverrideNightMode(Landroid/content/res/Configuration;I)Z
    .registers 4

    .line 619
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, p0, 0x30

    and-int/lit8 p2, p2, 0x30

    if-ne v0, p2, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    and-int/lit8 p0, p0, -0x31

    or-int/2addr p0, p2

    .line 625
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p0, 0x1

    return p0
.end method

.method public setStagePosition(I)V
    .registers 4

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    .line 513
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setStageType(I)V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setStageType(I)V

    .line 495
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setWindowingMode(I)V
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 470
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 1

    .line 537
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode()Z

    move-result p0

    return p0
.end method

.method public unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 2

    .line 719
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 219
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 221
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 222
    iget-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->providesMaxBounds()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_2e

    .line 224
    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_2e
    return-void
.end method
