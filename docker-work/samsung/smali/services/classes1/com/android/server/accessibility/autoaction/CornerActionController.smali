.class public Lcom/android/server/accessibility/autoaction/CornerActionController;
.super Ljava/lang/Object;
.source "CornerActionController.java"


# static fields
.field public static final ACTION_DELIMITER:Ljava/lang/String; = ","

.field public static final BOTTOM_LEFT_CORNER:I = 0x2

.field public static final BOTTOM_RIGHT_CORNER:I = 0x3

.field public static final CORNER_DELIMITER:Ljava/lang/String; = ":"

.field public static final CORNER_RANGE:F = 40.0f

.field public static final GESTURE_ACTION:I = 0x1

.field public static final KEY_GESTURE_ACTION_TIP_SHOWN:Ljava/lang/String; = "accessibility_corner_action_tip_shown"

.field public static final NON_GESTURE_ACTION:I = 0x0

.field public static final PAUSE_RESUME_AUTO_CLICK_ACTION:I = 0x3

.field public static final POPUP_DIRECTION:[I

.field public static final POPUP_GRAVITY:[I

.field public static final SELECT_ACTION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CornerActionController"

.field public static final TOP_LEFT_CORNER:I = 0x0

.field public static final TOP_RIGHT_CORNER:I = 0x1

.field public static final TTS_CORNER:[I

.field public static mGestureActionFlag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dismissForGesture:Z

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCornerActionTypeObserver:Landroid/database/ContentObserver;

.field public mCornerActions:[Ljava/lang/String;

.field public mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

.field public mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mGestureAction:Ljava/lang/String;

.field public mIsAnimating:Z

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTipAnchorView:Landroid/view/View;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final mUserId:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetdismissForGesture(Lcom/android/server/accessibility/autoaction/CornerActionController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->dismissForGesture:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipAnchorView(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipPopup(Lcom/android/server/accessibility/autoaction/CornerActionController;)Lcom/samsung/android/widget/SemTipPopup;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputdismissForGesture(Lcom/android/server/accessibility/autoaction/CornerActionController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->dismissForGesture:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipAnchorView(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCornerAction(Lcom/android/server/accessibility/autoaction/CornerActionController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->setCornerAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetPOPUP_DIRECTION()[I
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "double_click"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "zoom_in"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "zoom_out"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "swipe_left"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "swipe_right"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "swipe_up"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "swipe_down"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "click_and_hold"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "drag"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "drag_and_drop"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [I

    .line 75
    fill-array-data v0, :array_a0

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    new-array v0, v1, [I

    .line 79
    fill-array-data v0, :array_ac

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    new-array v0, v1, [I

    .line 83
    fill-array-data v0, :array_b8

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    return-void

    :array_a0
    .array-data 4
        0x33
        0x35
        0x53
        0x55
    .end array-data

    :array_ac
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_b8
    .array-data 4
        0x104010c
        0x104010d
        0x1040109
        0x104010a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->dismissForGesture:Z

    .line 90
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Landroid/database/ContentObserver;

    .line 116
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 118
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->initGestureActionTip()V

    .line 120
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_corner_actions"

    .line 121
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Landroid/database/ContentObserver;

    .line 120
    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public clearDuration()V
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_a

    .line 279
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->clearAnimation()V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    :cond_a
    return-void
.end method

.method public convertKeyToTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createDurationProgress(I)V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-nez v0, :cond_10

    .line 258
    new-instance v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    :cond_10
    return-void
.end method

.method public getCorner(FFI)I
    .registers 10

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_22

    .line 159
    invoke-virtual {v0, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p3

    if-eqz p3, :cond_22

    .line 161
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 162
    invoke-virtual {p3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 163
    iget p3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 164
    iget p3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    :cond_22
    const/4 p3, 0x0

    cmpl-float v0, p1, p3

    const/high16 v1, 0x42200000    # 40.0f

    if-nez v0, :cond_2d

    cmpg-float v2, p2, v1

    if-ltz v2, :cond_35

    :cond_2d
    cmpg-float v2, p1, v1

    if-gez v2, :cond_37

    cmpl-float v3, p2, p3

    if-nez v3, :cond_37

    :cond_35
    const/4 p0, 0x0

    return p0

    .line 171
    :cond_37
    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    const/4 v5, 0x1

    if-nez v4, :cond_45

    cmpg-float v4, p2, v1

    if-ltz v4, :cond_4f

    :cond_45
    int-to-float v4, v3

    sub-float/2addr v4, p1

    cmpg-float v4, v4, v1

    if-gez v4, :cond_50

    cmpl-float p3, p2, p3

    if-nez p3, :cond_50

    :cond_4f
    return v5

    :cond_50
    if-gez v2, :cond_5a

    .line 174
    iget p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    sub-int/2addr p3, v5

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_64

    :cond_5a
    if-nez v0, :cond_66

    iget p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    cmpg-float p3, p3, v1

    if-gez p3, :cond_66

    :cond_64
    const/4 p0, 0x2

    return p0

    :cond_66
    int-to-float p3, v3

    sub-float/2addr p3, p1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_74

    .line 177
    iget p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    sub-int/2addr p3, v5

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_82

    :cond_74
    sub-int/2addr v3, v5

    int-to-float p3, v3

    cmpl-float p1, p1, p3

    if-nez p1, :cond_84

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    int-to-float p0, p0

    sub-float/2addr p0, p2

    cmpg-float p0, p0, v1

    if-gez p0, :cond_84

    :cond_82
    const/4 p0, 0x3

    return p0

    :cond_84
    const/4 p0, -0x1

    return p0
.end method

.method public getCornerActions(I)[Ljava/lang/String;
    .registers 2

    .line 249
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    aget-object p0, p0, p1

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_24

    .line 293
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 295
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 299
    :cond_24
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public handleCornerAction(II)I
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_15

    .line 137
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 139
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    const/4 p0, 0x2

    return p0

    :cond_25
    const/4 v1, 0x0

    .line 143
    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method public final initGestureActionTip()V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    .line 304
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p0, 0x0

    .line 305
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p0, 0x7d6

    .line 306
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x20

    .line 307
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 308
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return-void
.end method

.method public performCornerAction(Ljava/lang/String;II)I
    .registers 9

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_d4

    goto/16 :goto_98

    :sswitch_10
    const-string v0, "double_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_98

    :cond_1a
    const/16 v4, 0xa

    goto/16 :goto_98

    :sswitch_1e
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_98

    :cond_29
    const/16 v4, 0x9

    goto/16 :goto_98

    :sswitch_2d
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_98

    :cond_38
    const/16 v4, 0x8

    goto/16 :goto_98

    :sswitch_3c
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_98

    :cond_46
    const/4 v4, 0x7

    goto :goto_98

    :sswitch_48
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_98

    :cond_52
    const/4 v4, 0x6

    goto :goto_98

    :sswitch_54
    const-string v0, "drag_and_drop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_98

    :cond_5d
    const/4 v4, 0x5

    goto :goto_98

    :sswitch_5f
    const-string v0, "drag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_98

    :cond_68
    const/4 v4, 0x4

    goto :goto_98

    :sswitch_6a
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_98

    :cond_74
    move v4, v1

    goto :goto_98

    :sswitch_76
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_98

    :cond_80
    const/4 v4, 0x2

    goto :goto_98

    :sswitch_82
    const-string/jumbo v0, "pause_resume_auto_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_98

    :cond_8c
    move v4, v2

    goto :goto_98

    :sswitch_8e
    const-string v0, "click_and_hold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_98

    :cond_97
    move v4, v3

    :goto_98
    packed-switch v4, :pswitch_data_102

    .line 210
    iget-object p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    invoke-static {p1, p3, p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object p0

    if-eqz p0, :cond_a8

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :cond_a8
    return v3

    :pswitch_a9
    return v1

    .line 196
    :pswitch_aa
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    const-string v4, "accessibility_corner_action_tip_shown"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 199
    sget-object v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v3, v0, v1

    if-nez v3, :cond_d2

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/autoaction/CornerActionController;->showGestureActionTip(Ljava/lang/String;II)V

    or-int p1, v0, v1

    .line 203
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    invoke-static {p2, v4, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_d2
    return v2

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x643f1902 -> :sswitch_8e
        -0x5513dbbf -> :sswitch_82
        -0x68ea6ef -> :sswitch_76
        -0x54cce40 -> :sswitch_6a
        0x2f2d34 -> :sswitch_5f
        0x19319b02 -> :sswitch_54
        0x1aa61287 -> :sswitch_48
        0x1aa98dec -> :sswitch_3c
        0x34b9e0e2 -> :sswitch_2d
        0x3ade90d7 -> :sswitch_1e
        0x51e7c39a -> :sswitch_10
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a9
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch
.end method

.method public performGestureAction(Landroid/view/MotionEvent;)I
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 220
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->dismissForGesture:Z

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 224
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v3, "drag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "drag_and_drop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 240
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :cond_39
    return v2

    .line 227
    :cond_3a
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    if-eqz v0, :cond_4e

    .line 228
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->setMotionEventForDragAction(Landroid/view/MotionEvent;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    return v2

    .line 233
    :cond_4e
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    if-eqz v0, :cond_61

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :cond_61
    return v1
.end method

.method public final setCornerAction()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    const-string v2, "accessibility_corner_actions"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, ":"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    :cond_14
    return-void
.end method

.method public setDurationViewOnOff(Z)V
    .registers 2

    .line 285
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz p0, :cond_7

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->setViewOnOff(Z)V

    :cond_7
    return-void
.end method

.method public final showGestureActionTip(Ljava/lang/String;II)V
    .registers 10

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 313
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 314
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v3, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    aget v3, v3, p3

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 315
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance p2, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    invoke-direct {p2, v2}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 318
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 319
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x104010b

    .line 318
    invoke-virtual {p2, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 320
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p2, p1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 321
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p2, v2}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 325
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    rem-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_4e

    move v3, v4

    goto :goto_50

    :cond_4e
    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    :goto_50
    const/4 v5, 0x2

    if-ge p3, v5, :cond_54

    goto :goto_56

    .line 326
    :cond_54
    iget v4, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 325
    :goto_56
    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 328
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v3, Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    invoke-direct {v3, p0, v0, v1, p3}, Lcom/android/server/accessibility/autoaction/CornerActionController$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;JI)V

    invoke-virtual {p2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setOnDismissListener(Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;)V

    .line 351
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p2}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    .line 352
    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 353
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 354
    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionController$3;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionController$3;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 363
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 364
    new-instance p2, Lcom/android/server/accessibility/autoaction/CornerActionController$4;

    invoke-direct {p2, p0, p3}, Lcom/android/server/accessibility/autoaction/CornerActionController$4;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startDuration(J)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    if-nez v1, :cond_13

    .line 271
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->setDurationTime(J)V

    .line 272
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-virtual {p1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->startAnimation()V

    const/4 p1, 0x1

    .line 273
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    :cond_13
    return-void
.end method

.method public stop()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_a

    .line 128
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->destroy()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateDurationViewXY(FF)V
    .registers 3

    .line 264
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz p0, :cond_7

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->updateView(FF)V

    :cond_7
    return-void
.end method
