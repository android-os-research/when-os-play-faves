.class public Lcom/android/server/usb/UsbProfileGroupSettingsManager;
.super Ljava/lang/Object;
.source "UsbProfileGroupSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    }
.end annotation


# static fields
.field public static final APPLE_VENDOR_ID:I = 0x5ac

.field public static final BLACKBERRY_VENDOR_ID:I = 0xfca

.field public static final DEBUG:Z = true

.field public static final DUMPSYS_LOG_BUFFER:I = 0xc8

.field public static final RELEASE_BUILD:Z

.field public static final SAMSUNG_VENDOR_ID:I = 0x4e8

.field public static final SMART_SWITCH_APK_HASH_CODE:I = -0x4c8716a4

.field public static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final TAG:Ljava/lang/String; = "UsbProfileGroupSettingsManager"

.field public static sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

.field public static final sSingleUserSettingsFile:Ljava/io/File;


# instance fields
.field public final mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisablePermissionDialogs:Z

.field public mIsWriteSettingsScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

.field public final mParentUser:Landroid/os/UserHandle;

.field public final mSettingsFile:Landroid/util/AtomicFile;

.field public final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field public mSmartSwitchInTheProcess:Z

.field public final mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$8oebeS6O2umOKKgbAiP2tJDhJ4A(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->lambda$scheduleWriteSettingsLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmParentUser(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 114
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    const-string/jumbo v0, "ro.build.type"

    .line 965
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->RELEASE_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbHandlerManager;)V
    .registers 11

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 135
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    .line 236
    new-instance v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor-IA;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    const/4 v1, 0x0

    .line 971
    iput-boolean v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSmartSwitchInTheProcess:Z

    .line 253
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating settings for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_47
    const-string v3, "android"

    .line 257
    invoke-virtual {p1, v3, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_4c} :catch_b3

    .line 262
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 264
    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo p3, "user"

    .line 265
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 267
    iput-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 268
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 269
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "usb_device_manager.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "usb-state"

    invoke-direct {p3, v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x1110113

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    .line 275
    monitor-enter v0

    .line 276
    :try_start_8b
    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_96

    .line 277
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->upgradeSingleUserLocked()V

    .line 279
    :cond_96
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readSettingsLocked()V

    .line 280
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_8b .. :try_end_9a} :catchall_b0

    .line 282
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v2, p3, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 289
    iput-object p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    .line 291
    new-instance p0, Lcom/android/server/usb/UsbDeviceLogger;

    const/16 p1, 0xc8

    const-string p2, "UsbProfileGroupSettingsManager activity"

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceLogger;-><init>(ILjava/lang/String;)V

    sput-object p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

    return-void

    :catchall_b0
    move-exception p0

    .line 280
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0

    .line 259
    :catch_b3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Missing android package"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;
    .registers 3

    .line 1709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "device"

    .line 1710
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p0, 0x11000000

    .line 1711
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/AccessoryFilter;",
            ">;"
        }
    .end annotation

    .line 687
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 691
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_5f
    .catchall {:try_start_3 .. :try_end_9} :catchall_5d

    if-nez p0, :cond_27

    .line 693
    :try_start_b
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no meta-data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_58
    .catchall {:try_start_b .. :try_end_21} :catchall_55

    if-eqz p0, :cond_26

    .line 711
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_26
    return-object v1

    .line 697
    :cond_27
    :try_start_27
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 698
    :goto_2a
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_51

    .line 699
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "usb-accessory"

    .line 700
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez v1, :cond_46

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 704
    :cond_46
    invoke-static {p0}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_4d
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_50} :catch_58
    .catchall {:try_start_27 .. :try_end_50} :catchall_55

    goto :goto_2a

    .line 711
    :cond_51
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_81

    :catchall_55
    move-exception p1

    move-object v1, p0

    goto :goto_82

    :catch_58
    move-exception v0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_61

    :catchall_5d
    move-exception p1

    goto :goto_82

    :catch_5f
    move-exception v0

    move-object p0, v1

    .line 709
    :goto_61
    :try_start_61
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load component info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_5d

    if-eqz v1, :cond_80

    .line 711
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_80
    move-object v1, p0

    :goto_81
    return-object v1

    :goto_82
    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 712
    :cond_87
    throw p1
