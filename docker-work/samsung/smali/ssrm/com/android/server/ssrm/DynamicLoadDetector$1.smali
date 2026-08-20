.class Lcom/android/server/ssrm/DynamicLoadDetector$1;
.super Landroid/os/Handler;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/DynamicLoadDetector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DynamicLoadDetector;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ssrm/DynamicLoadDetector;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 72
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    goto :goto_22

    .line 86
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring(Z)V

    .line 87
    goto :goto_22

    .line 83
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->resumeLoadDetect()V

    .line 84
    goto :goto_22

    .line 80
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->onLoadDetected(I)V

    .line 81
    goto :goto_22

    .line 77
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring(Z)V

    .line 78
    nop

    .line 91
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_13
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
