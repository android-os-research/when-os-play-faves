.class public Lcom/android/server/input/WirelessKeyboardMouseShare$2;
.super Landroid/content/BroadcastReceiver;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/WirelessKeyboardMouseShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .registers 2

    .line 1170
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 1175
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1177
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInitialized(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_4e

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 1178
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-nez p2, :cond_38

    .line 1179
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothAdapter;)V

    :cond_38
    const-string p2, "WirelessKeyboardMouseShare"

    const-string v1, "BluetoothAdapter.ACTION_STATE_CHANGED enabled, initailizing"

    .line 1181
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$minitializing(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    .line 1183
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 1184
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmInitialized(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    :cond_4e
    const/16 p2, 0xc

    if-ne p1, p2, :cond_70

    .line 1186
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 1187
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1188
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNotiTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1189
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()Z

    .line 1190
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    goto :goto_8b

    :cond_70
    const/16 p2, 0xa

    if-ne p1, p2, :cond_8b

    .line 1192
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    goto :goto_8b

    :cond_7a
    const-string p2, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 1194
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 1195
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToastDialog(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/ToastDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/input/ToastDialog;->dismissAlertDialogWKS()V

    :cond_8b
    :goto_8b
    return-void
.end method
