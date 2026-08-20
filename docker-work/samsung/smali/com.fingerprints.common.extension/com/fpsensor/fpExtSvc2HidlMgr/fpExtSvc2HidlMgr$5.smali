.class Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$5;
.super Ljava/lang/Object;
.source "fpExtSvc2HidlMgr.java"

# interfaces
.implements Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$ext_cmdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->extCmd([B)[B
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

    .line 307
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$5;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p2, "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpCoreHidlSvc2-Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-nez p1, :cond_40

    .line 314
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    .local v0, "array_size":I
    if-lez v0, :cond_3f

    .line 316
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$5;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    new-array v2, v0, [B

    # setter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->ext_cmd_result:[B
    invoke-static {v1, v2}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$302(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;[B)[B

    .line 317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    if-ge v1, v0, :cond_3f

    .line 319
    iget-object v2, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$5;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # getter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->ext_cmd_result:[B
    invoke-static {v2}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$300(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)[B

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 322
    .end local v0    # "array_size":I
    .end local v1    # "i":I
    :cond_3f
    goto :goto_45

    .line 323
    :cond_40
    const-string v0, "execute ext_cmd error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_45
    return-void
.end method
