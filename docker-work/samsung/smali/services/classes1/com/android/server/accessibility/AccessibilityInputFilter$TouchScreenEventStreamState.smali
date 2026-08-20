.class public Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchScreenEventStreamState"
.end annotation


# instance fields
.field public mHoverSequenceStarted:Z

.field public mTouchSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1052
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->reset()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    .line 1058
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    const/4 v0, 0x0

    .line 1059
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 1060
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1066
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1067
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    if-eqz v0, :cond_d

    return v2

    .line 1070
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_14

    move v1, v2

    :cond_14
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    return v1

    .line 1075
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    if-eqz v0, :cond_1c

    return v2

    .line 1078
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_25

    move v1, v2

    :cond_25
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    return v1
.end method
