.class Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;
.super Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;
.source "fpExtSvc2HidlMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;


# direct methods
.method constructor <init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)V
    .registers 2
    .param p1, "this$0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 92
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    invoke-direct {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommonPassiveRsp(Ljava/util/ArrayList;I)V
    .registers 5
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 97
    .local p1, "arg0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommonPassiveRsp,len is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpCoreHidlSvc2-Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # getter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
    invoke-static {v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$200(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    .line 103
    return-void
.end method

.method public onFingerDetected(I)V
    .registers 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerDetected, result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpCoreHidlSvc2-Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # getter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
    invoke-static {v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$200(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 110
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # getter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
    invoke-static {v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$200(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;->onFingerDetected(I)V

    .line 111
    :cond_29
    return-void
.end method

.method public onRawImageCaptured(ILjava/util/ArrayList;I)V
    .registers 8
    .param p1, "captureResult"    # I
    .param p3, "img_data_len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 117
    .local p2, "rawImageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRawImageCaptured status, img_data_len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpCoreHidlSvc2-Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # getter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
    invoke-static {v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$200(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 119
    const/16 v0, -0x7e0

    if-ne v0, p1, :cond_30

    .line 120
    const/4 p2, 0x0

    .line 121
    const/4 p3, 0x0

    .line 123
    :cond_30
    const/4 v0, 0x0

    .line 125
    .local v0, "byteImage":[B
    if-nez p1, :cond_55

    if-eqz p2, :cond_55

    if-lez p3, :cond_55

    .line 127
    :try_start_37
    new-array v2, p3, [B

    move-object v0, v2

    .line 128
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_3b
    if-ge v2, p3, :cond_55

    .line 129
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_49} :catch_4c

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 132
    .end local v2    # "idx":I
    :catch_4c
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "capture error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 135
    const/4 p1, -0x1

    goto :goto_56

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_55
    nop

    .line 138
    :goto_56
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # getter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
    invoke-static {v1}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$200(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;->onImgCaptured(I[B)V

    .line 139
    .end local v0    # "byteImage":[B
    goto :goto_65

    .line 140
    :cond_60
    const-string v0, "onRawImageCaptured but theEventListener is null, discard this msg"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_65
    return-void
.end method
