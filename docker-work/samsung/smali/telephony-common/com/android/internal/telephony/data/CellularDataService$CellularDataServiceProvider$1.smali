.class Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;
.super Landroid/os/Handler;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/data/CellularDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

.field final synthetic blacklist val$this$0:Lcom/android/internal/telephony/data/CellularDataService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/data/CellularDataService;)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iput-object p3, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->val$this$0:Lcom/android/internal/telephony/data/CellularDataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->-$$Nest$fgetmCallbackMap(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 82
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 83
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_ac

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/data/CellularDataService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService;->-$$Nest$mloge(Lcom/android/internal/telephony/data/CellularDataService;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 125
    :pswitch_33
    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_42

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto/16 :goto_ab

    .line 128
    :cond_42
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyApnUnthrottled(Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 122
    :pswitch_4b
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->-$$Nest$mtoResultCode(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Ljava/lang/Throwable;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataServiceCallback;->onHandoverCancelled(I)V

    goto :goto_ab

    .line 119
    :pswitch_57
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->-$$Nest$mtoResultCode(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Ljava/lang/Throwable;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataServiceCallback;->onHandoverStarted(I)V

    goto :goto_ab

    .line 116
    :pswitch_63
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyDataCallListChanged(Ljava/util/List;)V

    goto :goto_ab

    .line 108
    :pswitch_6d
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_72

    goto :goto_73

    :cond_72
    move v3, v4

    .line 111
    :goto_73
    iget-object p0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_7a

    check-cast p0, Ljava/util/List;

    goto :goto_7c

    .line 112
    :cond_7a
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 107
    :goto_7c
    invoke-virtual {v0, v3, p0}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    goto :goto_ab

    .line 102
    :pswitch_80
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_85

    goto :goto_86

    :cond_85
    move v3, v4

    :goto_86
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    goto :goto_ab

    .line 97
    :pswitch_8a
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_8f

    goto :goto_90

    :cond_8f
    move v3, v4

    :goto_90
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    goto :goto_ab

    .line 92
    :pswitch_94
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_99

    goto :goto_9a

    :cond_99
    move v3, v4

    :goto_9a
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    goto :goto_ab

    .line 85
    :pswitch_9e
    iget-object p0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/DataCallResponse;

    .line 86
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_a7

    goto :goto_a8

    :cond_a7
    move v3, v4

    :goto_a8
    invoke-virtual {v0, v3, p0}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    :goto_ab
    return-void

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_94
        :pswitch_8a
        :pswitch_80
        :pswitch_6d
        :pswitch_63
        :pswitch_57
        :pswitch_4b
        :pswitch_33
    .end packed-switch
.end method
