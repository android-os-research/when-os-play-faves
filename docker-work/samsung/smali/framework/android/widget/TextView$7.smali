.class Landroid/widget/TextView$7;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextView;

.field final synthetic blacklist val$inputDevice:Landroid/view/InputDevice;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;Landroid/view/InputDevice;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/TextView;

    .line 17588
    iput-object p1, p0, Landroid/widget/TextView$7;->this$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$7;->val$inputDevice:Landroid/view/InputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 17590
    const/4 v0, 0x1

    const/16 v1, 0x4e2a

    invoke-static {v0, v1}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    .line 17591
    iget-object v0, p0, Landroid/widget/TextView$7;->val$inputDevice:Landroid/view/InputDevice;

    if-eqz v0, :cond_d

    .line 17592
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 17594
    :cond_d
    return-void
.end method
