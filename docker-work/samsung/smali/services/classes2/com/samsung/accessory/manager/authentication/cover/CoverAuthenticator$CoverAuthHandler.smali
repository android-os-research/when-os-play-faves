.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
.super Landroid/os/Handler;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoverAuthHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V
    .registers 4

    .line 697
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 698
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 703
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_e8

    goto/16 :goto_e6

    .line 754
    :pswitch_2a
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->setAuthenticatedHall(I)V

    goto/16 :goto_e6

    .line 720
    :pswitch_39
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverAuthHandler(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 721
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_61

    .line 722
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmFailuresCount(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 723
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v4, 0x5b

    invoke-virtual {v0, v4, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 724
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v4, "authentication is timed out!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_61
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmSensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 728
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 p1, 0x30

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msendCoverStateToSensorhub(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V

    goto/16 :goto_e6

    .line 733
    :cond_72
    :pswitch_72
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 736
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_93

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 737
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mgetCoverSwitchState(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v0

    if-lt v0, v2, :cond_93

    .line 738
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    move v0, v2

    goto :goto_94

    :cond_93
    move v0, v3

    .line 742
    :goto_94
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mgetCoverSwitchState(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v4

    if-lt v4, v2, :cond_aa

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_a8

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result p1

    if-gt p1, v2, :cond_aa

    :cond_a8
    if-eqz v0, :cond_e6

    .line 745
    :cond_aa
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstopAuthAlarm(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 746
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget v0, p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/4 v1, 0x0

    if-nez v0, :cond_ba

    .line 747
    invoke-static {p1, v3, v3, v1, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msetCoverVerified(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_bd

    .line 749
    :cond_ba
    invoke-static {p1, v3, v1, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msetFriendsVerified(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 750
    :goto_bd
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_e6

    .line 709
    :pswitch_c5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V

    goto :goto_e6

    .line 712
    :pswitch_cb
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$misAuthenticationBlocked(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 713
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstopAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    goto :goto_e6

    .line 715
    :cond_db
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    goto :goto_e6

    .line 706
    :pswitch_e1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    :cond_e6
    :goto_e6
    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_cb
        :pswitch_c5
        :pswitch_72
        :pswitch_39
        :pswitch_39
        :pswitch_2a
    .end packed-switch
.end method
