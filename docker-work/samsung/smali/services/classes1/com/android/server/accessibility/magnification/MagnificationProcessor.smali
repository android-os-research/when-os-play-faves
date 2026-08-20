.class public Lcom/android/server/accessibility/magnification/MagnificationProcessor;
.super Ljava/lang/Object;
.source "MagnificationProcessor.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MagnificationProcessor"


# instance fields
.field public final mController:Lcom/android/server/accessibility/magnification/MagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8c

    .line 384
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 386
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Magnifier on display#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 390
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    const/4 v4, 0x1

    .line 391
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V

    .line 392
    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "    Magnification region="

    .line 393
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 395
    :cond_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    IdOfLastServiceToMagnify="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getIdOfLastServiceToMagnify(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 398
    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->dumpTrackingTypingFocusEnabledState(Ljava/io/PrintWriter;II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 400
    :cond_8c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    SupportWindowMagnification="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 401
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->supportWindowMagnification()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 400
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    .line 401
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    WindowMagnificationConnectionState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 403
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getConnectionState()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    .line 403
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpTrackingTypingFocusEnabledState(Ljava/io/PrintWriter;II)V
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_25

    .line 417
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    TrackingTypingFocusEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 418
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isTrackingTypingFocusEnabled(I)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_25
    return-void
.end method

.method public getCenterX(IZ)F
    .registers 4

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->registerDisplayMagnificationIfNeeded(IZ)Z

    move-result p2

    .line 188
    :try_start_4
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    if-eqz p2, :cond_13

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    :cond_13
    return v0

    :catchall_14
    move-exception v0

    if-eqz p2, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 193
    :cond_1a
    throw v0
.end method

.method public getCenterY(IZ)F
    .registers 4

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->registerDisplayMagnificationIfNeeded(IZ)Z

    move-result p2

    .line 210
    :try_start_4
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    if-eqz p2, :cond_13

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    :cond_13
    return v0

    :catchall_14
    move-exception v0

    if-eqz p2, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 215
    :cond_1a
    throw v0
.end method

.method public getControllingMode(I)I
    .registers 5

    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 344
    :cond_14
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getLastMagnificationActivatedMode(I)I

    move-result p0

    if-ne p0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    .registers 6

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V

    goto :goto_17

    :cond_b
    const/4 p3, 0x2

    if-ne v0, p3, :cond_17

    .line 243
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getMagnificationSourceBounds(ILandroid/graphics/Region;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    .registers 5

    .line 257
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->registerDisplayMagnificationIfNeeded(IZ)Z

    move-result p3

    .line 260
    :try_start_4
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_13

    if-eqz p3, :cond_12

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    :cond_12
    return-void

    :catchall_13
    move-exception p2

    if-eqz p3, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 266
    :cond_19
    throw p2
.end method

.method public final getIdOfLastServiceToMagnify(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 409
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    .line 409
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result p0

    goto :goto_18

    .line 410
    :cond_e
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getIdOfLastServiceToMagnify(I)I

    move-result p0

    :goto_18
    return p0
.end method

.method public getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .registers 5

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 77
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    .line 79
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    .line 81
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    goto :goto_52

    :cond_2e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_52

    .line 86
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 87
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    .line 88
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterX(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterY(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 93
    :cond_52
    :goto_52
    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object p0

    return-object p0
.end method

.method public getScale(I)F
    .registers 2

    .line 171
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result p0

    return p0
.end method

.method public isMagnifying(I)Z
    .registers 4

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 322
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result p0

    return p0

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 324
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final isRegistered(I)Z
    .registers 2

    .line 361
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result p0

    return p0
.end method

.method public final register(I)V
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    return-void
.end method

.method public final registerDisplayMagnificationIfNeeded(IZ)Z
    .registers 4

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->register(I)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public resetAllIfNeeded(I)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(I)V

    .line 312
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->resetAllIfNeeded(I)V

    return-void
.end method

.method public resetCurrentMagnification(IZ)Z
    .registers 6

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 282
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    move-result p0

    return p0

    :cond_12
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    .line 284
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    if-eqz p2, :cond_21

    .line 285
    sget-object p2, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    .line 284
    :goto_22
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0

    :cond_27
    return v2
.end method

.method public resetFullscreenMagnification(IZ)Z
    .registers 3

    .line 300
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    move-result p0

    return p0
.end method

.method public setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z
    .registers 14

    .line 113
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->transitionModeIfNeeded(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 117
    :cond_8
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v0

    if-nez v0, :cond_12

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    :cond_12
    if-ne v0, v1, :cond_29

    .line 122
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v4

    .line 123
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v6

    move-object v2, p0

    move v3, p1

    move v7, p3

    move v8, p4

    .line 122
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->setScaleAndCenterForFullScreenMagnification(IFFFZI)Z

    move-result p0

    return p0

    :cond_29
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    .line 126
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    .line 127
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v2

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v3

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v4

    if-eqz p3, :cond_43

    .line 128
    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    :goto_44
    move-object v5, p0

    move v1, p1

    move v6, p4

    .line 126
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    return p0

    :cond_4c
    const/4 p0, 0x0

    return p0
.end method

.method public final setScaleAndCenterForFullScreenMagnification(IFFFZI)Z
    .registers 14

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->register(I)V

    .line 140
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    move-result p0

    return p0
.end method

.method public final transitionModeIfNeeded(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z
    .registers 8

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 151
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 155
    :cond_c
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->hasDisableMagnificationCallback(I)Z

    move-result v0

    if-nez v0, :cond_1b

    return v2

    .line 159
    :cond_1b
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationController;->transitionMagnificationConfigMode(ILandroid/accessibilityservice/MagnificationConfig;ZI)V

    const/4 p0, 0x1

    return p0
.end method

.method public final unregister(I)V
    .registers 2

    .line 375
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregister(I)V

    return-void
.end method
