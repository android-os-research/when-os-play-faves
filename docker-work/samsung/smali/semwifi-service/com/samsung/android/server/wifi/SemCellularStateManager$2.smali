.class Lcom/samsung/android/server/wifi/SemCellularStateManager$2;
.super Landroid/database/ContentObserver;
.source "SemCellularStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemCellularStateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/os/Handler;)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$2;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$2;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$2;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "data_roaming"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    move v4, v2

    :cond_17
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmIsUserDataRoamingEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings.Global.DATA_ROAMING: selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsUserDataRoamingEnabled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$2;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmIsUserDataRoamingEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemCellularStateManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$2;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    return-void
.end method
