.class Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;
.super Ljava/lang/Thread;
.source "FocalFpTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/common/extension/util/FocalFpTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "focalEnrollTest"
.end annotation


# instance fields
.field private iscancelfig:Z

.field final synthetic this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;


# direct methods
.method private constructor <init>(Lcom/fingerprints/common/extension/util/FocalFpTest;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 294
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->iscancelfig:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/fingerprints/common/extension/util/FocalFpTest;Lcom/fingerprints/common/extension/util/FocalFpTest$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;
    .param p2, "x1"    # Lcom/fingerprints/common/extension/util/FocalFpTest$1;

    .line 293
    invoke-direct {p0, p1}, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;-><init>(Lcom/fingerprints/common/extension/util/FocalFpTest;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .registers 6

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->iscancelfig:Z

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interrupt iscancelfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->iscancelfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocalFpTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$400(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/focaltech/mmitest/FocalFingerprintManager;

    move-result-object v0

    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B
    invoke-static {v2}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$200(Lcom/fingerprints/common/extension/util/FocalFpTest;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I
    invoke-static {v3}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$300(Lcom/fingerprints/common/extension/util/FocalFpTest;)[I

    move-result-object v3

    const/16 v4, 0x4016

    invoke-virtual {v0, v4, v2, v3}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    .line 300
    const-string v0, "MMIcancel success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public run()V
    .registers 6

    .line 304
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$400(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/focaltech/mmitest/FocalFingerprintManager;

    move-result-object v0

    const-string v1, "FocalFpTest"

    if-nez v0, :cond_10

    .line 305
    const-string v0, "Focal fingerprint manger is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 308
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->iscancelfig:Z

    .line 309
    const-string v0, "FocalENrollTest start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_18
    iget-boolean v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->iscancelfig:Z

    if-eqz v0, :cond_8f

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run iscancelfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->iscancelfig:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # invokes: Lcom/fingerprints/common/extension/util/FocalFpTest;->focalDetect_finger()V
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$500(Lcom/fingerprints/common/extension/util/FocalFpTest;)V

    .line 313
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # invokes: Lcom/fingerprints/common/extension/util/FocalFpTest;->focal_Scene()V
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$600(Lcom/fingerprints/common/extension/util/FocalFpTest;)V

    .line 314
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;
    invoke-static {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$400(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/focaltech/mmitest/FocalFingerprintManager;

    move-result-object v0

    const/16 v2, 0x4103

    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B
    invoke-static {v3}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$200(Lcom/fingerprints/common/extension/util/FocalFpTest;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I
    invoke-static {v4}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$300(Lcom/fingerprints/common/extension/util/FocalFpTest;)[I

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 315
    .local v0, "err":I
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B
    invoke-static {v2}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$200(Lcom/fingerprints/common/extension/util/FocalFpTest;)[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    sput v2, Lcom/fingerprints/common/extension/util/FocalFpTest;->quilty:I

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image quality ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/fingerprints/common/extension/util/FocalFpTest;->quilty:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->this$0:Lcom/fingerprints/common/extension/util/FocalFpTest;

    # getter for: Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/fingerprints/common/extension/util/FocalFpTest;->access$700(Lcom/fingerprints/common/extension/util/FocalFpTest;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest$1;

    invoke-direct {v4, p0}, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest$1;-><init>(Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    const-string v2, "focalEnrollTest success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iput-boolean v3, p0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->iscancelfig:Z

    goto :goto_18

    .line 330
    .end local v0    # "err":I
    :cond_8f
    return-void
.end method
