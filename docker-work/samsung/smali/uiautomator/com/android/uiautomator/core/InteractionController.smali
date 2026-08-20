.class Lcom/android/uiautomator/core/InteractionController;
.super Ljava/lang/Object;
.source "InteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;,
        Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;,
        Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MOTION_EVENT_INJECTION_DELAY_MILLIS:I = 0x5

.field private static final REGULAR_CLICK_LENGTH:J = 0x64L


# instance fields
.field private mDownTime:J

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static bridge synthetic -$$Nest$minjectEventSync(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtouchDown(Lcom/android/uiautomator/core/InteractionController;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtouchUp(Lcom/android/uiautomator/core/InteractionController;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 49
    const-class v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    .line 51
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .registers 3
    .param p1, "bridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    nop

    .line 54
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 66
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 67
    return-void
.end method

.method private clickRunnable(II)Ljava/lang/Runnable;
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 270
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$2;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    return-object v0
.end method

.method private getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;I)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .line 399
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "x":I
    :goto_4
    if-lez v0, :cond_18

    .line 400
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 401
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    if-ne v2, p2, :cond_15

    .line 402
    return-object v1

    .line 399
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 404
    .end local v0    # "x":I
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPointerAction(II)I
    .registers 4
    .param p1, "motionEnvent"    # I
    .param p2, "index"    # I

    .line 657
    shl-int/lit8 v0, p2, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method private injectEventSync(Landroid/view/InputEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 653
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v0

    return v0
.end method

.method private recycleAccessibilityEvents(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 409
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_4

    .line 410
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 411
    return-void
.end method

.method private runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .registers 9
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeout"    # J

    .line 159
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    return-object v0

    .line 164
    :catch_8
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exception from executeCommandAndWaitForAccessibilityEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    return-object v0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v1

    .line 162
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "runAndwaitForEvent timedout waiting for events"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v0
.end method

.method private touchDown(II)Z
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 303
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 304
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchDown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 307
    const/4 v6, 0x0

    int-to-float v7, p1

    int-to-float v8, p2

    const/4 v9, 0x1

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 309
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 310
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v1

    return v1
.end method

.method private touchMove(II)Z
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 326
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 327
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchMove ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 330
    .local v0, "eventTime":J
    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v6, 0x2

    int-to-float v7, p1

    int-to-float v8, p2

    const/4 v9, 0x1

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 332
    .local v2, "event":Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 333
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    return v3
.end method

.method private touchUp(II)Z
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 314
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 315
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchUp ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 318
    .local v0, "eventTime":J
    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v6, 0x1

    int-to-float v7, p1

    int-to-float v8, p2

    const/4 v9, 0x1

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 320
    .local v2, "event":Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 321
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 322
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public clickAndSync(IIJ)Z
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .line 235
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

    const-string v1, "clickAndSync(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v4, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    const/16 v5, 0x804

    invoke-direct {v4, p0, v5}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v1, v4, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_2e

    move v2, v3

    :cond_2e
    return v2
.end method

.method public clickAndWaitForNewWindow(IIJ)Z
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .line 253
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

    const-string v1, "clickAndWaitForNewWindow(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v4, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;

    const/16 v5, 0x820

    invoke-direct {v4, p0, v5}, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v1, v4, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_2e

    move v2, v3

    :cond_2e
    return v2
.end method

.method public clickNoSync(II)Z
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 214
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 217
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method public freezeRotation()V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 604
    return-void
.end method

.method public isScreenOn()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public longTapNoSync(II)Z
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 289
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 290
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longTapNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 294
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 296
    const/4 v0, 0x1

    return v0

    .line 299
    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method public openNotification()Z
    .registers 3

    .line 779
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public openQuickSettings()Z
    .registers 3

    .line 790
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .registers 31
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 686
    .local v2, "ret":Z
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1aa

    .line 691
    const/4 v3, 0x0

    .line 692
    .local v3, "maxSteps":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_b
    array-length v5, v1

    if-ge v4, v5, :cond_1c

    .line 693
    aget-object v5, v1, v4

    array-length v5, v5

    if-ge v3, v5, :cond_17

    aget-object v5, v1, v4

    array-length v5, v5

    goto :goto_18

    :cond_17
    move v5, v3

    :goto_18
    move v3, v5

    .line 692
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 696
    .end local v4    # "x":I
    :cond_1c
    array-length v4, v1

    new-array v4, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 697
    .local v4, "properties":[Landroid/view/MotionEvent$PointerProperties;
    array-length v5, v1

    new-array v15, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 698
    .local v15, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_23
    array-length v6, v1

    const/16 v21, 0x0

    const/4 v14, 0x1

    if-ge v5, v6, :cond_3d

    .line 699
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 700
    .local v6, "prop":Landroid/view/MotionEvent$PointerProperties;
    iput v5, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 701
    iput v14, v6, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 702
    aput-object v6, v4, v5

    .line 705
    aget-object v7, v1, v5

    aget-object v7, v7, v21

    aput-object v7, v15, v5

    .line 698
    .end local v6    # "prop":Landroid/view/MotionEvent$PointerProperties;
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 709
    .end local v5    # "x":I
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 711
    .local v22, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x1002

    const/16 v25, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object v12, v15

    move/from16 v26, v14

    move/from16 v14, v16

    move-object/from16 v27, v15

    .end local v15    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v27, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v24

    move/from16 v20, v25

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 713
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 715
    const/4 v6, 0x1

    move-object/from16 v24, v5

    move v15, v6

    .end local v5    # "event":Landroid/view/MotionEvent;
    .local v15, "x":I
    .local v24, "event":Landroid/view/MotionEvent;
    :goto_79
    array-length v5, v1

    if-ge v15, v5, :cond_b6

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v5, 0x5

    .line 717
    invoke-direct {v0, v5, v15}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    move-result v9

    add-int/lit8 v10, v15, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v25, 0x0

    .line 716
    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v27

    move/from16 v28, v15

    .end local v15    # "x":I
    .local v28, "x":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v25

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 719
    .end local v24    # "event":Landroid/view/MotionEvent;
    .restart local v5    # "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 715
    add-int/lit8 v15, v28, 0x1

    move-object/from16 v24, v5

    .end local v28    # "x":I
    .restart local v15    # "x":I
    goto :goto_79

    .end local v5    # "event":Landroid/view/MotionEvent;
    .restart local v24    # "event":Landroid/view/MotionEvent;
    :cond_b6
    move/from16 v28, v15

    .line 723
    .end local v15    # "x":I
    const/4 v5, 0x1

    move v15, v5

    .local v15, "i":I
    :goto_ba
    add-int/lit8 v5, v3, -0x1

    if-ge v15, v5, :cond_116

    .line 725
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_bf
    array-length v6, v1

    if-ge v5, v6, :cond_dc

    .line 727
    aget-object v6, v1, v5

    array-length v6, v6

    if-le v6, v15, :cond_ce

    .line 728
    aget-object v6, v1, v5

    aget-object v6, v6, v15

    aput-object v6, v27, v5

    goto :goto_d9

    .line 730
    :cond_ce
    aget-object v6, v1, v5

    aget-object v7, v1, v5

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    aput-object v6, v27, v5

    .line 725
    :goto_d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 733
    .end local v5    # "x":I
    :cond_dc
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x2

    array-length v10, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v25, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v27

    move/from16 v28, v15

    .end local v15    # "i":I
    .local v28, "i":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v25

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 737
    .end local v24    # "event":Landroid/view/MotionEvent;
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 738
    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 723
    add-int/lit8 v15, v28, 0x1

    move-object/from16 v24, v5

    .end local v28    # "i":I
    .restart local v15    # "i":I
    goto :goto_ba

    .end local v5    # "event":Landroid/view/MotionEvent;
    .restart local v24    # "event":Landroid/view/MotionEvent;
    :cond_116
    move/from16 v28, v15

    .line 742
    .end local v15    # "i":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_119
    array-length v6, v1

    if-ge v5, v6, :cond_12a

    .line 743
    aget-object v6, v1, v5

    aget-object v7, v1, v5

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    aput-object v6, v27, v5

    .line 742
    add-int/lit8 v5, v5, 0x1

    goto :goto_119

    .line 746
    .end local v5    # "x":I
    :cond_12a
    const/4 v5, 0x1

    move v15, v5

    .local v15, "x":I
    :goto_12c
    array-length v5, v1

    if-ge v15, v5, :cond_169

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v5, 0x6

    .line 748
    invoke-direct {v0, v5, v15}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    move-result v9

    add-int/lit8 v10, v15, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v25, 0x0

    .line 747
    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v27

    move/from16 v26, v15

    .end local v15    # "x":I
    .local v26, "x":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v25

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 750
    .end local v24    # "event":Landroid/view/MotionEvent;
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 746
    add-int/lit8 v15, v26, 0x1

    move-object/from16 v24, v5

    .end local v26    # "x":I
    .restart local v15    # "x":I
    goto :goto_12c

    .end local v5    # "event":Landroid/view/MotionEvent;
    .restart local v24    # "event":Landroid/view/MotionEvent;
    :cond_169
    move/from16 v26, v15

    .line 753
    .end local v15    # "x":I
    sget-object v5, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v27, v21

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1002

    const/16 v20, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v27

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 757
    .end local v24    # "event":Landroid/view/MotionEvent;
    .restart local v5    # "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 758
    return v2

    .line 687
    .end local v3    # "maxSteps":I
    .end local v4    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v5    # "event":Landroid/view/MotionEvent;
    .end local v22    # "downTime":J
    .end local v27    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_1aa
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must provide coordinates for at least 2 pointers"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public scrollSwipe(IIIII)Z
    .registers 15
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .line 348
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollSwipe ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$3;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/uiautomator/core/InteractionController$3;-><init>(Lcom/android/uiautomator/core/InteractionController;IIIII)V

    .line 360
    .local v1, "command":Ljava/lang/Runnable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityEvent;>;"
    new-instance v3, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;

    const/16 v4, 0x1000

    invoke-direct {v3, p0, v4, v2}, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;ILjava/util/List;)V

    .line 363
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/Configurator;->getScrollAcknowledgmentTimeout()J

    move-result-wide v5

    .line 361
    invoke-direct {p0, v1, v3, v5, v6}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    .line 365
    invoke-direct {p0, v2, v4}, Lcom/android/uiautomator/core/InteractionController;->getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 368
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v4, 0x0

    if-nez v3, :cond_6e

    .line 370
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 371
    return v4

    .line 375
    :cond_6e
    const/4 v5, 0x0

    .line 376
    .local v5, "foundEnd":Z
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v6, v8, :cond_b1

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v6

    if-eq v6, v8, :cond_b1

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v6

    if-eq v6, v8, :cond_b1

    .line 377
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v6

    if-eqz v6, :cond_97

    .line 378
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v8

    if-ne v6, v8, :cond_95

    goto :goto_97

    :cond_95
    move v6, v4

    goto :goto_98

    :cond_97
    :goto_97
    move v6, v7

    :goto_98
    move v5, v6

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scrollSwipe reached scroll end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_118

    .line 380
    :cond_b1
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v6

    if-eq v6, v8, :cond_118

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v6

    if-eq v6, v8, :cond_118

    .line 382
    if-ne p1, p3, :cond_eb

    .line 384
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v6

    if-eqz v6, :cond_d2

    .line 385
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollY()I

    move-result v8

    if-ne v6, v8, :cond_d0

    goto :goto_d2

    :cond_d0
    move v6, v4

    goto :goto_d3

    :cond_d2
    :goto_d2
    move v6, v7

    :goto_d3
    move v5, v6

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vertical scrollSwipe reached scroll end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    .line 387
    :cond_eb
    if-ne p2, p4, :cond_118

    .line 389
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v6

    if-eqz v6, :cond_100

    .line 390
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollX()I

    move-result v8

    if-ne v6, v8, :cond_fe

    goto :goto_100

    :cond_fe
    move v6, v4

    goto :goto_101

    :cond_100
    :goto_100
    move v6, v7

    :goto_101
    move v5, v6

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Horizontal scrollSwipe reached scroll end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_118
    :goto_118
    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 395
    if-nez v5, :cond_11e

    move v4, v7

    :cond_11e
    return v4
.end method

.method public sendKey(II)Z
    .registers 22
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 542
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v1, :cond_33

    .line 543
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKey ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v15, p1

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v14, p2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 542
    :cond_33
    move/from16 v15, p1

    move/from16 v14, p2

    .line 546
    :goto_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 547
    .local v1, "eventTime":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x101

    move-object/from16 v3, v16

    move-wide v4, v1

    move-wide v6, v1

    move/from16 v9, p1

    move/from16 v11, p2

    move/from16 v14, v17

    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v15, v16

    .line 550
    .local v15, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v15}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 551
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x101

    move-object/from16 v3, v16

    move-wide v4, v1

    move-wide v6, v1

    move/from16 v9, p1

    move/from16 v11, p2

    move-object/from16 v18, v15

    .end local v15    # "downEvent":Landroid/view/KeyEvent;
    .local v18, "downEvent":Landroid/view/KeyEvent;
    move/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 554
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v3}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 555
    const/4 v4, 0x1

    return v4

    .line 550
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    .end local v18    # "downEvent":Landroid/view/KeyEvent;
    .restart local v15    # "downEvent":Landroid/view/KeyEvent;
    :cond_7c
    move-object/from16 v18, v15

    .line 558
    .end local v15    # "downEvent":Landroid/view/KeyEvent;
    .restart local v18    # "downEvent":Landroid/view/KeyEvent;
    :cond_7e
    const/4 v3, 0x0

    return v3
.end method

.method public sendKeyAndWaitForEvent(IIIJ)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I
    .param p3, "eventType"    # I
    .param p4, "timeout"    # J

    .line 186
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$1;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    .line 202
    .local v0, "command":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    invoke-direct {v1, p0, p3}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public sendText(Ljava/lang/String;)Z
    .registers 11
    .param p1, "text"    # Ljava/lang/String;

    .line 516
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 517
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendText ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_22
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 522
    .local v0, "events":[Landroid/view/KeyEvent;
    if-eqz v0, :cond_53

    .line 523
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getKeyInjectionDelay()J

    move-result-wide v1

    .line 524
    .local v1, "keyDelay":J
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_39
    if-ge v5, v3, :cond_53

    aget-object v6, v0, v5

    .line 530
    .local v6, "event2":Landroid/view/KeyEvent;
    nop

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 530
    invoke-static {v6, v7, v8, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v7

    .line 532
    .local v7, "event":Landroid/view/KeyEvent;
    invoke-direct {p0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 533
    return v4

    .line 535
    :cond_4d
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 524
    .end local v6    # "event2":Landroid/view/KeyEvent;
    .end local v7    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 538
    .end local v1    # "keyDelay":J
    :cond_53
    const/4 v1, 0x1

    return v1
.end method

.method public setRotationLeft()V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 583
    return-void
.end method

.method public setRotationNatural()V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 595
    return-void
.end method

.method public setRotationRight()V
    .registers 3

    .line 570
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 571
    return-void
.end method

.method public sleepDevice()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 637
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 638
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_e
    return v1
.end method

.method public swipe(IIIII)Z
    .registers 13
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .line 423
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public swipe(IIIIIZ)Z
    .registers 20
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I
    .param p6, "drag"    # Z

    .line 437
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 438
    .local v3, "ret":Z
    move/from16 v4, p5

    .line 439
    .local v4, "swipeSteps":I
    const-wide/16 v5, 0x0

    .line 440
    .local v5, "xStep":D
    const-wide/16 v7, 0x0

    .line 443
    .local v7, "yStep":D
    if-nez v4, :cond_f

    .line 444
    const/4 v4, 0x1

    .line 446
    :cond_f
    sub-int v9, v1, p1

    int-to-double v9, v9

    int-to-double v11, v4

    div-double/2addr v9, v11

    .line 447
    .end local v5    # "xStep":D
    .local v9, "xStep":D
    sub-int v5, v2, p2

    int-to-double v5, v5

    int-to-double v11, v4

    div-double/2addr v5, v11

    .line 450
    .end local v7    # "yStep":D
    .local v5, "yStep":D
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v3

    .line 451
    if-eqz p6, :cond_28

    .line 452
    iget-object v7, v0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v7}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 453
    :cond_28
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_29
    if-ge v7, v4, :cond_43

    .line 454
    int-to-double v11, v7

    mul-double/2addr v11, v9

    double-to-int v8, v11

    add-int/2addr v8, p1

    int-to-double v11, v7

    mul-double/2addr v11, v5

    double-to-int v11, v11

    add-int/2addr v11, p2

    invoke-direct {p0, v8, v11}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v8

    and-int/2addr v3, v8

    .line 455
    if-nez v3, :cond_3b

    .line 456
    goto :goto_43

    .line 461
    :cond_3b
    const-wide/16 v11, 0x5

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 453
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 463
    .end local v7    # "i":I
    :cond_43
    :goto_43
    if-eqz p6, :cond_4a

    .line 464
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 465
    :cond_4a
    invoke-direct {p0, v1, v2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v7

    and-int/2addr v3, v7

    .line 466
    return v3
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .registers 15
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "ret":Z
    move v1, p2

    .line 478
    .local v1, "swipeSteps":I
    const-wide/16 v2, 0x0

    .line 479
    .local v2, "xStep":D
    const-wide/16 v4, 0x0

    .line 482
    .local v4, "yStep":D
    if-nez p2, :cond_9

    .line 483
    const/4 p2, 0x1

    .line 486
    :cond_9
    array-length v6, p1

    const/4 v7, 0x0

    if-nez v6, :cond_e

    .line 487
    return v7

    .line 490
    :cond_e
    aget-object v6, p1, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    .line 491
    const/4 v6, 0x0

    .local v6, "seg":I
    :goto_1b
    array-length v7, p1

    if-ge v6, v7, :cond_69

    .line 492
    add-int/lit8 v7, v6, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_66

    .line 494
    add-int/lit8 v7, v6, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    int-to-double v9, p2

    div-double/2addr v7, v9

    .line 495
    .end local v2    # "xStep":D
    .local v7, "xStep":D
    add-int/lit8 v2, v6, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v3, p1, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v9, p2

    div-double/2addr v2, v9

    .line 497
    .end local v4    # "yStep":D
    .local v2, "yStep":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_40
    if-ge v4, v1, :cond_64

    .line 498
    aget-object v5, p1, v6

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v9, v4

    mul-double/2addr v9, v7

    double-to-int v9, v9

    add-int/2addr v5, v9

    aget-object v9, p1, v6

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-double v10, v4

    mul-double/2addr v10, v2

    double-to-int v10, v10

    add-int/2addr v9, v10

    invoke-direct {p0, v5, v9}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v5

    and-int/2addr v0, v5

    .line 500
    if-nez v0, :cond_5c

    .line 501
    move-wide v4, v2

    move-wide v2, v7

    goto :goto_66

    .line 506
    :cond_5c
    const-wide/16 v9, 0x5

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_64
    move-wide v4, v2

    move-wide v2, v7

    .line 491
    .end local v7    # "xStep":D
    .local v2, "xStep":D
    .local v4, "yStep":D
    :cond_66
    :goto_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 510
    .end local v6    # "seg":I
    :cond_69
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v6

    and-int/2addr v0, v6

    .line 511
    return v0
.end method

.method public toggleRecentApps()Z
    .registers 3

    .line 768
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public unfreezeRotation()V
    .registers 3

    .line 612
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 613
    return-void
.end method

.method public wakeDevice()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 623
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 624
    const/4 v0, 0x1

    return v0

    .line 626
    :cond_e
    return v1
.end method
