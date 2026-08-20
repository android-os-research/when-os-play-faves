.class public Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
.super Ljava/lang/Object;
.source "BluetoothManagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothManagerAdapter"

.field public static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    if-nez v1, :cond_16

    .line 58
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mContext:Landroid/content/Context;

    .line 59
    new-instance p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;-><init>()V

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    :cond_16
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public removeBond(Ljava/lang/String;)Z
    .registers 4

    .line 69
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 71
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 73
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 74
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return p0

    :catch_25
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothManagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method
