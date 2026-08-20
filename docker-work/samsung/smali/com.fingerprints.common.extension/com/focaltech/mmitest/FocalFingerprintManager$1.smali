.class Lcom/focaltech/mmitest/FocalFingerprintManager$1;
.super Ljava/lang/Object;
.source "FocalFingerprintManager.java"

# interfaces
.implements Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$executeCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/focaltech/mmitest/FocalFingerprintManager;

.field final synthetic val$Ret:[I

.field final synthetic val$dLen:[I

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/focaltech/mmitest/FocalFingerprintManager;[B[I[I)V
    .registers 5
    .param p1, "this$0"    # Lcom/focaltech/mmitest/FocalFingerprintManager;

    .line 57
    iput-object p1, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->this$0:Lcom/focaltech/mmitest/FocalFingerprintManager;

    iput-object p2, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$data:[B

    iput-object p3, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$dLen:[I

    iput-object p4, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$Ret:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "ret_code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "ret_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$data:[B

    array-length v0, v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2a

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 62
    iget-object v1, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$data:[B

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 64
    .end local v0    # "i":I
    :cond_22
    iget-object v0, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$dLen:[I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    aput v1, v0, v2

    .line 66
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValue data[0]: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$data:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocalFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValue ret_code: 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/focaltech/mmitest/FocalFingerprintManager$1;->val$Ret:[I

    aput p1, v0, v2

    .line 69
    return-void
.end method
