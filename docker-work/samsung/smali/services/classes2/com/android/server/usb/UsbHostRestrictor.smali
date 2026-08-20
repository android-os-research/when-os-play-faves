.class public Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "UsbHostRestrictor.java"


# static fields
.field public static final ALLOW:I = 0x0

.field public static final DISALLOW:I = 0x1

.field public static final INIT:I = 0x2

.field public static final LOG:Z = true

.field public static final MPS_CODE_PATH:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field public static final SALES_CODE_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field public static final TAG:Ljava/lang/String; = "UsbHostRestrictor"

.field public static final USB_HOST_DISABLE_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/disable"

.field public static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field public static final USB_HOST_RISTRICTION_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

.field public static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field public static final USB_RESTRICTION_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

.field public static bRestrictHostAPI:Z = false

.field public static isMDMBlock:Z = false

.field public static isSIMBlock:Z = false

.field public static mCurrentSysNodeValue:Ljava/lang/String; = "OFF"

.field public static mStrAllowList:Ljava/lang/String; = ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public final mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mUEventHostObserver:Landroid/os/UEventObserver;

.field public final mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckWriteValue(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowMDMToast(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showMDMToast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteDisableSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetisMDMBlock()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmCurrentSysNodeValue()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputisMDMBlock(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputisSIMBlock(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v1, Lcom/android/server/usb/UsbHostRestrictor$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 521
    new-instance v2, Lcom/android/server/usb/UsbHostRestrictor$3;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbHostRestrictor$3;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    .line 80
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string p0, "DEVPATH=/devices/virtual/host_notify"

    .line 83
    invoke-virtual {v2, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 86
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isSupportDexRestrict()Z
    .registers 4

    .line 488
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportDexRestrict ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbHostRestrictor"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    return v0

    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public static isUsbBlocked()Z
    .registers 3

    .line 471
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_1f

    .line 474
    :cond_d
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1f

    :cond_18
    const-string v0, "UsbHostRestrictor"

    const-string v2, "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value"

    .line 478
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return v1
.end method

.method public static restrictUsbHostInterface(ZLjava/lang/String;)I
    .registers 5

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restrictUsbHostInterface("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbHostRestrictor"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isSupportDexRestrict()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_4d

    .line 503
    :try_start_2b
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    .line 504
    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mStrAllowList:Ljava/lang/String;

    const-string p0, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    .line 505
    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_36

    const/4 p0, 0x0

    return p0

    :catch_36
    move-exception p0

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restrictUsbHostInterface() fail - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4d
    const-string/jumbo p0, "restrictUsbHostInterface() node error"

    .line 511
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public bootCompleted()V
    .registers 1

    .line 96
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->initSetUsbBlock()V

    return-void
.end method

.method public final checkBuildType()Ljava/lang/String;
    .registers 1

    const-string p0, "USER"

    return-object p0
.end method

.method public final checkUsbBlockingCondition(Ljava/lang/String;)Z
    .registers 7

    .line 373
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "UsbHostRestrictor"

    if-nez v1, :cond_10

    if-nez v0, :cond_17

    :cond_10
    const-string v0, "checkUsbBlockingCondition : salesCode is null"

    .line 375
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OXA"

    .line 381
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ENG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    const-string p0, "Cannot DISABLE USB at ENG BINARY"

    .line 382
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 384
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "USER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "CHM"

    .line 385
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "ON_HOST_MDM"

    const/4 v4, 0x1

    if-nez p0, :cond_62

    const-string p0, "CBK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    goto :goto_62

    .line 397
    :cond_50
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string p0, "DISABLE USB for MDM block"

    .line 398
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5c
    const-string p0, "NOT DISABLE USB 3"

    .line 401
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_62
    :goto_62
    const-string p0, "ON_ALL_SIM"

    .line 386
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_71

    goto :goto_85

    :cond_71
    const-string p0, "OFF"

    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7f

    const-string p0, "NOT DISABLE USB 1"

    .line 390
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7f
    const-string p0, "NOT DISABLE USB 2"

    .line 393
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_85
    :goto_85
    const-string p0, "DISABLE USB for USER BINARY and CMCC MODEL or MDM block"

    .line 387
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8b
    const-string p0, "NOT DISABLE USB 4"

    .line 406
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final checkWriteValue()Ljava/lang/String;
    .registers 2

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkWriteValue : isSIMBlock="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isMDMBlock="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsbHostRestrictor"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz p0, :cond_29

    const-string p0, "ON_ALL_SIM"

    goto :goto_32

    .line 343
    :cond_29
    sget-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    if-eqz p0, :cond_30

    const-string p0, "ON_HOST_MDM"

    goto :goto_32

    :cond_30
    const-string p0, "OFF"

    :goto_32
    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 4

    const-string p1, "USB Host Restrictor State:"

    .line 561
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  All SIM Count:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Disable Sys Node Value :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Disable Sys Node Writable :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  mCurrentSysNodeValue :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  SIM BLOCK ON/OFF :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  MDM BLOCK ON/OFF :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  MDM bRestrictHostAPI :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  MDM mStrAllowList :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mStrAllowList:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getSalesCode()Ljava/lang/String;
    .registers 9

    const-string p0, "/system/csc/sales_code.dat"

    const-string v0, "/efs/imei/mps_code.dat"

    const-string v1, "IOException(iex): "

    const-string v2, "UsbHostRestrictor"

    const-string v3, "null"

    const/4 v4, 0x0

    .line 232
    :try_start_b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_51

    const-string p0, "mps exists"

    .line 236
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_25} :catch_12b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_25} :catch_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_25} :catch_ca
    .catchall {:try_start_b .. :try_end_25} :catchall_c6

    .line 238
    :try_start_25
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_4b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2a} :catch_3f
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3b

    .line 239
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2e} :catch_38
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2e} :catch_32
    .catchall {:try_start_2a .. :try_end_2e} :catchall_15d

    move-object v4, p0

    move-object p0, v0

    goto/16 :goto_9f

    :catch_32
    move-exception v4

    goto/16 :goto_ce

    :catch_35
    move-exception v4

    goto/16 :goto_ff

    :catch_38
    move-exception v4

    goto/16 :goto_12f

    :catchall_3b
    move-exception v3

    move-object v0, v4

    goto/16 :goto_15e

    :catch_3f
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    :goto_42
    move-object v0, v7

    goto/16 :goto_ce

    :catch_45
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    :goto_48
    move-object v0, v7

    goto/16 :goto_ff

    :catch_4b
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    :goto_4e
    move-object v0, v7

    goto/16 :goto_12f

    .line 240
    :cond_51
    :try_start_51
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_99

    const-string/jumbo v0, "sales_code exists"

    .line 241
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_62} :catch_12b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_62} :catch_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_62} :catch_ca
    .catchall {:try_start_51 .. :try_end_62} :catchall_c6

    .line 243
    :try_start_62
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_67} :catch_94
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_67} :catch_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_67} :catch_8a
    .catchall {:try_start_62 .. :try_end_67} :catchall_84

    .line 244
    :try_start_67
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_6b} :catch_7e
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6b} :catch_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_6b} :catch_72
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6d

    move-object v4, v0

    goto :goto_9f

    :catchall_6d
    move-exception v3

    move-object v4, v0

    move-object v0, p0

    goto/16 :goto_15f

    :catch_72
    move-exception v4

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto/16 :goto_ce

    :catch_78
    move-exception v4

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto/16 :goto_ff

    :catch_7e
    move-exception v4

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto/16 :goto_12f

    :catchall_84
    move-exception v3

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto/16 :goto_15f

    :catch_8a
    move-exception p0

    move-object v7, v4

    move-object v4, p0

    move-object p0, v0

    goto :goto_42

    :catch_8f
    move-exception p0

    move-object v7, v4

    move-object v4, p0

    move-object p0, v0

    goto :goto_48

    :catch_94
    move-exception p0

    move-object v7, v4

    move-object v4, p0

    move-object p0, v0

    goto :goto_4e

    :cond_99
    :try_start_99
    const-string p0, "Both dat does not exist"

    .line 246
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_9e} :catch_12b
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9e} :catch_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_9e} :catch_ca
    .catchall {:try_start_99 .. :try_end_9e} :catchall_c6

    move-object p0, v4

    :goto_9f
    if-eqz v4, :cond_a7

    .line 257
    :try_start_a1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_a7

    :catch_a5
    move-exception p0

    goto :goto_ae

    :cond_a7
    :goto_a7
    if-eqz p0, :cond_15c

    .line 259
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ac} :catch_a5

    goto/16 :goto_15c

    .line 261
    :goto_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    :catchall_c6
    move-exception v3

    move-object v0, v4

    goto/16 :goto_15f

    :catch_ca
    move-exception p0

    move-object v0, v4

    move-object v4, p0

    move-object p0, v0

    .line 253
    :goto_ce
    :try_start_ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_ce .. :try_end_e6} :catchall_15d

    if-eqz p0, :cond_ee

    .line 257
    :try_start_e8
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V

    goto :goto_ee

    :catch_ec
    move-exception p0

    goto :goto_f5

    :cond_ee
    :goto_ee
    if-eqz v0, :cond_15c

    .line 259
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f3} :catch_ec

    goto/16 :goto_15c

    .line 261
    :goto_f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b3

    :catch_fb
    move-exception p0

    move-object v0, v4

    move-object v4, p0

    move-object p0, v0

    .line 251
    :goto_ff
    :try_start_ff
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_15d

    if-eqz p0, :cond_11f

    .line 257
    :try_start_119
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V

    goto :goto_11f

    :catch_11d
    move-exception p0

    goto :goto_125

    :cond_11f
    :goto_11f
    if-eqz v0, :cond_15c

    .line 259
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_124} :catch_11d

    goto :goto_15c

    .line 261
    :goto_125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b3

    :catch_12b
    move-exception p0

    move-object v0, v4

    move-object v4, p0

    move-object p0, v0

    .line 249
    :goto_12f
    :try_start_12f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not Found exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catchall {:try_start_12f .. :try_end_147} :catchall_15d

    if-eqz p0, :cond_14f

    .line 257
    :try_start_149
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V

    goto :goto_14f

    :catch_14d
    move-exception p0

    goto :goto_155

    :cond_14f
    :goto_14f
    if-eqz v0, :cond_15c

    .line 259
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_154} :catch_14d

    goto :goto_15c

    .line 261
    :goto_155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_b3

    :cond_15c
    :goto_15c
    return-object v3

    :catchall_15d
    move-exception v3

    :goto_15e
    move-object v4, p0

    :goto_15f
    if-eqz v4, :cond_167

    .line 257
    :try_start_161
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_167

    :catch_165
    move-exception p0

    goto :goto_16d

    :cond_167
    :goto_167
    if-eqz v0, :cond_183

    .line 259
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_16c} :catch_165

    goto :goto_183

    .line 261
    :goto_16d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_183
    :goto_183
    throw v3
