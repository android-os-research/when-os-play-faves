.class Lcom/android/server/ssrm/common/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/common/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/common/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/common/LocalBroadcastManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ssrm/common/LocalBroadcastManager;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 82
    iput-object p1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager$1;->this$0:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 90
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_f

    .line 87
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager$1;->this$0:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    invoke-static {v0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->-$$Nest$mexecutePendingBroadcasts(Lcom/android/server/ssrm/common/LocalBroadcastManager;)V

    .line 88
    nop

    .line 92
    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
