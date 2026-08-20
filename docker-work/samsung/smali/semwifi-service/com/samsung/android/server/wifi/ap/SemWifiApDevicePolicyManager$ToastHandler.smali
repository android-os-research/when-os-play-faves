.class Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;
.super Landroid/os/Handler;
.source "SemWifiApDevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;Landroid/os/Looper;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 70
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    goto :goto_2b

    .line 76
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x104062e

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2b

    .line 72
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x104048d

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2b
    return-void
.end method