.end method

.method public final getUsbHostDisableSysNodeWritable()Z
    .registers 2

    .line 439
    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final initSetUsbBlock()V
    .registers 5

    const-string v0, "UsbHostRestrictor"

    const-string v1, "initSetUsbBlock STARTED"

    .line 273
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sys.config.usbSIMblock"

    const-string/jumbo v2, "true"

    .line 276
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 278
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    if-nez v2, :cond_2a

    :cond_23
    const-string v2, "checkUsbBlockingCondition : salesCode is null"

    .line 280
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OXA"

    .line 284
    :cond_2a
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "SIM was never inserted"

    .line 287
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5b

    .line 291
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "CHM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "CBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    :cond_54
    const-string v1, "NEED to BLOCK by NO SIM"

    .line 292
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 296
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_91

    :cond_69
    const-string p0, "Can NOT Write Disable Sys Node 1"

    .line 302
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_6f
    if-lez v3, :cond_8a

    const-string v1, "SIM has been already inserted"

    .line 305
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 311
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_91

    :cond_84
    const-string p0, "Can NOT Write Disable Sys Node 2"

    .line 313
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_8a
    if-gez v3, :cond_91

    const-string p0, "SIM COUNT value is abnormal"

    .line 316
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
    return-void
.end method

.method public final readDisableSysNodefromFile()Ljava/lang/String;
    .registers 4

    .line 416
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    const-string v0, "UsbHostRestrictor"

    const-string v1, "Failed to read from DISABLE FILE"

    .line 420
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_1b
    const-string v1, "ON"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 428
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 429
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_34

    :cond_2b
    const-string v1, "OFF"

    .line 431
    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 432
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    :goto_34
    return-object v0
.end method

.method public final showAlertDialog()V
    .registers 4

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.SettingsReceiverActivity"

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmcc_block_usb"

    const/4 v2, 0x1

    .line 447
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    :try_start_17
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_34

    :catch_1d
    move-exception p0

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start activity to show the USB BLOCK Dialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsbHostRestrictor"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public final showMDMToast()V
    .registers 3

    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showMDMToast"

    .line 458
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    :cond_1a
    return-void
.end method

.method public final writeDisableSysNodetoFile(Ljava/lang/String;)V
    .registers 6

    const-string v0, "OFF"

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write Disable Sys Node with ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbHostRestrictor"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->checkUsbBlockingCondition(Ljava/lang/String;)Z

    move-result v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_40

    const-string v3, "/sys/class/usb_notify/usb_control/disable"

    if-eqz v1, :cond_35

    .line 355
    :try_start_25
    invoke-static {v3, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p1}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    goto :goto_61

    .line 360
    :cond_35
    invoke-static {v3, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 362
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3f} :catch_40

    goto :goto_61

    :catch_40
    move-exception p1

    const-string v1, "Failed to write to DISABLE FILE"

    .line 365
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 368
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    :goto_61
    return-void
.end method
