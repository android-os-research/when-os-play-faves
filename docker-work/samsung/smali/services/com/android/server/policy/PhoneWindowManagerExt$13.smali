.class public Lcom/android/server/policy/PhoneWindowManagerExt$13;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 5390
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$13;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiFingerGesture(II)V
    .registers 4

    .line 5393
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$13;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5394
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$13;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mhandleThreeFingerTap(Lcom/android/server/policy/PhoneWindowManagerExt;II)V

    :cond_d
    return-void
.end method
