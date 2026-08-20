.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 153
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_3b

    .line 154
    iget-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-$$Nest$fgetmRestart(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z

    move-result p2

    if-eqz p2, :cond_3b

    const-string p1, "BluetoothPolicyService"

    const-string p2, "***** Restarting Bluetooth *****"

    .line 155
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-$$Nest$fputmRestart(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)V

    .line 157
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_60

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_60

    :cond_3b
    const/16 p2, 0xc

    if-ne p1, p2, :cond_60

    .line 163
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_60

    .line 164
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-$$Nest$mdisableDesktopConnectivity(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    goto :goto_60

    :cond_4d
    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const-string p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 169
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 170
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V

    :cond_60
    :goto_60
    return-void
.end method
