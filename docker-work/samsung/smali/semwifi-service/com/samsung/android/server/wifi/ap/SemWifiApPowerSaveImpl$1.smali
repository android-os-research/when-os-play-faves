.class Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApPowerSaveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "SemWifiApPowerSaveImpl"

    if-eqz p2, :cond_20

    const-string p1, "plugged"

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$msendMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V

    goto :goto_6a

    :cond_20
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_39

    const-string p1, "Unplugged"

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V

    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$msendMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V

    goto :goto_6a

    :cond_39
    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    const-string p1, "Lcd ON"

    .line 102
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmIsLcdOn(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$msendMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V

    goto :goto_6a

    :cond_52
    const-string p2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const-string p1, "Lcd OFF"

    .line 106
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$fputmIsLcdOn(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->-$$Nest$msendMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V

    :cond_6a
    :goto_6a
    return-void
.end method
