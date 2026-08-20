.class Lcom/fingerprints/common/extension/util/ChiponeFpTest$1$1;
.super Ljava/lang/Object;
.source "ChiponeFpTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->onImgCaptured(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;


# direct methods
.method constructor <init>(Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;

    .line 130
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1$1;->this$1:Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1$1;->this$1:Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;

    iget-object v0, v0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->access$000(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->getImgQuality()[I

    move-result-object v0

    .line 133
    .local v0, "quality":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageQualitycoverage,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",quality"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FPMMITEST_CHIPONE"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    aget v1, v0, v3

    const/16 v3, 0xa

    if-lt v1, v3, :cond_46

    .line 136
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1$1;->this$1:Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;

    iget-object v1, v1, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v1}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->access$100(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    goto :goto_52

    .line 138
    :cond_46
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1$1;->this$1:Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;

    iget-object v1, v1, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v1}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->access$100(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 140
    :goto_52
    return-void
.end method
