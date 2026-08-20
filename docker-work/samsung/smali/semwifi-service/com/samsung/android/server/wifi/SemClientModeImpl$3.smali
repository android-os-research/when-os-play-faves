.class Lcom/samsung/android/server/wifi/SemClientModeImpl$3;
.super Ljava/lang/Object;
.source "SemClientModeImpl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;->registerForWifiMonitorEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 998
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .registers 5

    .line 1001
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 1002
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->increaseEventCounter(I)V

    .line 1005
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v0, 0x11

    const/4 v1, 0x2

    .line 1006
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForHidlDeath(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 1005
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    :cond_3e
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .registers 4

    .line 1018
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " down, isActive: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsActive(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public onUp(Ljava/lang/String;)V
    .registers 4

    .line 1013
    invoke-static {}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " up, isActive: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$3;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsActive(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    :cond_29
    return-void
.end method
