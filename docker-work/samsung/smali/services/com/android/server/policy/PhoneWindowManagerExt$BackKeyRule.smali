.class public final Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackKeyRule"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 3

    .line 2352
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 p1, 0x4

    .line 2353
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress(JLandroid/view/KeyEvent;)V
    .registers 4

    .line 2358
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_a

    return-void

    .line 2361
    :cond_a
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/4 p3, -0x1

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    return-void
.end method
