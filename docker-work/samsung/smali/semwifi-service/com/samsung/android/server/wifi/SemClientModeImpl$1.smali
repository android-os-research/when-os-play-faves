.class Lcom/samsung/android/server/wifi/SemClientModeImpl$1;
.super Landroid/database/ContentObserver;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Handler;)V
    .registers 3

    .line 374
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 377
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi_adps_enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    move v3, v1

    :cond_1d
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 379
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const p1, 0x20137

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(I)V

    return-void
.end method
