.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x24

    if-eqz p2, :cond_15

    .line 167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(II)V

    goto :goto_23

    :cond_15
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 168
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(II)V

    :cond_23
    :goto_23
    return-void
.end method
