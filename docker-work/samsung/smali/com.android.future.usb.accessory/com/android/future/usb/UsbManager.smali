.class public Lcom/android/future/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field private static final TAG:Ljava/lang/String; = "UsbManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/usb/IUsbManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/future/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 72
    return-void
.end method

.method public static getAccessory(Landroid/content/Intent;)Lcom/android/future/usb/UsbAccessory;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 94
    nop

    .line 95
    const-string v0, "accessory"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 96
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_d

    .line 97
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_d
    new-instance v1, Lcom/android/future/usb/UsbAccessory;

    invoke-direct {v1, v0}, Lcom/android/future/usb/UsbAccessory;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/future/usb/UsbManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/android/future/usb/UsbManager;

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/future/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    return-object v1
.end method


# virtual methods
.method public getAccessoryList()[Lcom/android/future/usb/UsbAccessory;
    .registers 6

    .line 111
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v1

    .line 112
    .local v1, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v1, :cond_a

    .line 113
    return-object v0

    .line 115
    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/future/usb/UsbAccessory;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/future/usb/UsbAccessory;

    invoke-direct {v4, v1}, Lcom/android/future/usb/UsbAccessory;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    aput-object v4, v2, v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_16

    return-object v2

    .line 117
    .end local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catch_16
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UsbManager"

    const-string v3, "RemoteException in getAccessoryList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return-object v0
.end method

.method public hasPermission(Lcom/android/future/usb/UsbAccessory;)Z
    .registers 11
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    new-instance v8, Landroid/hardware/usb/UsbAccessory;

    .line 153
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {v0, v8}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return v0

    .line 156
    :catch_25
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, 0x0

    return v1
.end method

.method public openAccessory(Lcom/android/future/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    new-instance v8, Landroid/hardware/usb/UsbAccessory;

    .line 132
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {v0, v8}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v0

    .line 135
    :catch_25
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in openAccessory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestPermission(Lcom/android/future/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    new-instance v8, Landroid/hardware/usb/UsbAccessory;

    .line 178
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/future/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-interface {v0, v8, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 184
    goto :goto_32

    .line 182
    :catch_2a
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method
