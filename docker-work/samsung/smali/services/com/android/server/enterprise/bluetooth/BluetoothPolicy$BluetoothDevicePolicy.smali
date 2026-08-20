.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;
.super Lcom/android/server/enterprise/BlackWhiteListPolicy;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothDevicePolicy"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1705
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 1706
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isPolicyActive(I)Z
    .registers 4

    .line 1710
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p0

    const-string v0, "BLUETOOTH"

    const-string v1, "devicePolicyEnabled"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1713
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
