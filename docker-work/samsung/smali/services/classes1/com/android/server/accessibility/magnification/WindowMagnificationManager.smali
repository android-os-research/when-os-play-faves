.class public Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowPosition;
    }
.end annotation


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTING:I = 0x0

.field public static final DBG:Z = false

.field public static final DISCONNECTED:I = 0x3

.field public static final DISCONNECTING:I = 0x2

.field public static SEC_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "WindowMagnificationMgr"

.field public static final WAIT_CONNECTION_TIMEOUT_MILLIS:I = 0x64

.field public static final WINDOW_POSITION_AT_CENTER:I = 0x0

.field public static final WINDOW_POSITION_AT_TOP_LEFT:I = 0x1


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

.field public mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mConnectionState:I

.field public mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationFollowTypingEnabled:Z

.field public mReceiverRegistered:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mScreenStateReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public mWindowMagnifiers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnifierInternal(IFF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->resetWindowMagnifiers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScaleInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScaleInternal(IF)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 7

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 128
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    .line 145
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 148
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    .line 213
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    .line 214
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 215
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "DISCONNECTED"

    return-object p0

    :cond_20
    const-string p0, "DISCONNECTING"

    return-object p0

    :cond_23
    const-string p0, "CONNECTED"

    return-object p0

    :cond_26
    const-string p0, "CONNECTING"

    return-object p0
.end method


# virtual methods
.method public final createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 871
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    .line 872
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public disableAllWindowMagnifiers()V
    .registers 5

    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 368
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 369
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    const/4 v3, 0x0

    .line 370
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 372
    :cond_1b
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 373
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public disableWindowMagnification(IZ)Z
    .registers 4

    .line 628
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 7

    .line 642
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 645
    monitor-exit v0

    return v2

    .line 648
    :cond_10
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p3

    if-eqz p2, :cond_1b

    .line 650
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 652
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_30

    if-eqz p3, :cond_23

    .line 655
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    invoke-interface {p2, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 658
    :cond_23
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_am_magnification_mode"

    const/4 p2, -0x2

    invoke-static {p0, p1, v2, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return p3

    :catchall_30
    move-exception p0

    .line 652
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1194
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez p0, :cond_e

    const-string p0, "WindowMagnificationMgr"

    const-string/jumbo p1, "mConnectionWrapper is null"

    .line 1195
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1198
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public final enableAllTrackingTypingFocus()V
    .registers 5

    .line 481
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 482
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 483
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    const/4 v3, 0x1

    .line 484
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 486
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public enableWindowMagnification(IFFF)Z
    .registers 12

    .line 539
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFI)Z
    .registers 14

    .line 578
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    .line 559
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .registers 19

    move-object v0, p0

    move v1, p1

    .line 601
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 602
    :try_start_5
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez v3, :cond_13

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object v3

    :cond_13
    move-object v4, v3

    .line 606
    invoke-static {v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v3

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 607
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result v4

    .line 609
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_34

    if-eqz v4, :cond_33

    const/4 v2, 0x1

    .line 612
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setTrackingTypingFocusEnabled(IZ)V

    if-nez v3, :cond_33

    .line 614
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    :cond_33
    return v4

    :catchall_34
    move-exception v0

    .line 609
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public final enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object v0, p0

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    .line 1165
    sget-boolean v3, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    const-string v4, "WindowMagnificationMgr"

    if-eqz v3, :cond_25

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mConnectionState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :catch_25
    :cond_25
    :goto_25
    iget v3, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-nez v3, :cond_3d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gez v3, :cond_3d

    .line 1170
    :try_start_31
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3c} :catch_25

    goto :goto_25

    .line 1175
    :cond_3d
    iget-object v7, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez v7, :cond_5d

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWindowMagnificationInternal mConnectionWrapper is null. mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 1178
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_5d
    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    .line 1181
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public getBounds(I)Landroid/graphics/Rect;
    .registers 3

    .line 754
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 757
    monitor-exit v0

    return-object p0

    .line 759
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 760
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getCenterX(I)F
    .registers 3

    .line 811
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1a

    .line 813
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1a

    .line 816
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterX()F

    move-result p0

    monitor-exit v0

    return p0

    :cond_1a
    :goto_1a
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 814
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 817
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getCenterY(I)F
    .registers 3

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1a

    .line 829
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1a

    .line 832
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterY()F

    move-result p0

    monitor-exit v0

    return p0

    :cond_1a
    :goto_1a
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 830
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 833
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getConnectionState()Ljava/lang/String;
    .registers 1

    .line 352
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_13

    .line 448
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 450
    :cond_13
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getMagnificationSourceBounds(ILandroid/graphics/Region;)V
    .registers 4

    .line 854
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1c

    .line 856
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    .line 859
    :cond_14
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1f

    .line 857
    :cond_1c
    :goto_1c
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 861
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public getPersistedScale(I)F
    .registers 2

    .line 716
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result p0

    return p0
.end method

.method public getScale(I)F
    .registers 3

    .line 737
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz p0, :cond_1a

    .line 739
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1a

    .line 742
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getScale()F

    move-result p0

    monitor-exit v0

    return p0

    :cond_1a
    :goto_1a
    const/high16 p0, 0x3f800000    # 1.0f

    .line 740
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 743
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public isConnected()Z
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 279
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isMagnificationFollowTypingEnabled()Z
    .registers 1

    .line 435
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    return p0
.end method

.method public isPositionInSourceBounds(IFF)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 684
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 688
    :cond_c
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isPositionInSourceBounds(FF)Z

    move-result p0

    return p0
.end method

.method public isTrackingTypingFocusEnabled(I)Z
    .registers 3

    .line 837
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 840
    monitor-exit v0

    return p0

    .line 842
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isTrackingTypingFocusEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 843
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isWindowMagnifierEnabled(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 702
    monitor-exit v0

    return p0

    .line 704
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 705
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public moveWindowMagnification(IFF)V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_f

    .line 775
    monitor-exit v0

    return-void

    .line 777
    :cond_f
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->move(FF)V

    .line 778
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final moveWindowMagnifierInternal(IFF)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1204
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->moveWindowMagnifier(IFF)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1211
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    const/4 v0, 0x1

    .line 882
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p2, :cond_a

    .line 497
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableAllTrackingTypingFocus()V

    :cond_a
    return-void
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .registers 7

    .line 413
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    add-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 420
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 421
    :try_start_10
    iget-object p5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p5, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p5

    if-eqz p5, :cond_2a

    .line 422
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isPositionInSourceBounds(IFF)Z

    move-result p5

    if-nez p5, :cond_2a

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isTrackingTypingFocusEnabled(I)Z

    move-result p5

    if-eqz p5, :cond_2a

    .line 424
    sget-object p5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 427
    :cond_2a
    monitor-exit p4

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit p4
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public persistScale(I)V
    .registers 4

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 726
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    :cond_f
    return-void
.end method

.method public pointersInWindow(ILandroid/view/MotionEvent;)I
    .registers 4

    .line 673
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 676
    monitor-exit v0

    return p0

    .line 678
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->pointersInWindow(Landroid/view/MotionEvent;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 679
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public processScroll(IFF)Z
    .registers 4

    neg-float p2, p2

    neg-float p3, p3

    .line 503
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnification(IFF)V

    const/4 p2, 0x0

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setTrackingTypingFocusEnabled(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public removeMagnificationButton(I)Z
    .registers 2

    .line 800
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->removeMagnificationButton(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public requestConnection(Z)Z
    .registers 10

    const-string v0, "WindowMagnificationMgr"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConnectionState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 294
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowMagnificationMgr.requestWindowMagnificationConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 297
    :cond_43
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_55

    .line 298
    :try_start_4b
    iget v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eq v4, v2, :cond_5e

    if-eqz v4, :cond_5e

    goto :goto_55

    :catchall_52
    move-exception p0

    goto/16 :goto_d2

    :cond_55
    :goto_55
    const/4 v4, 0x2

    if-nez p1, :cond_98

    iget v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eq v5, v1, :cond_5e

    if-ne v5, v4, :cond_98

    :cond_5e
    const-string v2, "WindowMagnificationMgr"

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestConnection duplicated request: connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 302
    invoke-static {v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_96

    .line 303
    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-nez v2, :cond_96

    const-string v2, "WindowMagnificationMgr"

    const-string v4, "Connection failed, requestConnection again"

    .line 304
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->requestConnection(Z)Z

    .line 308
    :cond_96
    monitor-exit v0

    return v3

    :cond_98
    if-eqz p1, :cond_af

    .line 312
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 313
    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-nez v6, :cond_bf

    .line 314
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    goto :goto_bf

    .line 318
    :cond_af
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableAllWindowMagnifiers()V

    .line 319
    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-eqz v5, :cond_bf

    .line 320
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 324
    :cond_bf
    :goto_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_4b .. :try_end_c0} :catchall_52

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->requestConnectionInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_ce

    if-eqz p1, :cond_c9

    goto :goto_ca

    :cond_c9
    move v3, v4

    .line 326
    :goto_ca
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    return v2

    .line 329
    :cond_ce
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    return v3

    .line 324
    :goto_d2
    :try_start_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_52

    throw p0
.end method

.method public final requestConnectionInternal(Z)Z
    .registers 4

    .line 335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 337
    :try_start_4
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_16

    .line 340
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->requestWindowMagnificationConnection(Z)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1b

    .line 343
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    throw p0
.end method

.method public resetAllIfNeeded(I)V
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 385
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 386
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-eqz v2, :cond_26

    .line 387
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 389
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getIdOfLastServiceToControl()I

    move-result v3

    if-ne p1, v3, :cond_26

    const/4 v3, 0x0

    .line 390
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 393
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final resetWindowMagnifiers()V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 398
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 399
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 400
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 402
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .registers 8

    .line 224
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "WindowMagnificationMgr"

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConnection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 226
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_4d

    .line 231
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 232
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    if-eqz v1, :cond_3d

    .line 233
    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->-$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)V

    .line 235
    :cond_3d
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 236
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 241
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    if-eqz v1, :cond_4d

    .line 242
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    :cond_4d
    if-eqz p1, :cond_58

    .line 246
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v1, p1, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IWindowMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 249
    :cond_58
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_a2

    if-eqz p1, :cond_91

    .line 251
    :try_start_5c
    new-instance p1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-direct {p1, p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback-IA;)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    .line 252
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 253
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_72} :catch_7a
    .catchall {:try_start_5c .. :try_end_72} :catchall_78

    .line 260
    :try_start_72
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    :goto_74
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_a2

    goto :goto_a0

    :catchall_78
    move-exception p1

    goto :goto_8b

    :catch_7a
    move-exception p1

    :try_start_7b
    const-string v1, "WindowMagnificationMgr"

    const-string/jumbo v2, "setConnection failed"

    .line 256
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 258
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V
    :try_end_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_78

    .line 260
    :try_start_88
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    goto :goto_74

    :goto_8b
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 261
    throw p1

    .line 264
    :cond_91
    sget-boolean p1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    if-eqz p1, :cond_9d

    const-string p1, "WindowMagnificationMgr"

    const-string/jumbo v1, "mConnectionWrapper is null, setConnectionState(DISCONNECTED)"

    .line 265
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_9d
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnectionState(I)V

    .line 270
    :goto_a0
    monitor-exit v0

    return-void

    :catchall_a2
    move-exception p0

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_88 .. :try_end_a4} :catchall_a2

    throw p0
.end method

.method public final setConnectionState(I)V
    .registers 4

    .line 356
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    if-eqz v0, :cond_29

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConnectionState : state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    .line 358
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowMagnificationMgr"

    .line 357
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_29
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionState:I

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 2

    .line 431
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setScale(IF)V
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_f

    .line 519
    monitor-exit v0

    return-void

    .line 521
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setScale(F)V

    .line 522
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final setScaleInternal(IF)Z
    .registers 3

    .line 1188
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setScale(IF)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setSecDebug(Z)V
    .registers 2

    .line 407
    sput-boolean p1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->SEC_DEBUG:Z

    return-void
.end method

.method public setTrackingTypingFocusEnabled(IZ)V
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    if-nez p0, :cond_f

    .line 471
    monitor-exit v0

    return-void

    .line 473
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 474
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public showMagnificationButton(II)Z
    .registers 3

    .line 789
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->showMagnificationButton(II)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