.end method

.method public static getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/DeviceFilter;",
            ">;"
        }
    .end annotation

    .line 645
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 649
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_5f
    .catchall {:try_start_3 .. :try_end_9} :catchall_5d

    if-nez p0, :cond_27

    .line 651
    :try_start_b
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no meta-data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_58
    .catchall {:try_start_b .. :try_end_21} :catchall_55

    if-eqz p0, :cond_26

    .line 669
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_26
    return-object v1

    .line 655
    :cond_27
    :try_start_27
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 656
    :goto_2a
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_51

    .line 657
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "usb-device"

    .line 658
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez v1, :cond_46

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 662
    :cond_46
    invoke-static {p0}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_4d
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_50} :catch_58
    .catchall {:try_start_27 .. :try_end_50} :catchall_55

    goto :goto_2a

    .line 669
    :cond_51
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_81

    :catchall_55
    move-exception p1

    move-object v1, p0

    goto :goto_82

    :catch_58
    move-exception v0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_61

    :catchall_5d
    move-exception p1

    goto :goto_82

    :catch_5f
    move-exception v0

    move-object p0, v1

    .line 667
    :goto_61
    :try_start_61
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load component info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_5d

    if-eqz v1, :cond_80

    .line 669
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_80
    move-object v1, p0

    :goto_81
    return-object v1

    :goto_82
    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 670
    :cond_87
    throw p1
.end method

