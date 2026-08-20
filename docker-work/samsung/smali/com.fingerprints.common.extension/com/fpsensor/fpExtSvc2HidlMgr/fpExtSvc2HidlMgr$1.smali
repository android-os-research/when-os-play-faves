.class Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$1;
.super Ljava/lang/Object;
.source "fpExtSvc2HidlMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->serviceDied(J)V
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

    .line 63
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$1;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$1;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # invokes: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->getHidlSvc()Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    invoke-static {}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$100()Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    move-result-object v1

    # setter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    invoke-static {v0, v1}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$002(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;)Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fpHidlSvc reget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$1;->this$0:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    # getter for: Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    invoke-static {v1}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->access$000(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v1, " ok"

    goto :goto_21

    :cond_1f
    const-string v1, " failed"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpCoreHidlSvc2-Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
