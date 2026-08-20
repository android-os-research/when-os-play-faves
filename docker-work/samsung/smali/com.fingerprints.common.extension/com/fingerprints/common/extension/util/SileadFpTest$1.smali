.class Lcom/fingerprints/common/extension/util/SileadFpTest$1;
.super Lcom/silead/manager/FingerManager$TestCmdCallback;
.source "SileadFpTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/common/extension/util/SileadFpTest;->setCallBack(Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;


# direct methods
.method constructor <init>(Lcom/fingerprints/common/extension/util/SileadFpTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/fingerprints/common/extension/util/SileadFpTest;

    .line 54
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;

    invoke-direct {p0}, Lcom/silead/manager/FingerManager$TestCmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTestResult(ILjava/lang/Object;)V
    .registers 7
    .param p1, "cmdId"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_26

    instance-of v2, p2, Lcom/silead/manager/FingerResult;

    if-eqz v2, :cond_26

    .line 58
    move-object v2, p2

    check-cast v2, Lcom/silead/manager/FingerResult;

    .line 59
    .local v2, "rsp":Lcom/silead/manager/FingerResult;
    invoke-virtual {v2}, Lcom/silead/manager/FingerResult;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_1d

    .line 60
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v3}, Lcom/fingerprints/common/extension/util/SileadFpTest;->access$000(Lcom/fingerprints/common/extension/util/SileadFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    goto :goto_26

    .line 62
    :cond_1d
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v3}, Lcom/fingerprints/common/extension/util/SileadFpTest;->access$000(Lcom/fingerprints/common/extension/util/SileadFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 65
    .end local v2    # "rsp":Lcom/silead/manager/FingerResult;
    :cond_26
    :goto_26
    const/4 v2, 0x2

    if-ne p1, v2, :cond_49

    instance-of v2, p2, Lcom/silead/manager/FingerDeadPixelResult;

    if-eqz v2, :cond_49

    .line 66
    move-object v2, p2

    check-cast v2, Lcom/silead/manager/FingerDeadPixelResult;

    .line 67
    .local v2, "rsp":Lcom/silead/manager/FingerDeadPixelResult;
    invoke-virtual {v2}, Lcom/silead/manager/FingerDeadPixelResult;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_40

    .line 68
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v3}, Lcom/fingerprints/common/extension/util/SileadFpTest;->access$000(Lcom/fingerprints/common/extension/util/SileadFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    goto :goto_49

    .line 70
    :cond_40
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v3}, Lcom/fingerprints/common/extension/util/SileadFpTest;->access$000(Lcom/fingerprints/common/extension/util/SileadFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 73
    .end local v2    # "rsp":Lcom/silead/manager/FingerDeadPixelResult;
    :cond_49
    :goto_49
    const/16 v2, 0x14

    if-ne p1, v2, :cond_6d

    instance-of v2, p2, Lcom/silead/manager/FingerImageResult;

    if-eqz v2, :cond_6d

    .line 74
    move-object v2, p2

    check-cast v2, Lcom/silead/manager/FingerImageResult;

    .line 75
    .local v2, "rsp":Lcom/silead/manager/FingerImageResult;
    invoke-virtual {v2}, Lcom/silead/manager/FingerImageResult;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_64

    .line 76
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v1}, Lcom/fingerprints/common/extension/util/SileadFpTest;->access$000(Lcom/fingerprints/common/extension/util/SileadFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    goto :goto_6d

    .line 78
    :cond_64
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;->this$0:Lcom/fingerprints/common/extension/util/SileadFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/SileadFpTest;->access$000(Lcom/fingerprints/common/extension/util/SileadFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 81
    .end local v2    # "rsp":Lcom/silead/manager/FingerImageResult;
    :cond_6d
    :goto_6d
    return-void
.end method
