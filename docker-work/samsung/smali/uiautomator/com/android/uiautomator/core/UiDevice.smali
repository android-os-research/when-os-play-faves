.class public Lcom/android/uiautomator/core/UiDevice;
.super Ljava/lang/Object;
.source "UiDevice.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KEY_PRESS_EVENT_TIMEOUT:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sDevice:Lcom/android/uiautomator/core/UiDevice;


# instance fields
.field private mInWatcherContext:Z

.field private mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

.field private final mWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/uiautomator/core/UiWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchersTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/android/uiautomator/core/UiDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 71
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/UiDevice;
    .registers 1

    .line 117
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    if-nez v0, :cond_b

    .line 118
    new-instance v0, Lcom/android/uiautomator/core/UiDevice;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiDevice;-><init>()V

    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 120
    :cond_b
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    return-object v0
.end method

.method private setWatcherTriggered(Ljava/lang/String;)V
    .registers 4
    .param p1, "watcherName"    # Ljava/lang/String;

    .line 617
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiDevice;->hasWatcherTriggered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 619
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_14
    return-void
.end method


# virtual methods
.method public clearLastTraversedText()V
    .registers 2

    .line 185
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->clearLastTraversedText()V

    .line 187
    return-void
.end method

.method public click(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 410
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayWidth()I

    move-result v0

    if-ge p1, v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayHeight()I

    move-result v0

    if-lt p2, v0, :cond_21

    goto :goto_2e

    .line 414
    :cond_21
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    move-result v0

    return v0

    .line 412
    :cond_2e
    :goto_2e
    return v2
.end method

.method public drag(IIIII)Z
    .registers 14
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    .line 452
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v1

    .line 454
    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    .line 453
    return v0
.end method

.method public dumpWindowHierarchy(Ljava/lang/String;)V
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;

    .line 764
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 765
    nop

    .line 766
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getAccessibilityRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 767
    .local v0, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_43

    .line 768
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 769
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 770
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 771
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    .line 772
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "local/tmp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 771
    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V

    .line 775
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_43
    return-void
.end method

.method public freezeRotation()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 655
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->freezeRotation()V

    .line 656
    return-void
.end method

.method getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    if-eqz v0, :cond_5

    .line 92
    return-object v0

    .line 90
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UiDevice not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .registers 2

    .line 509
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .registers 4

    .line 394
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 396
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 397
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 398
    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method public getDisplayRotation()I
    .registers 2

    .line 642
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 644
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRotation()I

    move-result v0

    return v0
.end method

.method public getDisplaySizeDp()Landroid/graphics/Point;
    .registers 7

    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 135
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 136
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    .line 139
    .local v3, "dpx":F
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    .line 140
    .local v4, "dpy":F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 141
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 142
    return-object v1
.end method

.method public getDisplayWidth()I
    .registers 4

    .line 380
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 382
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 383
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 384
    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .registers 2

    .line 175
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getLastTraversedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .line 155
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 156
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnyWatcherTriggered()Z
    .registers 3

    .line 608
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 609
    iget-object v1, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public hasWatcherTriggered(Ljava/lang/String;)Z
    .registers 4
    .param p1, "watcherName"    # Ljava/lang/String;

    .line 596
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initialize(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .registers 2
    .param p1, "uiAutomatorBridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 77
    iput-object p1, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 78
    return-void
.end method

.method isInWatcherContext()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    return v0
.end method

.method public isNaturalOrientation()Z
    .registers 4

    .line 630
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 632
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRotation()I

    move-result v1

    .line 633
    .local v1, "ret":I
    if-eqz v1, :cond_16

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public isScreenOn()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 741
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public openNotification()Z
    .registers 2

    .line 356
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 358
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->openNotification()Z

    move-result v0

    return v0
.end method

.method public openQuickSettings()Z
    .registers 2

    .line 368
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 370
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->openQuickSettings()Z

    move-result v0

    return v0
.end method

.method public pressBack()Z
    .registers 8

    .line 208
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 210
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x800

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressDPadCenter()Z
    .registers 2

    .line 244
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 245
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadDown()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 255
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadLeft()Z
    .registers 2

    .line 274
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 275
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadRight()Z
    .registers 2

    .line 284
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 285
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadUp()Z
    .registers 2

    .line 264
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 265
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDelete()Z
    .registers 2

    .line 294
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 295
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressEnter()Z
    .registers 2

    .line 304
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 305
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressHome()Z
    .registers 8

    .line 221
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 223
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x800

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .line 316
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 318
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(II)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 331
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 333
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressMenu()Z
    .registers 8

    .line 195
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 197
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v1

    const/16 v2, 0x52

    const/4 v3, 0x0

    const/16 v4, 0x800

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressRecentApps()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 346
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->toggleRecentApps()Z

    move-result v0

    return v0
.end method

.method public pressSearch()Z
    .registers 2

    .line 234
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 235
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public registerWatcher(Ljava/lang/String;Lcom/android/uiautomator/core/UiWatcher;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "watcher"    # Lcom/android/uiautomator/core/UiWatcher;

    .line 522
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 523
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-nez v0, :cond_16

    .line 526
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void

    .line 524
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register new watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeWatcher(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 537
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 538
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-nez v0, :cond_13

    .line 541
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void

    .line 539
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove a watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetWatcherTriggers()V
    .registers 2

    .line 580
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 582
    return-void
.end method

.method public runWatchers()V
    .registers 9

    .line 550
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 551
    iget-boolean v1, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-eqz v1, :cond_b

    .line 552
    return-void

    .line 555
    :cond_b
    iget-object v1, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 556
    .local v2, "watcherName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/uiautomator/core/UiWatcher;

    .line 557
    .local v3, "watcher":Lcom/android/uiautomator/core/UiWatcher;
    if-eqz v3, :cond_5b

    .line 559
    const/4 v4, 0x1

    :try_start_2c
    iput-boolean v4, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 560
    invoke-interface {v3}, Lcom/android/uiautomator/core/UiWatcher;->checkForCondition()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 561
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiDevice;->setWatcherTriggered(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_3d
    .catchall {:try_start_2c .. :try_end_37} :catchall_3b

    .line 566
    :cond_37
    nop

    :goto_38
    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 567
    goto :goto_5b

    .line 566
    :catchall_3b
    move-exception v1

    goto :goto_58

    .line 563
    :catch_3d
    move-exception v4

    .line 564
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3e
    sget-object v5, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exceuting watcher: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_3b

    .line 566
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_38

    :goto_58
    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 567
    throw v1

    .line 569
    .end local v2    # "watcherName":Ljava/lang/String;
    .end local v3    # "watcher":Lcom/android/uiautomator/core/UiWatcher;
    :cond_5b
    :goto_5b
    goto :goto_15

    .line 570
    :cond_5c
    return-void
.end method

.method public setCompressedLayoutHeirarchy(Z)V
    .registers 3
    .param p1, "compressed"    # Z

    .line 107
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setCompressedLayoutHierarchy(Z)V

    .line 108
    return-void
.end method

.method public setOrientationLeft()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 680
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationLeft()V

    .line 681
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 682
    return-void
.end method

.method public setOrientationNatural()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 710
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationNatural()V

    .line 711
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 712
    return-void
.end method

.method public setOrientationRight()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 695
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationRight()V

    .line 696
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 697
    return-void
.end method

.method public sleep()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->sleepDevice()Z

    .line 754
    return-void
.end method

.method public swipe(IIIII)Z
    .registers 13
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    .line 431
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v1

    .line 433
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    .line 432
    return v0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .registers 6
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    .line 467
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->swipe([Landroid/graphics/Point;I)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;)Z
    .registers 4
    .param p1, "storePath"    # Ljava/io/File;

    .line 835
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 836
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x5a

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/uiautomator/core/UiDevice;->takeScreenshot(Ljava/io/File;FI)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;FI)Z
    .registers 7
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "scale"    # F
    .param p3, "quality"    # I

    .line 851
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 852
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->takeScreenshot(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public unfreezeRotation()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->unfreezeRotation()V

    .line 667
    return-void
.end method

.method public waitForIdle()V
    .registers 3

    .line 477
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 478
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForIdleTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle(J)V

    .line 479
    return-void
.end method

.method public waitForIdle(J)V
    .registers 6
    .param p1, "timeout"    # J

    .line 487
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    .line 489
    return-void
.end method

.method public waitForWindowUpdate(Ljava/lang/String;J)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 792
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 793
    if-eqz p1, :cond_1d

    .line 794
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 795
    return v1

    .line 798
    :cond_1d
    new-instance v0, Lcom/android/uiautomator/core/UiDevice$1;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/UiDevice$1;-><init>(Lcom/android/uiautomator/core/UiDevice;)V

    .line 803
    .local v0, "emptyRunnable":Ljava/lang/Runnable;
    new-instance v2, Lcom/android/uiautomator/core/UiDevice$2;

    invoke-direct {v2, p0, p1}, Lcom/android/uiautomator/core/UiDevice$2;-><init>(Lcom/android/uiautomator/core/UiDevice;Ljava/lang/String;)V

    .line 813
    .local v2, "checkWindowUpdate":Landroid/app/UiAutomation$AccessibilityEventFilter;
    :try_start_27
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v4

    invoke-virtual {v4, v0, v2, p2, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_27 .. :try_end_2e} :catch_39
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_30

    .line 820
    nop

    .line 821
    return v3

    .line 817
    :catch_30
    move-exception v3

    .line 818
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    const-string v5, "waitForWindowUpdate: general exception from bridge"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    return v1

    .line 815
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v3

    .line 816
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    return v1
.end method

.method public wakeUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->wakeDevice()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 728
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 730
    :cond_19
    return-void
.end method
