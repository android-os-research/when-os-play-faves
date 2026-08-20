.class Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;
.super Ljava/lang/Object;
.source "ChiponeFpTest.java"

# interfaces
.implements Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/common/extension/util/ChiponeFpTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;


# direct methods
.method constructor <init>(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    .line 124
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerDetected(I)V
    .registers 2
    .param p1, "status"    # I

    .line 158
    return-void
.end method

.method public onImgCaptured(I[B)V
    .registers 8
    .param p1, "iCaptureSatus"    # I
    .param p2, "arg0"    # [B

    .line 126
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "liucapturecapture Image error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v1, -0x7e0

    const/4 v2, 0x1

    if-eqz p2, :cond_36

    if-nez p1, :cond_36

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRawImageCaptured, image ok, len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    iput v2, v3, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->touchTestResult:I

    .line 130
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    iget-object v3, v3, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1$1;

    invoke-direct {v4, p0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1$1;-><init>(Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    .line 143
    :cond_36
    const-string v3, "onRawImageCaptured, failed image data is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    const/4 v4, 0x0

    iput v4, v3, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->touchTestResult:I

    .line 146
    if-eq v1, p1, :cond_4b

    .line 148
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v3}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->access$100(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 151
    :cond_4b
    :goto_4b
    if-ne v1, p1, :cond_5c

    .line 152
    const-string v1, " user cancel touch test, please touch button again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->access$100(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 154
    return-void

    .line 156
    :cond_5c
    return-void
.end method

.method public onPassiveRspRcved([B)V
    .registers 2
    .param p1, "rsp"    # [B

    .line 161
    return-void
.end method
