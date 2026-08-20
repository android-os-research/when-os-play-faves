.class public Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MouseEventStreamState"
.end annotation


# instance fields
.field public mMotionSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1017
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->reset()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    .line 1023
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    const/4 v0, 0x0

    .line 1024
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1034
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1038
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_11

    const/4 v0, 0x7

    if-ne p1, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1039
    :cond_11
    :goto_11
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    return v1
.end method

.method public final shouldProcessScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
