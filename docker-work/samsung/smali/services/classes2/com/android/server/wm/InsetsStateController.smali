.class public Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field public final mControlTargetTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mDispatchInsetsChanged:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public final mLastState:Landroid/view/InsetsState;

.field public final mPendingControlChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/WindowContainerInsetsSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final mState:Landroid/view/InsetsState;

.field public final mTypeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final mTypeFakeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Lm36Ods71Ln-ubo24aA0Q8kuJHU(Lcom/android/server/wm/InsetsStateController;Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsStateController;->lambda$getSourceProvider$2(Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lu3zi1kahJ0A9k96fqCGj2GWTiE(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/InsetsStateController;->lambda$addToControlMaps$4(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OATA6iKXtwvmUkVk7TE57vsp96A(Lcom/android/server/wm/InsetsStateController;Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsStateController;->lambda$getSourceProvider$1(Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lWrT1E6A4H9l9iIY4w_0f4yyRic(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->lambda$onDisplayFramesUpdated$3(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ni7v3ZO6TRbLZqXOFahDjPeXTS0(Lcom/android/server/wm/InsetsStateController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->lambda$notifyPendingInsetsControlChanged$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$ysCnX7fS-2tUJY5jK31WLy-O5oc(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/InsetsStateController;->lambda$new$0(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 62
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 76
    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 88
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public static synthetic lambda$addToControlMaps$4(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .registers 1

    .line 376
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$getSourceProvider$1(Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 4

    .line 174
    new-instance v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method private synthetic lambda$getSourceProvider$2(Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 4

    .line 178
    new-instance v0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyToDispatchInsetsState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_d

    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    :cond_d
    return-void
.end method

.method private synthetic lambda$notifyPendingInsetsControlChanged$5()V
    .registers 5

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 396
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    .line 397
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->onSurfaceTransactionApplied()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 399
    :cond_18
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_25
    if-ltz v1, :cond_40

    .line 401
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 402
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged()V

    .line 403
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 405
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .line 408
    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 413
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4b
    if-ltz v1, :cond_59

    .line 414
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4b

    .line 416
    :cond_59
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private synthetic lambda$onDisplayFramesUpdated$3(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 237
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 238
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .registers 6

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1c

    .line 379
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_21

    .line 381
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_21
    return-void
.end method

.method public final collectPolicyControlledTypes(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 443
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_26
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Control map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_46
    if-ltz v1, :cond_84

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 432
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 434
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InsetsSourceProviders:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a0
    if-ltz v1, :cond_bf

    .line 436
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a0

    :cond_bf
    return-void
.end method

.method public getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .registers 15

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 118
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 119
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 120
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v1, :cond_23

    if-eqz v3, :cond_46

    :cond_23
    if-nez v0, :cond_2b

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_31

    .line 130
    :cond_2b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    :goto_31
    if-eqz v1, :cond_3a

    .line 133
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/InsetsStateController;->collectPolicyControlledTypes(ILjava/util/ArrayList;)V

    :cond_3a
    if-eqz v3, :cond_46

    .line 136
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/InsetsStateController;->collectPolicyControlledTypes(ILjava/util/ArrayList;)V

    goto :goto_46

    :cond_44
    move v1, v2

    move v3, v1

    .line 140
    :cond_46
    :goto_46
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v4

    if-nez v4, :cond_62

    .line 141
    :cond_52
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v0}, Lcom/android/server/wm/TaskbarController;->adjustInsetsControlForTaskbar(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_62
    if-nez v0, :cond_66

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 149
    new-array v5, v4, [Landroid/view/InsetsSourceControl;

    :goto_6c
    if-ge v2, v4, :cond_af

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 152
    invoke-virtual {p0, v6, v1, v3}, Lcom/android/server/wm/InsetsStateController;->isPolicyControlledType(IZZ)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 154
    new-instance v6, Landroid/view/InsetsSourceControl;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    sget-object v11, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v12, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/graphics/Insets;Z)V

    aput-object v6, v5, v2

    goto :goto_ac

    .line 159
    :cond_9a
    iget-object v6, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v6

    aput-object v6, v5, v2

    :goto_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_af
    return-object v5
.end method

.method public getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .registers 2

    const/16 v0, 0x13

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object p0
.end method

.method public getRawInsetsState()Landroid/view/InsetsState;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object p0
.end method

.method public getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 4

    const/16 v0, 0x13

    if-ne p1, v0, :cond_16

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    return-object p0

    .line 177
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    return-object p0
.end method

.method public getSourceProviders()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/WindowContainerInsetsSourceProvider;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z
    .registers 3

    .line 261
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isPolicyControlledType(IZZ)Z
    .registers 5

    const/4 p0, 0x1

    if-eqz p2, :cond_e

    .line 454
    invoke-static {p1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    if-ne p2, v0, :cond_e

    return p0

    :cond_e
    if-eqz p3, :cond_1b

    .line 458
    invoke-static {p1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    if-ne p1, p2, :cond_1b

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public notifyControlRevoked(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 4

    .line 300
    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    return-void
.end method

.method public notifyInsetsChanged()V
    .registers 2

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->notifyInsetsChanged(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final notifyPendingInsetsControlChanged()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 394
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 8

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    const/4 v1, 0x1

    .line 288
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    const/16 v2, 0x14

    .line 289
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    const/16 p1, 0x15

    .line 290
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 291
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 292
    invoke-virtual {p0, v1, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 293
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 294
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public final onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .registers 6

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    if-ne p2, v0, :cond_b

    return-void

    .line 310
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    if-nez v1, :cond_1a

    return-void

    .line 314
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v2

    if-nez v2, :cond_21

    return-void

    :cond_21
    const/4 v2, 0x0

    .line 317
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 318
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    if-eqz v0, :cond_33

    .line 320
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 321
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_33
    if-eqz p2, :cond_3d

    .line 324
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 325
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3d
    return-void
.end method

.method public onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .registers 6

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    if-ne p2, v0, :cond_b

    return-void

    .line 341
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    if-nez v1, :cond_1a

    return-void

    .line 345
    :cond_1a
    invoke-virtual {v1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForFakeTarget(Lcom/android/server/wm/InsetsControlTarget;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    .line 347
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 348
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_28
    if-eqz p2, :cond_32

    .line 351
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 352
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void
.end method

.method public onDisplayFramesUpdated(Z)V
    .registers 6

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    if-eqz p1, :cond_27

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_17
    if-ltz p1, :cond_27

    .line 242
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_17

    :cond_27
    return-void
.end method

.method public onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 7

    if-eqz p1, :cond_3

    goto :goto_5

    .line 268
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    :goto_5
    const/16 v0, 0x13

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 270
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    goto :goto_17

    :cond_15
    const-string p1, "null"

    :goto_17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x62dc4f45

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_1b

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1b
    if-eqz v1, :cond_33

    .line 253
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 254
    iget-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 255
    iget-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 256
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    :cond_33
    return-void
.end method

.method public onPostLayout()V
    .registers 6

    const-wide/16 v0, 0x20

    const-string v2, "ISC.onPostLayout"

    .line 199
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_f
    if-ltz v2, :cond_1f

    .line 201
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 203
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v4, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 207
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    return-object p0
.end method

.method public final removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .registers 6

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_b

    return-void

    .line 362
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz p3, :cond_25

    .line 367
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2a

    .line 369
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_2a
    return-void
.end method

.method public updateAboveInsetsState(Z)V
    .registers 6

    .line 216
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 218
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    or-int/2addr v2, v3

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 219
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 221
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 225
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    if-eqz p1, :cond_3f

    .line 228
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2f
    if-ltz p1, :cond_3f

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2f

    :cond_3f
    return-void
.end method
