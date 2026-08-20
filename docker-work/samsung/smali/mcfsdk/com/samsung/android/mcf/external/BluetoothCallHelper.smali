.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;,
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;,
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
    }
.end annotation


# static fields
.field public static Manufacture:I = 0x75

.field public static final PAIRED_AND_SYNCED_DEVICES:I = 0x1

.field public static final PAIRED_DEVICES_ONLY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothCallHelper"

.field public static final scanMask:[B

.field public static final scanfilter:[B


# instance fields
.field private mBondedCallDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field private mSyncedCallDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xa

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->scanfilter:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->scanMask:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x42t
        0x9t
        -0x7ft
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
    .end array-data

    nop

    :array_1c
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$a;-><init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_2f

    const-string p1, "BluetoothCallHelper"

    const-string p2, "checkBondedDeviceList"

    const-string p3, "Fail : can\'t access bluetooth Adapter"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateDeviceList(ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V

    iget-boolean p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    if-nez p1, :cond_45

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_45
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateBondedDeviceList()V

    return-void
.end method

.method private static getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_12

    const-string p0, "BT_MAC_BYTE_IS_NULL"

    return-object p0

    :cond_12
    const/4 v2, 0x6

    new-array v3, v2, [B

    const/4 v4, 0x1

    move v5, v4

    :goto_17
    if-ge v5, v2, :cond_29

    aget-byte v6, v1, v5

    and-int/lit8 v7, v6, 0x7f

    shl-int/2addr v7, v4

    and-int/lit16 v6, v6, 0x80

    shr-int/lit8 v6, v6, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_29
    const/4 v4, 0x0

    aget-byte v1, v1, v4

    or-int/lit8 v1, v1, -0x40

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " //"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BluetoothCallHelper"

    const-string v2, "getBleMacAddrFromBt :"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isCallSupportDevice([B)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6b

    array-length v1, p0

    const/16 v2, 0x9

    if-ge v1, v2, :cond_9

    goto :goto_6b

    :cond_9
    new-instance v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;-><init>([B)V

    invoke-virtual {v1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->b()[B

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " , deviceID:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BluetoothCallHelper"

    const-string v3, "isCallSupportDevice"

    invoke-static {v2, v3, p0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget-byte p0, v1, v0

    if-nez p0, :cond_47

    return v0

    :cond_47
    const/4 v4, 0x1

    if-ne p0, v4, :cond_6b

    aget-byte v1, v1, v4

    if-le v1, v4, :cond_6b

    if-ne p0, v4, :cond_5e

    const/16 v0, 0x16

    if-lt v1, v0, :cond_5e

    const/16 v0, 0x18

    if-gt v1, v0, :cond_5e

    const-string p0, "Beans"

    :goto_5a
    invoke-static {v2, v3, p0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5e
    if-ne p0, v4, :cond_6a

    const/4 p0, 0x2

    if-lt v1, p0, :cond_6a

    const/16 p0, 0xa

    if-gt v1, p0, :cond_6a

    const-string p0, "buds+"

    goto :goto_5a

    :cond_6a
    return v4

    :cond_6b
    :goto_6b
    return v0
.end method

.method private updateBondedDeviceList()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    if-eqz v3, :cond_1b

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->isCallSupportDevice([B)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    iget-object v3, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">> calldevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCallHelper"

    const-string v2, "updateBondedDeviceList :"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDeviceList(ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateSyncedDeviceList()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    if-eqz v3, :cond_1b

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->isCallSupportDevice([B)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    iget-object v3, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">> calldevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCallHelper"

    const-string v2, "updateSyncedDeviceList :"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getBluetoothDevice"

    const-string v2, "BluetoothCallHelper"

    if-eqz v0, :cond_1e

    const-string v0, "found in bonded Calldevice list "

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "found in Synced CallDevice list "

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    :cond_38
    const-string p1, "can not found bluetooth Device"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBondedCallDevices()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothCallHelper"

    const-string v1, "getBondedCallDevices"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSyncedCallDevices()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothCallHelper"

    const-string v1, "getSyncedCallDevices"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasBondedCallDevice()Z
    .registers 4

    const-string v0, "BluetoothCallHelper"

    const-string v1, "hasBondedCallDevice"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSyncedCallDevice()Z
    .registers 4

    const-string v0, "BluetoothCallHelper"

    const-string v1, "hasSyncedCallDevice"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$updateDeviceList$0$com-samsung-android-mcf-external-BluetoothCallHelper(ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateBondedDeviceList()V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_22

    iget-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    const-string v0, "updateDeviceList"

    const-string v1, "BluetoothCallHelper"

    if-nez p1, :cond_1d

    const-string p1, "BLUETOOTH_PRIVILEGED permission Granted "

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateSyncedDeviceList()V

    goto :goto_22

    :cond_1d
    const-string p1, "To get synced device list , need BLUETOOTH_PRIVILEGED permission"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    invoke-interface {p2}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;->onDataReady()V

    return-void
.end method

.method public release()V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_18
    return-void
.end method
