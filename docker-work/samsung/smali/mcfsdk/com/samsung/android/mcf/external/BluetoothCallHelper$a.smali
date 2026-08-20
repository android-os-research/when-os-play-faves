.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/external/BluetoothCallHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$a;->a:Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1c

    const/16 v0, 0xa

    if-ne p1, v0, :cond_41

    :cond_1c
    const-string p1, "EXTRA_DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changed bonded device list :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothCallHelper"

    const-string v0, "mBroadcastReceiver"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$a;->a:Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    # invokes: Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateBondedDeviceList()V
    invoke-static {p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->access$000(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V

    :cond_41
    return-void
.end method
