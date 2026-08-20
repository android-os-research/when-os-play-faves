.class public Lcom/android/server/usb/SemUsbBackend;
.super Ljava/lang/Object;
.source "SemUsbBackend.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SemUsbBackend"

.field public static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field public static final USB_PERSISTENT_DUALROLE_PROPERTY:Ljava/lang/String; = "persist.sys.usb.dualrole"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mIsUnlocked:Z

.field public mPort:Landroid/hardware/usb/UsbPort;

.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field public final mRestricted:Z

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/usb/SemUsbBackend;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "unlocked"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    .line 68
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/SemUsbBackend;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_usb_file_transfer"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/SemUsbBackend;->mRestricted:Z

    .line 70
    iput-object p2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 71
    iput-object p3, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 72
    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    return-void
.end method


# virtual methods
.method public final containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_8

    return v0

    :cond_8
    const/16 v1, 0x2c

    if-lez p0, :cond_15

    add-int/lit8 v2, p0, -0x1

    .line 261
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_15

    return v0

    .line 262
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p0, p2

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p0, p2, :cond_27

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v1, :cond_27

    return v0

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public getCurrentMode()I
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    const-string v1, "SemUsbBackend"

    if-eqz v0, :cond_15

    .line 102
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    const-string p0, "USB connection getCurrentMode : 1"

    .line 103
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 107
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB connection getCurrentMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public getSupportedPowerRole()I
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz p0, :cond_9

    .line 113
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getUsbDataMode()I
    .registers 4

    .line 126
    iget-boolean v0, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    const/4 v1, 0x0

    const-string v2, "SemUsbBackend"

    if-nez v0, :cond_d

    const-string p0, "USB connection getUsbDataMode : None"

    .line 127
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    const-string v0, "mtp"

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "USB connection getUsbDataMode : mtp"

    .line 130
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_1c
    const-string/jumbo v0, "ptp"

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "USB connection getUsbDataMode : ptp"

    .line 133
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :cond_2c
    const-string v0, "midi"

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p0, "USB connection getUsbDataMode : midi"

    .line 136
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x6

    return p0

    :cond_3b
    const-string v0, "mass_storage"

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string p0, "USB connection getUsbDataMode : mass_storage"

    .line 139
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    return p0

    :cond_4b
    const-string/jumbo v0, "sec_charging"

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string p0, "USB connection getUsbDataMode : sec_charging"

    .line 142
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5a
    const-string v0, "mtp,conn_gadget"

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6a

    const-string p0, "USB connection getUsbDataMode : mtp,conn_gadget"

    .line 145
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    return p0

    :cond_6a
    return v1
.end method

.method public final isFunctionEnabled(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "sys.usb.config"

    .line 255
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/SemUsbBackend;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isModeSupported(I)Z
    .registers 8

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isModeSupported - mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemUsbBackend"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v0, p0, Lcom/android/server/usb/SemUsbBackend;->mRestricted:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_23

    const/4 v3, 0x6

    if-eq v0, v3, :cond_23

    return v2

    .line 231
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isModeSupported - mPort : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    const/4 v3, 0x1

    if-eqz v0, :cond_9c

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/usb/SemUsbBackend;->modeToPower(I)I

    move-result v0

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isModeSupported - power : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p1, p1, 0xe

    const/4 v4, 0x2

    if-eqz p1, :cond_76

    .line 237
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {p0, v0, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result p0

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "We have a port and data, need to be in device mode :  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 242
    :cond_76
    iget-object p1, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {p1, v0, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 243
    invoke-virtual {p0, v0, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result p0

    if-eqz p0, :cond_87

    :cond_86
    move v2, v3

    .line 244
    :cond_87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No data needed, we can do this power mode in either device or host. : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9c
    and-int/lit8 p0, p1, 0x1

    if-eq p0, v3, :cond_a1

    move v2, v3

    .line 250
    :cond_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No port, support sink modes only : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isSupportPowerRole()Z
    .registers 2

    const-string/jumbo p0, "persist.sys.usb.dualrole"

    .line 119
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final modeToPower(I)I
    .registers 2

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x2

    :goto_6
    return p0
.end method

.method public setMode(I)V
    .registers 9

    .line 194
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "SemUsbBackend"

    if-eqz v0, :cond_a

    .line 195
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->rmSetNextUsbModeToDefault()V

    goto :goto_10

    :cond_a
    const-string/jumbo v0, "setMode : mDeviceManager is null"

    .line 197
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_10
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_53

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/usb/SemUsbBackend;->modeToPower(I)I

    move-result v2

    and-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_28

    .line 205
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v3

    goto :goto_29

    :cond_28
    const/4 v0, 0x2

    .line 207
    :goto_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMode : powerRole - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " /dataRole - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iget-object v5, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v0, v6}, Lcom/android/server/usb/UsbPortManager;->setPortRolesLegacy(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_54

    :cond_53
    move v0, v2

    :goto_54
    const-string v4, "USB connection setMode : "

    if-ne v2, v3, :cond_73

    if-eq v0, v3, :cond_5b

    goto :goto_73

    .line 214
    :cond_5b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - skip!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 211
    :cond_73
    :goto_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p1, p1, 0xe

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/usb/SemUsbBackend;->setUsbFunction(I)V

    :goto_8a
    return-void
.end method

.method public final setUsbFunction(I)V
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB connection setUsbFunction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemUsbBackend"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6c

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4a

    const/16 v0, 0xa

    if-eq p1, v0, :cond_39

    const-string p1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_SEC_CHARGING"

    .line 182
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo p1, "sec_charging"

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_8e

    :cond_39
    const-string p1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MTP_GADGET"

    .line 177
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string p1, "mtp,conn_gadget"

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_8e

    :cond_4a
    const-string p1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MASS_STORAGE"

    .line 172
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string p1, "mass_storage"

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_8e

    :cond_5b
    const-string p1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MIDI"

    .line 167
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string p1, "midi"

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_8e

    :cond_6c
    const-string p1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_PTP"

    .line 162
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo p1, "ptp"

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_8e

    :cond_7e
    const-string p1, "USB connection setUsbFunction : + UsbManager.USB_FUNCTION_MTP"

    .line 157
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string p1, "mtp"

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    :goto_8e
    return-void
.end method

.method public updateUsbPort()V
    .registers 9

    .line 76
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 80
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_85

    .line 82
    iget-object v3, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUsbPort() status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemUsbBackend"

    invoke-static {v5, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "updateUsbPort() mPort = "

    if-eqz v3, :cond_6e

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateUsbPort() status.isConnected() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 89
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 90
    iput-object v3, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 95
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_85
    :goto_85
    return-void
.end method
