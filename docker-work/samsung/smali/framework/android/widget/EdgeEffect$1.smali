.class Landroid/widget/EdgeEffect$1;
.super Landroid/os/Handler;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/EdgeEffect;


# direct methods
.method constructor blacklist <init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/EdgeEffect;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 413
    iput-object p1, p0, Landroid/widget/EdgeEffect$1;->this$0:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 415
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    goto :goto_b

    .line 417
    :pswitch_6
    iget-object v0, p0, Landroid/widget/EdgeEffect$1;->this$0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 420
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
