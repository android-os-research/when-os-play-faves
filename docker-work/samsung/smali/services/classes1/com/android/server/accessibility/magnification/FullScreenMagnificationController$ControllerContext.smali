.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerContext"
.end annotation


# instance fields
.field public final mAnimationDuration:Ljava/lang/Long;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V
    .registers 7

    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1730
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 1731
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 1732
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 1733
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 1734
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAnimationDuration()J
    .registers 3

    .line 1783
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 1742
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 1766
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    .line 1750
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public getWindowManager()Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 1758
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public newValueAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    .line 1776
    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-object p0
.end method
