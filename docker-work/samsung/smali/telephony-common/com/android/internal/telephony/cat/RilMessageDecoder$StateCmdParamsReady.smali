.class Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/telephony/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->-$$Nest$fgetmCurrentRilMessage(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->-$$Nest$fgetmCurrentRilMessage(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 156
    iget-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-static {p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->-$$Nest$fgetmCurrentRilMessage(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->-$$Nest$msendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 157
    iget-object p0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-static {p0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->-$$Nest$fgetmStateStart(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_4b

    .line 159
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    :goto_4b
    const/4 p0, 0x1

    return p0
.end method
