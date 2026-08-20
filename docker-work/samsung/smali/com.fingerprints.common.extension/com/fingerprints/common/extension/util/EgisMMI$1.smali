.class Lcom/fingerprints/common/extension/util/EgisMMI$1;
.super Landroid/os/Handler;
.source "EgisMMI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/common/extension/util/EgisMMI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/common/extension/util/EgisMMI;


# direct methods
.method constructor <init>(Lcom/fingerprints/common/extension/util/EgisMMI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/fingerprints/common/extension/util/EgisMMI;

    .line 174
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/EgisMMI$1;->this$0:Lcom/fingerprints/common/extension/util/EgisMMI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg.arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg.arg2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RbsLibBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI$1;->this$0:Lcom/fingerprints/common/extension/util/EgisMMI;

    iget v2, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/fingerprints/common/extension/util/EgisMMI;->mImageQtyScore:I
    invoke-static {v0, v2}, Lcom/fingerprints/common/extension/util/EgisMMI;->access$002(Lcom/fingerprints/common/extension/util/EgisMMI;I)I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mImageQtyScore = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/fingerprints/common/extension/util/EgisMMI$1;->this$0:Lcom/fingerprints/common/extension/util/EgisMMI;

    # getter for: Lcom/fingerprints/common/extension/util/EgisMMI;->mImageQtyScore:I
    invoke-static {v2}, Lcom/fingerprints/common/extension/util/EgisMMI;->access$000(Lcom/fingerprints/common/extension/util/EgisMMI;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI$1;->this$0:Lcom/fingerprints/common/extension/util/EgisMMI;

    # getter for: Lcom/fingerprints/common/extension/util/EgisMMI;->mImageQtyScore:I
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/EgisMMI;->access$000(Lcom/fingerprints/common/extension/util/EgisMMI;)I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_6a

    .line 183
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI$1;->this$0:Lcom/fingerprints/common/extension/util/EgisMMI;

    # getter for: Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/EgisMMI;->access$100(Lcom/fingerprints/common/extension/util/EgisMMI;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    goto :goto_74

    .line 185
    :cond_6a
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI$1;->this$0:Lcom/fingerprints/common/extension/util/EgisMMI;

    # getter for: Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/EgisMMI;->access$100(Lcom/fingerprints/common/extension/util/EgisMMI;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 186
    :goto_74
    return-void
.end method
