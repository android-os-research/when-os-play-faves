.class Lcom/fingerprints/common/extension/util/FocalFpTest$1;
.super Landroid/os/Handler;
.source "FocalFpTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/common/extension/util/FocalFpTest;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;


# direct methods
.method constructor <init>(Lcom/fingerprints/common/extension/util/FocalFpTest;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 116
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 118
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$100(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    if-nez v0, :cond_10

    .line 119
    const-string v0, "FocalFpTest"

    const-string v1, "FpMmiTestResultCallBack is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2c

    .line 127
    :pswitch_16
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$100(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 128
    goto :goto_2c

    .line 124
    :pswitch_21
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$100(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 125
    nop

    .line 132
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_16
    .end packed-switch
.end method
