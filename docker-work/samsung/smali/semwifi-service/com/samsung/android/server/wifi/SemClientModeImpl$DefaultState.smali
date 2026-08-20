.class Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;
.super Lcom/android/internal/util/State;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 866
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    const-string p0, "SemClientModeImpl"

    const-string v0, "entering DefaultState"

    .line 869
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 876
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_d0

    sparse-switch v0, :sswitch_data_de

    packed-switch v0, :pswitch_data_10c

    packed-switch v0, :pswitch_data_11e

    packed-switch v0, :pswitch_data_130

    packed-switch v0, :pswitch_data_13a

    packed-switch v0, :pswitch_data_142

    packed-switch v0, :pswitch_data_14a

    packed-switch v0, :pswitch_data_152

    packed-switch v0, :pswitch_data_15c

    .line 958
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! unhandled message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_d7

    .line 881
    :pswitch_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->reset()V

    .line 882
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmLastSubId(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 883
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsSupportAdps(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 884
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const v2, 0x20137

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->deferMessage(Landroid/os/Message;)V

    .line 886
    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_d7

    .line 878
    :pswitch_66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mresetFwLogFolder(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    goto/16 :goto_d7

    .line 902
    :sswitch_6d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_d7

    .line 903
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->handleEapMessage(IILjava/lang/String;)V

    goto :goto_d7

    .line 892
    :sswitch_7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_d7

    .line 893
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mprocessBigDataLogEvent(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Bundle;)V

    goto :goto_d7

    .line 907
    :sswitch_8f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_9c

    move v2, v1

    goto :goto_9d

    :cond_9c
    move v2, v3

    :goto_9d
    if-eq v0, v2, :cond_d7

    .line 908
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_a6

    move v3, v1

    :cond_a6
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    .line 909
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOptimizer()Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsImsCallEstablished(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setImsCallingState(Z)V

    goto :goto_d7

    .line 898
    :sswitch_bd
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v2, -0x4

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 899
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->deferMessage(Landroid/os/Message;)V

    goto :goto_d7

    .line 950
    :pswitch_c9
    :sswitch_c9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v2, -0x5

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    goto :goto_d7

    :cond_d0
    :sswitch_d0
    const-string v0, "SemClientModeImpl"

    const-string v2, "Error! empty message encountered"

    .line 955
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_d7
    :goto_d7
    :sswitch_d7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    return v1

    nop

    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_d0
        0x20049 -> :sswitch_c9
        0x20060 -> :sswitch_c9
        0x20065 -> :sswitch_bd
        0x200f3 -> :sswitch_8f
        0x20137 -> :sswitch_c9
        0x20208 -> :sswitch_d7
        0x2020a -> :sswitch_c9
        0x2400d -> :sswitch_7f
        0x2402b -> :sswitch_c9
        0x24051 -> :sswitch_6d
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x2006a
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x20087
        :pswitch_66
        :pswitch_38
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x201f4
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x24003
        :pswitch_c9
        :pswitch_c9
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x24006
        :pswitch_c9
        :pswitch_c9
    .end packed-switch

    :pswitch_data_14a
    .packed-switch 0x2400f
        :pswitch_c9
        :pswitch_c9
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x2402d
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
    .end packed-switch

    :pswitch_data_15c
    .packed-switch 0x2406a
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
    .end packed-switch
.end method
