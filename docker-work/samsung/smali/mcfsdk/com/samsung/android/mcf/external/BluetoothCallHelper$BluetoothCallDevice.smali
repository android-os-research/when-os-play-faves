.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothCallDevice"
.end annotation


# instance fields
.field private bleScanAddress:Ljava/lang/String;

.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bleScanAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public getBleScanAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bleScanAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method
