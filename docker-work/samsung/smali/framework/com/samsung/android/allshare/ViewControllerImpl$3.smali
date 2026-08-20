.class Lcom/samsung/android/allshare/ViewControllerImpl$3;
.super Landroid/os/Handler;
.source "ViewControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ViewControllerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ViewControllerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ViewControllerImpl;

    .line 705
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 708
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 710
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "ViewControllerImpl"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_12c

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewControl] Event : Others : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 712
    :sswitch_26
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fputmIsConnected(Lcom/samsung/android/allshare/ViewControllerImpl;Z)V

    .line 714
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_12b

    .line 715
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_12b

    .line 756
    :sswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ViewControl] Event : IAPP_EXIT arg : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fputmIsConnected(Lcom/samsung/android/allshare/ViewControllerImpl;Z)V

    .line 760
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_7a

    .line 761
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    if-eqz v0, :cond_12b

    .line 762
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_12b

    .line 765
    :cond_7a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_12b

    .line 766
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    if-eqz v0, :cond_12b

    .line 767
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_12b

    .line 744
    :sswitch_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewControl] Event : IAPP_AUTHENTICATION_TIMEOUT arg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fputmIsConnected(Lcom/samsung/android/allshare/ViewControllerImpl;Z)V

    .line 749
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_12b

    .line 750
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_12b

    .line 721
    :sswitch_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ViewControl] Event : IAPP_AUTHENTICATION arg : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_ff

    .line 723
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fputmIsConnected(Lcom/samsung/android/allshare/ViewControllerImpl;Z)V

    .line 725
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_12b

    .line 726
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_12b

    .line 729
    :cond_ff
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_108

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12b

    .line 731
    :cond_108
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fputmIsConnected(Lcom/samsung/android/allshare/ViewControllerImpl;Z)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmIAppComponent(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/IAppControlAPI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/allshare/IAppControlAPI;->setTouchGestureTouchMode(I)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    if-eqz v0, :cond_12b

    .line 736
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$3;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 782
    :cond_12b
    :goto_12b
    return-void

    :sswitch_data_12c
    .sparse-switch
        0x64 -> :sswitch_c8
        0x65 -> :sswitch_95
        0x12c -> :sswitch_42
        0x270f -> :sswitch_26
    .end sparse-switch
.end method
