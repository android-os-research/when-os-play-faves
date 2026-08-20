.class Lcom/samsung/android/wfd/WFDMode$WFDPortrait;
.super Ljava/lang/Object;
.source "WFDMode.java"

# interfaces
.implements Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WFDPortrait"
.end annotation


# static fields
.field private static final blacklist innerTAG:Ljava/lang/String; = "WFDPortrait"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/WFDMode;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/wfd/WFDMode;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/wfd/WFDMode;

    .line 463
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 465
    const-string v0, "WFDMode"

    const-string v1, "WFDPortrait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_10
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode$WFDPortrait-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;-><init>(Lcom/samsung/android/wfd/WFDMode;)V

    return-void
.end method


# virtual methods
.method public blacklist getTAG()Ljava/lang/String;
    .registers 2

    .line 469
    const-string v0, "WFDPortrait"

    return-object v0
.end method

.method public blacklist updateTouchInput(I)V
    .registers 10
    .param p1, "pointerIndex"    # I

    .line 473
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 475
    .local v0, "configuration":Landroid/content/res/Configuration;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 476
    .local v1, "inputX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 478
    .local v2, "inputY":F
    sget-boolean v3, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v3, :cond_19

    .line 479
    const-string v3, "WFDMode"

    const-string v4, "WFDMode is PORTRAIT_DISPLAY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_19
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_5e

    .line 483
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayHeight:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    div-float/2addr v3, v4

    .line 484
    .local v3, "realHeight":F
    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v4, v6

    .line 485
    .local v4, "sinkInputY":F
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v6, v6, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    sub-float/2addr v6, v3

    div-float/2addr v6, v5

    .line 487
    .local v6, "letterBox":F
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    iget-object v7, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v7, v7, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v7, v7, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float v1, v5, v7

    .line 488
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    sub-float v7, v4, v6

    div-float/2addr v7, v3

    mul-float v2, v5, v7

    .end local v3    # "realHeight":F
    .end local v4    # "sinkInputY":F
    .end local v6    # "letterBox":F
    goto/16 :goto_116

    .line 489
    :cond_5e
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_116

    .line 490
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayRatio:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayRatio:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ac

    .line 491
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayHeight:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    div-float/2addr v3, v4

    .line 492
    .restart local v3    # "realHeight":F
    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v4, v6

    .line 493
    .restart local v4    # "sinkInputY":F
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v6, v6, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    sub-float/2addr v6, v3

    div-float/2addr v6, v5

    .line 495
    .restart local v6    # "letterBox":F
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    iget-object v7, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v7, v7, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v7, v7, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float v1, v5, v7

    .line 496
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    sub-float v7, v4, v6

    div-float/2addr v7, v3

    mul-float v2, v5, v7

    .line 497
    .end local v3    # "realHeight":F
    .end local v4    # "sinkInputY":F
    .end local v6    # "letterBox":F
    goto :goto_117

    :cond_ac
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayRatio:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayRatio:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f5

    .line 498
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    div-float/2addr v3, v4

    .line 499
    .local v3, "realWidth":F
    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayHeight:F

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v4, v6

    .line 500
    .local v4, "sinkInputX":F
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v6, v6, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayHeight:F

    sub-float/2addr v6, v3

    div-float/2addr v6, v5

    .line 502
    .local v6, "pillarBox":F
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    sub-float v7, v4, v6

    div-float/2addr v7, v3

    mul-float v1, v5, v7

    .line 503
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    iget-object v7, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v7, v7, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v7, v7, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float v2, v5, v7

    .line 504
    .end local v3    # "realWidth":F
    .end local v4    # "sinkInputX":F
    .end local v6    # "pillarBox":F
    goto :goto_117

    .line 505
    :cond_f5
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float v1, v3, v4

    .line 506
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float v2, v3, v4

    goto :goto_117

    .line 489
    :cond_116
    :goto_116
    nop

    .line 509
    :goto_117
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iput v1, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 510
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iput v2, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 511
    return-void
.end method
