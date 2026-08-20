.class public Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventStreamState"
.end annotation


# instance fields
.field public mSource:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 953
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    return-void
.end method


# virtual methods
.method public inputSourceValid()Z
    .registers 1

    .line 977
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x1

    .line 984
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public shouldProcessScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public updateInputSource(I)Z
    .registers 3

    .line 964
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 968
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 969
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mSource:I

    const/4 p0, 0x1

    return p0
.end method
