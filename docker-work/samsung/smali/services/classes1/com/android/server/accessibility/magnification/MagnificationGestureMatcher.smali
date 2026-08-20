.class public Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;
.super Ljava/lang/Object;
.source "MagnificationGestureMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher$GestureId;
    }
.end annotation


# static fields
.field public static final GESTURE_BASE:I = 0x64

.field public static final GESTURE_SINGLE_TAP:I = 0x67

.field public static final GESTURE_SINGLE_TAP_AND_HOLD:I = 0x68

.field public static final GESTURE_SWIPE:I = 0x66

.field public static final GESTURE_TRIPLE_TAP:I = 0x69

.field public static final GESTURE_TRIPLE_TAP_AND_HOLD:I = 0x6a

.field public static final GESTURE_TWO_FINGERS_DOWN_OR_SWIPE:I = 0x65

.field public static final SEM_GESTURE_DOUBLE_TAP:I = 0xc9

.field public static final SEM_GESTURE_DOUBLE_TAP_AND_HOLD:I = 0xca


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gestureIdToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_24

    const/16 v0, 0xca

    if-eq p0, v0, :cond_21

    packed-switch p0, :pswitch_data_28

    const-string/jumbo p0, "none"

    return-object p0

    :pswitch_f
    const-string p0, "GESTURE_TRIPLE_TAP_AND_HOLD"

    return-object p0

    :pswitch_12
    const-string p0, "GESTURE_TRIPLE_TAP"

    return-object p0

    :pswitch_15
    const-string p0, "GESTURE_SINGLE_TAP_AND_HOLD"

    return-object p0

    :pswitch_18
    const-string p0, "GESTURE_SINGLE_TAP"

    return-object p0

    :pswitch_1b
    const-string p0, "GESTURE_SWIPE"

    return-object p0

    :pswitch_1e
    const-string p0, "GESTURE_TWO_FINGERS_DOWN_OR_SWIPE"

    return-object p0

    :cond_21
    const-string p0, "SEM_GESTURE_DOUBLE_TAP_AND_HOLD"

    return-object p0

    :cond_24
    const-string p0, "SEM_GESTURE_DOUBLE_TAP"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x65
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public static getMagnificationMultiTapTimeout(Landroid/content/Context;)I
    .registers 3

    .line 92
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e0113

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
