.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;
.super Landroid/content/BroadcastReceiver;
.source "SemMobileWipsFrameworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SemMobileWipsFrameworkService"

    if-eqz v0, :cond_2a

    const-string v0, "reason"

    .line 328
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2a

    const-string v0, "close SemEmergencyConstants"

    .line 330
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmBootCompleted(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Z)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/16 v4, 0x1388

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mturnOnWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    :cond_2a
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 335
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p1, -0x1

    const-string v0, "wifi_state"

    .line 336
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 337
    iget-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p2, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Z)V

    if-ne p1, v1, :cond_4b

    const-string p1, "Wifi disabled"

    .line 339
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mturnOffWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    goto :goto_58

    :cond_4b
    const/4 p2, 0x3

    if-ne p1, p2, :cond_58

    const-string p1, "Wifi enabled, try to start wips service"

    .line 342
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mturnOnWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    :cond_58
    :goto_58
    return-void
.end method