.method private synthetic lambda$scheduleWriteSettingsLocked$0()V
    .registers 15

    .line 544
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 547
    :try_start_5
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_18d
    .catchall {:try_start_5 .. :try_end_b} :catchall_18b

    .line 549
    :try_start_b
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 550
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    .line 551
    invoke-interface {v4, v5, v6}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v5, "settings"

    .line 553
    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/DeviceFilter;

    const-string/jumbo v7, "preference"

    .line 556
    invoke-interface {v4, v2, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "package"

    .line 557
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 558
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 557
    invoke-interface {v4, v2, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "user"

    .line 559
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 560
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    invoke-interface {v4, v2, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    invoke-virtual {v6, v4}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v6, "preference"

    .line 562
    invoke-interface {v4, v2, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2a

    .line 565
    :cond_6e
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_78
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/AccessoryFilter;

    const-string/jumbo v7, "preference"

    .line 566
    invoke-interface {v4, v2, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "package"

    .line 567
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 568
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 567
    invoke-interface {v4, v2, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "user"

    .line 569
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 570
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v8

    .line 569
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v2, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 571
    invoke-virtual {v6, v4}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v6, "preference"

    .line 572
    invoke-interface {v4, v2, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_78

    .line 575
    :cond_bc
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v1

    :goto_c3
    if-ge v6, v5, :cond_11b

    .line 577
    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/DeviceFilter;

    .line 578
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 579
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    const-string/jumbo v9, "preference-denied-list"

    .line 580
    invoke-interface {v4, v2, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 581
    invoke-virtual {v7, v4}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 583
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v9, v1

    :goto_e3
    if-ge v9, v7, :cond_112

    .line 585
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v11, "user-package"

    .line 586
    invoke-interface {v4, v2, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "user"

    .line 587
    iget-object v12, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 588
    invoke-virtual {p0, v12}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 587
    invoke-interface {v4, v2, v11, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "package"

    .line 589
    iget-object v10, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    invoke-interface {v4, v2, v11, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user-package"

    .line 590
    invoke-interface {v4, v2, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_e3

    :cond_112
    const-string/jumbo v7, "preference-denied-list"

    .line 592
    invoke-interface {v4, v2, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    .line 595
    :cond_11b
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v1

    :goto_122
    if-ge v6, v5, :cond_17a

    .line 597
    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/AccessoryFilter;

    .line 598
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    .line 599
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    const-string/jumbo v9, "preference-denied-list"

    .line 600
    invoke-interface {v4, v2, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    invoke-virtual {v7, v4}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 603
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v9, v1

    :goto_142
    if-ge v9, v7, :cond_171

    .line 605
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v11, "user-package"

    .line 606
    invoke-interface {v4, v2, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "user"

    .line 607
    iget-object v12, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 608
    invoke-virtual {p0, v12}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 607
    invoke-interface {v4, v2, v11, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "package"

    .line 609
    iget-object v10, v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    invoke-interface {v4, v2, v11, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user-package"

    .line 610
    invoke-interface {v4, v2, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_142

    :cond_171
    const-string/jumbo v7, "preference-denied-list"

    .line 612
    invoke-interface {v4, v2, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_122

    :cond_17a
    const-string/jumbo v5, "settings"

    .line 615
    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 618
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_188} :catch_189
    .catchall {:try_start_b .. :try_end_188} :catchall_18b

    goto :goto_19f

    :catch_189
    move-exception v2

    goto :goto_191

    :catchall_18b
    move-exception p0

    goto :goto_1a3

    :catch_18d
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    .line 620
    :goto_191
    :try_start_191
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write settings"

    invoke-static {v4, v5, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_19f

    .line 622
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 626
    :cond_19f
    :goto_19f
    iput-boolean v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 627
    monitor-exit v0

    return-void

    :goto_1a3
    monitor-exit v0
    :try_end_1a4
    .catchall {:try_start_191 .. :try_end_1a4} :catchall_18b

    throw p0
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 9

    .line 1089
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "accessory"

    .line 1090
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x11000000

    .line 1091
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1097
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_14
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1099
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v4, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v4, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1100
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1099
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1101
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_4c

    .line 1103
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

    new-instance v4, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessoryAttached: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/usb/UsbDeviceLogger;->log(Lcom/android/server/usb/UsbDeviceLogger$Event;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1104
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    return-void

    :catchall_4c
    move-exception p0

    .line 1101
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public addAccessoryPackagesToDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 11

    .line 1452
    array-length v0, p2

    if-nez v0, :cond_4

    return-void

    .line 1455
    :cond_4
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1457
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1459
    :try_start_c
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1460
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    goto :goto_28

    .line 1462
    :cond_1d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1463
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 1467
    :goto_28
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_2b
    if-ge v2, v1, :cond_42

    aget-object v4, p2, v2

    .line 1468
    new-instance v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v6, 0x0

    invoke-direct {v5, v4, p3, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1469
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1470
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_42
    if-eqz v3, :cond_47

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1478
    :cond_47
    monitor-exit p1

    return-void

    :catchall_49
    move-exception p0

    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public addDevicePackagesToDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 11

    .line 1414
    array-length v0, p2

    if-nez v0, :cond_4

    return-void

    .line 1417
    :cond_4
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1419
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1421
    :try_start_c
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1422
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    goto :goto_28

    .line 1424
    :cond_1d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1425
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 1429
    :goto_28
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_2b
    if-ge v2, v1, :cond_42

    aget-object v4, p2, v2

    .line 1430
    new-instance v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v6, 0x0

    invoke-direct {v5, v4, p3, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1431
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1432
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_42
    if-eqz v3, :cond_47

    .line 1438
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1440
    :cond_47
    monitor-exit p1

    return-void

    :catchall_49
    move-exception p0

    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/AccessoryFilter;

    .line 1270
    invoke-virtual {p2, v2}, Landroid/hardware/usb/AccessoryFilter;->contains(Landroid/hardware/usb/AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1271
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1272
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1278
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 1279
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/AccessoryFilter;

    .line 1280
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 1284
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/DeviceFilter;

    .line 1246
    invoke-virtual {p2, v2}, Landroid/hardware/usb/DeviceFilter;->contains(Landroid/hardware/usb/DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1247
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1248
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1249
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1254
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 1255
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/DeviceFilter;

    .line 1256
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 1260
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 1627
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1629
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1630
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1631
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1633
    :cond_12
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z
    .registers 10

    .line 1645
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1646
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    .line 1648
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v4, v3, [Landroid/hardware/usb/DeviceFilter;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/usb/DeviceFilter;

    move v4, v3

    move v5, v4

    .line 1649
    :goto_1d
    array-length v6, v1

    if-ge v4, v6, :cond_38

    .line 1650
    aget-object v6, v1, v4

    .line 1651
    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1652
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v2

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_37
    move v5, v3

    .line 1657
    :cond_38
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1659
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 1660
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v4, v3, [Landroid/hardware/usb/AccessoryFilter;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/usb/AccessoryFilter;

    .line 1661
    :goto_4e
    array-length v4, v1

    if-ge v3, v4, :cond_68

    .line 1662
    aget-object v4, v1, v3

    .line 1663
    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1664
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v2

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 1669
    :cond_68
    monitor-exit v0

    return v5

    :catchall_6a
    move-exception p0

    .line 1670
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isDex(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1019
    :cond_7
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 1020
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V
    .registers 8

    .line 1050
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "deviceAttachedForFixedHandler()"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1059
    :try_start_18
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 1060
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1059
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_29} :catch_64

    .line 1067
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v2, v2, Lcom/android/server/usb/UsbSettingsManager;->mUsbService:Lcom/android/server/usb/UsbService;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1068
    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 1070
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1071
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1073
    :try_start_44
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_63

    .line 1075
    :catch_4c
    sget-object p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start activity "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return-void

    .line 1062
    :catch_64
    sget-object p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default USB handling package ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") not found  for user "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 14

    .line 1674
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 1676
    iget-object p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_7
    const-string/jumbo v0, "parent_user_id"

    const-wide v1, 0x10500000001L

    .line 1677
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 1678
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1677
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1680
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide v2, 0x10b00000002L

    const-wide v4, 0x10b00000001L

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/DeviceFilter;

    const-string v6, "device_preferences"

    const-wide v7, 0x20b00000002L

    .line 1681
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "filter"

    .line 1684
    invoke-virtual {v1, p1, v8, v4, v5}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1686
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v4, "user_package"

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1689
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_22

    .line 1691
    :cond_5a
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/AccessoryFilter;

    const-string v6, "accessory_preferences"

    const-wide v7, 0x20b00000003L

    .line 1692
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "filter"

    .line 1695
    invoke-virtual {v1, p1, v8, v4, v5}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1697
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v8, "user_package"

    invoke-virtual {v1, p1, v8, v2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1700
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_64

    .line 1702
    :cond_92
    monitor-exit p4
    :try_end_93
    .catchall {:try_start_7 .. :try_end_93} :catchall_a1

    .line 1704
    sget-object p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

    const-wide v0, 0x10900000004L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/usb/UsbDeviceLogger;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V

    .line 1705
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_a1
    move-exception p0

    .line 1702
    :try_start_a2
    monitor-exit p4
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 921
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p2

    .line 922
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_23

    .line 924
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const/4 v4, 0x0

    .line 925
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 926
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 930
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ")",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 1197
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 1199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_2a

    .line 1200
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1201
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_f

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isSamsungCarlifePkg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1202
    iget-object p0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_2a
    const/4 v0, 0x0

    if-eqz p2, :cond_59

    .line 1211
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1212
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_31

    new-instance v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1214
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v5, v6, v4, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1212
    invoke-virtual {p2, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1216
    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 1221
    :cond_59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_79

    const/4 p2, 0x0

    .line 1222
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_79

    .line 1224
    iget-boolean p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    if-eqz p0, :cond_6f

    return-object p1

    .line 1228
    :cond_6f
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_79

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_79

    return-object p1

    :cond_79
    return-object v0
.end method

.method public final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p2

    .line 907
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_23

    .line 909
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const/4 v4, 0x0

    .line 910
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 911
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 915
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getSerial(Landroid/os/UserHandle;)I
    .registers 2

    .line 1367
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p0

    return p0
.end method

.method public final getSmartSwitchActivityInfo(Landroid/hardware/usb/UsbDevice;Ljava/util/ArrayList;)Landroid/content/pm/ActivityInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 983
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 984
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 986
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    .line 988
    :cond_19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 989
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "task.topActivity.getPackageName()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_47
    const/4 v0, 0x0

    .line 992
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 993
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "foregroundApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.easyMover"

    .line 994
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 995
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c7

    .line 996
    :goto_7c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_c7

    .line 997
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 998
    sget-object p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_c4

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1000
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1001
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activityInfo="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_c4
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_c7
    return-object v1
.end method

.method public final handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .registers 9

    .line 1325
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1330
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    const/16 v3, 0x81

    iget-object v4, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 1332
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1330
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_13} :catch_41
    .catchall {:try_start_3 .. :try_end_13} :catchall_3f

    .line 1338
    :try_start_13
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_19

    .line 1339
    monitor-exit v0

    return-void

    :cond_19
    const/4 v2, 0x0

    move v3, v2

    .line 1340
    :goto_1b
    array-length v4, v1

    if-ge v2, v4, :cond_38

    .line 1342
    aget-object v4, v1, v2

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2a

    move v3, v5

    .line 1347
    :cond_2a
    aget-object v4, v1, v2

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    move v3, v5

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_38
    if-eqz v3, :cond_3d

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1356
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    goto :goto_5a

    :catch_41
    move-exception p0

    .line 1334
    sget-object v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePackageUpdate could not find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    monitor-exit v0

    return-void

    .line 1356
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_13 .. :try_end_5b} :catchall_3f

    throw p0
.end method

.method public final handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1294
    :try_start_2
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_50
    .catchall {:try_start_2 .. :try_end_8} :catchall_4e

    if-nez v1, :cond_10

    if-eqz v1, :cond_f

    .line 1317
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f
    return v0

    .line 1297
    :cond_10
    :try_start_10
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1298
    :goto_13
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4a

    .line 1299
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v3, "usb-device"

    .line 1300
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1301
    invoke-static {v1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object p3

    .line 1302
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z

    move-result p3

    if-eqz p3, :cond_46

    goto :goto_45

    :cond_32
    const-string/jumbo v3, "usb-accessory"

    .line 1306
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_46

    .line 1307
    invoke-static {v1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object p3

    .line 1308
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z

    move-result p3

    if-eqz p3, :cond_46

    :goto_45
    move v0, v2

    .line 1312
    :cond_46
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_49} :catch_50
    .catchall {:try_start_10 .. :try_end_49} :catchall_4e

    goto :goto_13

    .line 1317
    :cond_4a
    :goto_4a
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_6e

    :catchall_4e
    move-exception p0

    goto :goto_6f

    :catch_50
    move-exception p0

    .line 1315
    :try_start_51
    sget-object p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load component info "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_4e

    if-eqz v1, :cond_6e

    goto :goto_4a

    :cond_6e
    :goto_6e
    return v0

    :goto_6f
    if-eqz v1, :cond_74

    .line 1317
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1318
    :cond_74
    throw p0
.end method

.method public hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5

    .line 1606
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1607
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1608
    :try_start_9
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    .line 1609
    :cond_18
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_24
    move-exception p0

    .line 1610
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final isDex(Landroid/hardware/usb/UsbDevice;)Z
    .registers 3

    .line 1010
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    const/16 v0, 0xbda

    if-ne p0, v0, :cond_23

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    const v0, 0x8152

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    const p1, 0x8153

    if-ne p0, p1, :cond_23

    .line 1011
    :cond_1a
    sget-object p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string p1, "Do not send ACTION_USB_DEVICE_ATTACHED intent, because of Dex"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public final isForwardMatch(Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    .line 798
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isPreinstalledPackage(Ljava/lang/String;)Z
    .registers 4

    .line 975
    sget-boolean v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->RELEASE_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 976
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    move v1, p0

    .line 978
    :cond_12
    :goto_12
    sget-object p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPreinstalledPackage: ret="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 12

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    if-eqz p2, :cond_91

    .line 727
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 729
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 731
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageMatchesLocked num of DeviceFilters ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    :goto_34
    if-ge v4, v3, :cond_91

    .line 738
    :try_start_36
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v5, p2}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5
    :try_end_40
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_40} :catch_50
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_46

    if-eqz v5, :cond_43

    return v1

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :catch_46
    move-exception p2

    .line 747
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "packageMatchesLocked got Exception "

    invoke-static {v2, v3, p2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_91

    .line 744
    :catch_50
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageMatchesLocked delivered UsbDevice="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageMatchesLocked NPE at deviceFilter("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") = ["

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v2}, Landroid/hardware/usb/DeviceFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
    if-eqz p3, :cond_b2

    .line 754
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_b2

    .line 757
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v0

    :goto_a0
    if-ge p2, p1, :cond_b2

    .line 759
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/AccessoryFilter;

    invoke-virtual {v2, p3}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-eqz v2, :cond_af

    return v1

    :cond_af
    add-int/lit8 p2, p2, 0x1

    goto :goto_a0

    :cond_b2
    return v0
.end method

.method public final preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 810
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 811
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 812
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_66

    .line 817
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 821
    invoke-virtual {p0, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 822
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 827
    :cond_27
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_40

    .line 828
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/high16 v8, -0x80000000

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 829
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    :cond_40
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 834
    iget v8, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 837
    iget v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v9, v7, :cond_56

    .line 838
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_56
    if-le v9, v7, :cond_63

    .line 840
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 842
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 843
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 850
    :cond_66
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 851
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_6f
    if-ge v4, p1, :cond_7d

    .line 853
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :cond_7d
    return-object p0
.end method

.method public final queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_30

    .line 783
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    .line 784
    invoke-virtual {v4, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 783
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_30
    return-object v1
.end method

.method public final readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 369
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_9
    if-ge v3, v1, :cond_3b

    .line 371
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 372
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 374
    :cond_1c
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 376
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 377
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 381
    :cond_3b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 382
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "usb-device"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 383
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v1

    if-eqz v0, :cond_79

    .line 385
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v3, v4, v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    .line 387
    :cond_5c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "usb-accessory"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 388
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v1

    if-eqz v0, :cond_79

    .line 390
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v3, v4, v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_79
    :goto_79
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final readPreferenceDeniedList(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 398
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 399
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 403
    :cond_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usb-device"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Unable to parse package name"

    const-string/jumbo v4, "package"

    const-string v5, "Unable to parse user id"

    const-string/jumbo v6, "user"

    const-string/jumbo v7, "user-package"

    if-eqz v1, :cond_71

    .line 404
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v1

    .line 405
    :cond_2a
    :goto_2a
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 406
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 408
    :try_start_3a
    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 410
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_49

    .line 412
    sget-object v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    invoke-static {v10, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_49
    iget-object v10, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    if-nez v10, :cond_5d

    .line 417
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 418
    iget-object v11, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_5d
    new-instance v11, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v11, v9, v8, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/net/ProtocolException; {:try_start_3a .. :try_end_69} :catch_6a

    goto :goto_2a

    :catch_6a
    move-exception v8

    .line 422
    sget-object v9, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    invoke-static {v9, v5, v8}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 426
    :cond_71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "usb-accessory"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 427
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v1

    .line 429
    :cond_82
    :goto_82
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 430
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 432
    :try_start_92
    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 434
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a1

    .line 436
    sget-object v10, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    invoke-static {v10, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_a1
    iget-object v10, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    if-nez v10, :cond_b5

    .line 441
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 442
    iget-object v11, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_b5
    new-instance v11, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v11, v9, v8, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catch Ljava/net/ProtocolException; {:try_start_92 .. :try_end_c1} :catch_c2

    goto :goto_82

    :catch_c2
    move-exception v8

    .line 446
    sget-object v9, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    invoke-static {v9, v5, v8}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_82

    .line 452
    :cond_c9
    :goto_c9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    if-le p0, v0, :cond_d3

    .line 453
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_c9

    :cond_d3
    return-void
.end method

.method public final readSettingsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readSettingsLocked()"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 499
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 503
    :try_start_13
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 506
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 507
    :goto_20
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_61

    .line 508
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preference"

    .line 509
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 510
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_20

    :cond_38
    const-string/jumbo v3, "preference-denied-list"

    .line 511
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 512
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreferenceDeniedList(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_20

    .line 514
    :cond_45
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_48} :catch_59
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_48} :catch_4b
    .catchall {:try_start_13 .. :try_end_48} :catchall_49

    goto :goto_20

    :catchall_49
    move-exception p0

    goto :goto_65

    :catch_4b
    move-exception v1

    .line 520
    :try_start_4c
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading settings file, deleting to start fresh"

    invoke-static {v2, v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    goto :goto_61

    .line 518
    :catch_59
    sget-object p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "settings file not found"

    invoke-static {p0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_49

    .line 523
    :cond_61
    :goto_61
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_65
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 524
    throw p0
.end method

.method public removeAccessoryPackagesFromDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 13

    .line 1527
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1529
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1530
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_3f

    .line 1534
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const/4 v5, 0x1

    if-ge v3, v2, :cond_3a

    aget-object v6, p2, v3

    .line 1535
    new-instance v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v8, 0x0

    invoke-direct {v7, v6, p3, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1537
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1538
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1541
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_36

    .line 1542
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_3a

    :cond_36
    move v4, v5

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_3a
    :goto_3a
    if-eqz v4, :cond_3f

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1552
    :cond_3f
    monitor-exit p1

    return-void

    :catchall_41
    move-exception p0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public removeDevicePackagesFromDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 13

    .line 1490
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1492
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1493
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_3f

    .line 1497
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const/4 v5, 0x1

    if-ge v3, v2, :cond_3a

    aget-object v6, p2, v3

    .line 1498
    new-instance v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v8, 0x0

    invoke-direct {v7, v6, p3, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1500
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1501
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1504
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_36

    .line 1505
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_3a

    :cond_36
    move v4, v5

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_3a
    :goto_3a
    if-eqz v4, :cond_3f

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1515
    :cond_3f
    monitor-exit p1

    return-void

    :catchall_41
    move-exception p0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 868
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v2, v0, :cond_30

    .line 875
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 876
    invoke-virtual {p0, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 877
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 878
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_30
    if-eqz v3, :cond_36

    if-nez v4, :cond_35

    goto :goto_36

    :cond_35
    return-object p1

    .line 888
    :cond_36
    :goto_36
    new-instance v2, Ljava/util/ArrayList;

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3c
    if-ge v1, v0, :cond_50

    .line 892
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 893
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 894
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_50
    return-object v2
.end method

.method public removeUser(Landroid/os/UserHandle;)V
    .registers 11

    .line 310
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 313
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 314
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2f

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v4, v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v3, v5

    goto :goto_f

    .line 323
    :cond_2f
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 324
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 328
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v4, v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v3, v5

    goto :goto_39

    .line 334
    :cond_58
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v4, v2

    :goto_5f
    if-ge v4, v1, :cond_88

    .line 336
    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 337
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_6e
    if-ltz v7, :cond_85

    .line 338
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v8, v8, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 339
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v5

    :cond_82
    add-int/lit8 v7, v7, -0x1

    goto :goto_6e

    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 345
    :cond_88
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_8e
    if-ge v2, v1, :cond_b7

    .line 347
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 348
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_9d
    if-ltz v6, :cond_b4

    .line 349
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 350
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v5

    :cond_b1
    add-int/lit8 v6, v6, -0x1

    goto :goto_9d

    :cond_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_b7
    if-eqz v3, :cond_bc

    .line 357
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 359
    :cond_bc
    monitor-exit v0

    return-void

    :catchall_be
    move-exception p0

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_3 .. :try_end_c0} :catchall_be

    throw p0
.end method

.method public final resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V
    .registers 13

    .line 1024
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resolveActivity(Intent, UsbDevice) - start"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbDeviceAttached, sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1031
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1032
    invoke-virtual {p0, p2, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSmartSwitchActivityInfo(Landroid/hardware/usb/UsbDevice;Ljava/util/ArrayList;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_33

    move-object v7, v2

    goto :goto_45

    .line 1034
    :cond_33
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v4, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v4, p2}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1035
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1034
    invoke-virtual {p0, v6, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v7, v3

    .line 1037
    :goto_45
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_5e

    if-nez v2, :cond_5e

    const-string p0, "Setup wizard is not finished"

    .line 1039
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    monitor-exit v1

    return-void

    :cond_5e
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    .line 1044
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 1045
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_b .. :try_end_66} :catchall_6d

    const-string/jumbo p0, "resolveActivity(Intent, UsbDevice) - end"

    .line 1046
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_6d
    move-exception p0

    .line 1045
    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_11

    .line 1122
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceDeniedMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v2, p4}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    goto :goto_22

    :cond_11
    if-eqz p5, :cond_21

    .line 1124
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceDeniedMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v2, p5}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    goto :goto_22

    :cond_21
    move-object v1, v0

    :goto_22
    const/4 v2, 0x1

    if-eqz v1, :cond_4f

    .line 1127
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2a
    if-ltz v3, :cond_4f

    .line 1128
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1129
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1130
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1131
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 1132
    new-instance v6, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v6, v5, v4, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1133
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 1138
    :cond_4f
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveActivity: intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " defaultActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1140
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1144
    :cond_88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_98

    if-eqz p5, :cond_97

    .line 1146
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p5, p0}, Lcom/android/server/usb/UsbHandlerManager;->showUsbAccessoryUriActivity(Landroid/hardware/usb/UsbAccessory;Landroid/os/UserHandle;)V

    :cond_97
    return-void

    :cond_98
    if-eqz p3, :cond_e1

    .line 1153
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object p2, p2, Lcom/android/server/usb/UsbSettingsManager;->mUsbService:Lcom/android/server/usb/UsbService;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1155
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1154
    invoke-virtual {p2, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p2

    if-eqz p4, :cond_b4

    .line 1158
    iget-object p5, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1159
    invoke-virtual {p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    goto :goto_bd

    :cond_b4
    if-eqz p5, :cond_bd

    .line 1161
    iget-object p4, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p5, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 1167
    :cond_bd
    :goto_bd
    :try_start_bd
    new-instance p2, Landroid/content/ComponentName;

    iget-object p4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p5, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1170
    iget-object p2, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 1172
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_bd .. :try_end_d6} :catch_d7

    goto :goto_fb

    :catch_d7
    move-exception p0

    .line 1174
    sget-object p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startActivity failed"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fb

    .line 1177
    :cond_e1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, v2, :cond_f4

    .line 1178
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/usb/UsbHandlerManager;->confirmUsbHandler(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_fb

    .line 1180
    :cond_f4
    iget-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {p3, p2, p0, p1}, Lcom/android/server/usb/UsbHandlerManager;->selectUsbHandler(Ljava/util/ArrayList;Landroid/os/UserHandle;Landroid/content/Intent;)V

    :goto_fb
    return-void
.end method

.method public final scheduleWriteSettingsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 537
    iget-boolean v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 543
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    .line 1571
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1573
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    if-nez p2, :cond_16

    .line 1575
    :try_start_b
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_14

    goto :goto_2e

    :cond_14
    const/4 v1, 0x0

    goto :goto_2e

    .line 1577
    :cond_16
    new-instance v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1579
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr v1, p2

    if-eqz v1, :cond_2e

    .line 1581
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_2e
    if-eqz v1, :cond_33

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1587
    :cond_33
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p0
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    .line 1386
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1388
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    if-nez p2, :cond_16

    .line 1390
    :try_start_b
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_14

    goto :goto_2e

    :cond_14
    const/4 v1, 0x0

    goto :goto_2e

    .line 1392
    :cond_16
    new-instance v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage-IA;)V

    .line 1394
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr v1, p2

    if-eqz v1, :cond_2e

    .line 1396
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_2e
    if-eqz v1, :cond_33

    .line 1400
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1402
    :cond_33
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p0
.end method

.method public unregisterReceivers()V
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public final upgradeSingleUserLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 464
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 465
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 469
    :try_start_13
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_18} :catch_47
    .catchall {:try_start_13 .. :try_end_18} :catchall_45

    .line 470
    :try_start_18
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 472
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 473
    :goto_1f
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3b

    .line 474
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "preference"

    .line 475
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1f

    .line 478
    :cond_37
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_3a} :catch_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_3a} :catch_42
    .catchall {:try_start_18 .. :try_end_3a} :catchall_3f

    goto :goto_1f

    .line 484
    :cond_3b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_52

    :catchall_3f
    move-exception p0

    move-object v1, v2

    goto :goto_5b

    :catch_42
    move-exception v0

    move-object v1, v2

    goto :goto_48

    :catchall_45
    move-exception p0

    goto :goto_5b

    :catch_47
    move-exception v0

    .line 482
    :goto_48
    :try_start_48
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read single-user settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    .line 484
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 487
    :goto_52
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 490
    sget-object p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_5f

    .line 484
    :goto_5b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 485
    throw p0

    :cond_5f
    :goto_5f
    return-void
.end method

.method public usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .registers 2

    return-void
.end method
