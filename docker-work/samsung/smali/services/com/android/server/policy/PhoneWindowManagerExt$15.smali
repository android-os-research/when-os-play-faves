.class public Lcom/android/server/policy/PhoneWindowManagerExt$15;
.super Landroid/app/BootProgressDialog;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;->createBootProgressDialog(Landroid/content/Context;I)Landroid/app/BootProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;)V
    .registers 3

    .line 6241
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$15;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0, p2}, Landroid/app/BootProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
