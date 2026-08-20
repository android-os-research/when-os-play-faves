.class Landroid/speech/RecognitionService$1;
.super Landroid/os/Handler;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/RecognitionService;


# direct methods
.method constructor blacklist <init>(Landroid/speech/RecognitionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/speech/RecognitionService;

    .line 98
    iput-object p1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_4c

    .line 122
    :pswitch_6
    iget-object v0, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchTriggerModelDownload(Landroid/speech/RecognitionService;Landroid/content/Intent;)V

    goto :goto_4c

    .line 116
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 118
    .local v0, "intentAndListener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;>;"
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/speech/IRecognitionSupportCallback;

    invoke-static {v1, v2, v3}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchCheckRecognitionSupport(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    .line 120
    goto :goto_4c

    .line 113
    .end local v0    # "intentAndListener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;>;"
    :pswitch_22
    iget-object v0, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchClearCallback(Landroid/speech/RecognitionService;)V

    .line 114
    goto :goto_4c

    .line 110
    :pswitch_28
    iget-object v0, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchCancel(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    .line 111
    goto :goto_4c

    .line 107
    :pswitch_32
    iget-object v0, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    invoke-static {v0, v1}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchStopListening(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    .line 108
    goto :goto_4c

    .line 103
    :pswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/RecognitionService$StartListeningArgs;

    .line 104
    .local v0, "args":Landroid/speech/RecognitionService$StartListeningArgs;
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    iget-object v4, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {v1, v2, v3, v4}, Landroid/speech/RecognitionService;->-$$Nest$mdispatchStartListening(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 105
    nop

    .line 125
    .end local v0    # "args":Landroid/speech/RecognitionService$StartListeningArgs;
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_32
        :pswitch_28
        :pswitch_22
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
