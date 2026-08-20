.class Legistec/com/fplib/hidl/service/FPRbsHidlNative$1;
.super Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbsCallback$Stub;
.source "FPRbsHidlNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legistec/com/fplib/hidl/service/FPRbsHidlNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Legistec/com/fplib/hidl/service/FPRbsHidlNative;


# direct methods
.method constructor <init>(Legistec/com/fplib/hidl/service/FPRbsHidlNative;)V
    .registers 2
    .param p1, "this$0"    # Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    .line 76
    iput-object p1, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative$1;->this$0:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    invoke-direct {p0}, Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ipc_callback(IIILjava/util/ArrayList;I)V
    .registers 10
    .param p1, "event_id"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p5, "buffer_size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    .local p4, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ipc_callback() eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "buffer_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FPRbsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 82
    .local v0, "size":I
    new-array v1, v0, [B

    .line 83
    .local v1, "buffer2":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v0, :cond_4e

    .line 85
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 88
    .end local v2    # "i":I
    :cond_4e
    # getter for: Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mApHandler:Landroid/os/Handler;
    invoke-static {}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->access$000()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 89
    return-void
.end method
