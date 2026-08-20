.class public Lcom/android/server/deviceidle/BluetoothConstraint$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/deviceidle/BluetoothConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/deviceidle/BluetoothConstraint;


# direct methods
.method public constructor <init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 129
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->-$$Nest$fgetmLocalService(Lcom/android/server/deviceidle/BluetoothConstraint;)Lcom/android/server/DeviceIdleInternal;

    move-result-object p0

    const-string p1, "bluetooth"

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->exitIdle(Ljava/lang/String;)V

    goto :goto_1d

    .line 131
    :cond_18
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->-$$Nest$mupdateAndReportActiveLocked(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    :goto_1d
    return-void
.end method
