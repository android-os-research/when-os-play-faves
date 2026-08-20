.class public Lcom/android/server/smartclip/SpenGestureManagerService$6;
.super Landroid/os/Handler;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .line 757
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 760
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 780
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_2c

    .line 776
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/16 p1, 0x9

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    goto :goto_2c

    .line 772
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    goto :goto_2c

    .line 766
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-eqz v0, :cond_2c

    .line 767
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    check-cast p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V

    goto :goto_2c

    .line 762
    :pswitch_25
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    :cond_2c
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x3018
        :pswitch_25
        :pswitch_17
        :pswitch_11
        :pswitch_9
    .end packed-switch
.end method
