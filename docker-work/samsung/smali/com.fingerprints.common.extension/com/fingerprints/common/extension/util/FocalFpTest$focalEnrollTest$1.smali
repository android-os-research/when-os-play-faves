.class Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest$1;
.super Ljava/lang/Object;
.source "FocalFpTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;


# direct methods
.method constructor <init>(Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;)V
    .registers 2
    .param p1, "this$1"    # Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

    .line 317
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest$1;->this$1:Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 319
    sget v0, Lcom/fingerprints/common/extension/util/FocalFpTest;->quilty:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_13

    .line 320
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest$1;->this$1:Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

    iget-object v0, v0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$100(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    goto :goto_1f

    .line 322
    :cond_13
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest$1;->this$1:Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

    iget-object v0, v0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$100(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 324
    :goto_1f
    return-void
.end method
