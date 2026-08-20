.class public Lcom/android/server/vr/HmtManager;
.super Ljava/lang/Object;
.source "HmtManager.java"


# static fields
.field public static final ACTION_HMT_THIRDPARTY_DEVICE_POLICY_UPDATED:Ljava/lang/String; = "sec.app.policy.UPDATE.HmtThridPartyDevicePolicy"

.field public static final ACTION_SCPM_POLICY_CLEAR_DATA:Ljava/lang/String; = "com.samsung.android.scpm.policy.CLEAR_DATA"

.field public static final APP_VERSION:Ljava/lang/String;

.field public static final DEFAULT_HMT_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

.field public static final DEFAULT_POWER_LIMITING_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

.field public static final DEFAULT_THIRDPARTY_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final HMT_MANAGER_APP_ID:Ljava/lang/String; = "27clq3q8a1"

.field public static final HMT_SCPM_POLICY_NAME:Ljava/lang/String; = "HmtThirdPartyDevicePolicy"

.field public static final HMT_THIRDPARTY_DEVICE_POLICY_NAME:Ljava/lang/String; = "HmtThridPartyDevicePolicy"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "rcode"

.field public static final KEY_RESULT_MESSAGE:Ljava/lang/String; = "rmsg"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final METADATA_HMT_DEMO_DEVICES:Ljava/lang/String; = "com.samsung.android.hmt.devices.demo"

.field public static final METADATA_HMT_DEVICES:Ljava/lang/String; = "com.samsung.android.hmt.devices"

.field public static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field public static final SCPM_V2_BROADCAST_MESSAGE:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE.HmtThirdPartyDevicePolicy"

.field public static final SCPM_V2_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.scpm"

.field public static final TAG:Ljava/lang/String; = "HmtManager"

.field public static final UNKNOWN_ERROR_CODE:I = -0x1


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeviceRevision:Ljava/lang/String;

.field public mPowerLimitingDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mScpmBundle:Landroid/os/Bundle;

.field public mSupportHmtDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mThirdPartyDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mToken:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/vr/HmtDevice;

    .line 43
    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/16 v3, 0x4e8

    .line 44
    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const v3, 0xa500

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const-string v3, "Gear VR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setCategory(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDeviceNameFilter(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_HMT_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/samsung/android/vr/HmtDevice;

    .line 47
    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/16 v4, 0x1f29

    .line 48
    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const-string v4, "PicoVR"

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/16 v5, 0x2d40

    .line 49
    invoke-virtual {v2, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/16 v4, 0x4b4

    .line 50
    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const/16 v5, 0x3120

    invoke-virtual {v2, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const-string v6, "nreal light"

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/16 v8, 0x486

    .line 51
    invoke-virtual {v2, v8}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const/16 v9, 0x604

    invoke-virtual {v2, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v10, 0x3

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/16 v11, 0x3318

    .line 52
    invoke-virtual {v2, v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v12, 0x4

    aput-object v2, v1, v12

    sput-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_THIRDPARTY_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    new-array v1, v10, [Lcom/samsung/android/vr/HmtDevice;

    .line 55
    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 56
    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 57
    invoke-virtual {v2, v8}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 58
    invoke-virtual {v0, v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_POWER_LIMITING_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vr/HmtManager;->APP_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mToken:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    .line 148
    iput-object p1, p0, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "ro.revision"

    .line 149
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/HmtManager;->mDeviceRevision:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/vr/HmtManager;->DEFAULT_HMT_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object p1, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/vr/HmtManager;->DEFAULT_THIRDPARTY_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/vr/HmtManager;->DEFAULT_POWER_LIMITING_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static isHmtDeviceDockState(I)Z
    .registers 2

    const/16 v0, 0x69

    if-eq p0, v0, :cond_17

    const/16 v0, 0x70

    if-eq p0, v0, :cond_17

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_17

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_17

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "HmtManager:"

    .line 418
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mSupportHmtDevices:"

    .line 419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "        "

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_31
    const-string v0, "    mThirdPartyDevices:"

    .line 423
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3c

    :cond_5b
    const-string v0, "    mPowerLimitingDevices:"

    .line 427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/HmtDevice;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_66

    :cond_85
    return-void
.end method

.method public findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 376
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->isCurrentDevice()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 377
    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_24
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mDeviceRevision:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/vr/HmtDevice;->matchesRevisionFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 381
    :cond_2d
    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_39
    return-object v1

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "rcode"

    const/4 v0, -0x1

    .line 113
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v0, "rmsg"

    const-string v1, ""

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportDevices(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    :try_start_5
    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.hmt.vrsvc"

    const/16 v2, 0x80

    .line 393
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_13} :catch_67

    .line 394
    :try_start_13
    invoke-virtual {v1, p0, p1}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_50

    if-eqz p0, :cond_4a

    .line 396
    :try_start_19
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 397
    :goto_1c
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    const-string v1, "device"

    .line 398
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 399
    invoke-static {p0}, Lcom/samsung/android/vr/HmtDevice;->readDevices(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_3c
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_40

    goto :goto_1c

    :catchall_40
    move-exception v1

    .line 394
    :try_start_41
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p0

    :try_start_46
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw v1

    :cond_4a
    if-eqz p0, :cond_67

    .line 407
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_67

    :catch_50
    move-exception p0

    :try_start_51
    const-string v1, "HmtManager"

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load device info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    :goto_67
    return-object v0
.end method

.method public initToken()V
    .registers 2

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mToken:Ljava/lang/String;

    return-void
.end method

.method public is3rdPartyDeviceMatched(Ljava/lang/String;)Z
    .registers 4

    .line 335
    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/HmtDevice;

    .line 336
    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceMatched(Landroid/view/InputDevice;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 362
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    .line 363
    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result p1

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object p0

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0
.end method

.method public isDeviceMatched(Ljava/lang/String;)Z
    .registers 2

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 4

    .line 344
    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/HmtDevice;

    .line 345
    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final isScpmV2Available(Landroid/content/Context;)Z
    .registers 5

    const-string p0, "HmtManager"

    const/4 v0, 0x0

    .line 122
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.samsung.android.scpm"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_12

    if-eqz p1, :cond_31

    move v0, v2

    goto :goto_31

    :catch_12
    move-exception p1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScpmV2Available failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_2c
    const-string p1, "Cannot find SCPM Provider"

    .line 124
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_31
    :goto_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isScpmV2Available : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public loadSupportedHmtDevices()V
    .registers 4

    const-string v0, "com.samsung.android.hmt.devices"

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/server/vr/HmtManager;->getSupportDevices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "com.samsung.android.hmt.devices.demo"

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/vr/HmtManager;->getSupportDevices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_27

    .line 326
    :cond_18
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    :cond_27
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;

    invoke-direct {v1}, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSupportedHmtDevices size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HmtManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .registers 10

    const-string v0, "android"

    const-string v1, "HmtManager"

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->isScpmV2Available(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/vr/HmtManager;->mToken:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v5

    :goto_12
    or-int/2addr v2, v4

    if-eqz v2, :cond_16

    return-void

    :cond_16
    :try_start_16
    const-string v2, "content://com.samsung.android.scpm.policy/"

    .line 87
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 88
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "packageName"

    .line 89
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "appId"

    const-string v7, "27clq3q8a1"

    .line 90
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "version"

    .line 91
    sget-object v7, Lcom/android/server/vr/HmtManager;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "receiverPackageName"

    .line 92
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "register"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v6, p1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/HmtManager;->mScpmBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_cf

    const-string/jumbo v0, "result"

    .line 96
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v5

    .line 97
    :goto_5a
    iget-object p1, p0, Lcom/android/server/vr/HmtManager;->mScpmBundle:Landroid/os/Bundle;

    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/HmtManager;->mToken:Ljava/lang/String;

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trying to register package: android version:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7e

    const-string/jumbo v0, "registered"

    goto :goto_80

    :cond_7e
    const-string v0, "failed"

    .line 100
    :goto_80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_cf

    .line 102
    iget-object p1, p0, Lcom/android/server/vr/HmtManager;->mScpmBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "register fail rCode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_b5} :catch_b6

    goto :goto_cf

    :catch_b6
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot register package : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    :goto_cf
    return-void
.end method

.method public toDisplayPortWhitelistString()Ljava/lang/String;
    .registers 8

    .line 286
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 289
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HMD,"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v1, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    const-string v2, ","

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 296
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->getVendorId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%04x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/Object;

    .line 298
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->getProductId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 300
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toPowerLimitingWhitelistString()Ljava/lang/String;
    .registers 8

    .line 304
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 307
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HMD,"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    iget-object p0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    const-string v2, ","

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 314
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->getVendorId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%04x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/Object;

    .line 316
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->getProductId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 318
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSupportDevicePolicy()V
    .registers 25

    move-object/from16 v1, p0

    const-string v0, "content://com.samsung.android.scpm.policy/"

    const-string v2, ", "

    const-string v3, "br isn\'t closed"

    const-string v4, "dataSet isn\'t closed"

    .line 156
    iget-object v5, v1, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/server/vr/HmtManager;->isScpmV2Available(Landroid/content/Context;)Z

    move-result v5

    const-string/jumbo v6, "power-limiting-device"

    const-string v7, "device-whitelist"

    const-string/jumbo v8, "updateSupportDevicePolicy "

    const/4 v9, 0x4

    const-string/jumbo v13, "productId"

    const-string/jumbo v14, "vendorId"

    const/4 v15, 0x0

    const-string v11, "HmtManager"

    if-eqz v5, :cond_1bc

    .line 161
    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/vr/HmtManager;->mScpmBundle:Landroid/os/Bundle;

    const-string/jumbo v12, "token"

    .line 162
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HmtThirdPartyDevicePolicy"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 165
    iget-object v5, v1, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v12, "r"

    invoke-virtual {v5, v2, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_57} :catch_17a
    .catchall {:try_start_24 .. :try_end_57} :catchall_176

    const-string v5, ","

    if-nez v2, :cond_a3

    .line 168
    :try_start_5b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 169
    iget-object v6, v1, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v7, "getLastError"

    const-string v8, "android"

    invoke-virtual {v6, v0, v7, v8, v15}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Lcom/android/server/vr/HmtManager;->getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It can\'t get the configuration data : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_96} :catch_a0
    .catchall {:try_start_5b .. :try_end_96} :catchall_1a8

    if-eqz v2, :cond_9f

    .line 214
    :try_start_98
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_9f

    .line 216
    :catch_9c
    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    return-void

    :catch_a0
    move-exception v0

    goto/16 :goto_17d

    .line 177
    :cond_a3
    :try_start_a3
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-string v10, "UTF-8"

    invoke-direct {v0, v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_c2} :catch_174
    .catchall {:try_start_a3 .. :try_end_c2} :catchall_172

    .line 182
    :goto_c2
    :try_start_c2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15b

    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v10, v0

    if-ne v10, v9, :cond_154

    .line 186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    .line 187
    aget-object v15, v0, v10

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11d

    .line 188
    iget-object v10, v1, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v9}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/16 v17, 0x1

    aget-object v15, v0, v17

    .line 189
    invoke-static {v14, v15}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v9

    move-object/from16 v18, v5

    const/4 v15, 0x2

    aget-object v5, v0, v15

    .line 190
    invoke-static {v13, v5}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v0, v0, v9

    .line 191
    invoke-virtual {v5, v0}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    .line 188
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    :cond_11d
    move-object/from16 v18, v5

    const/4 v5, 0x3

    .line 192
    aget-object v9, v0, v5

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_156

    .line 193
    iget-object v5, v1, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v9}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    const/4 v10, 0x1

    aget-object v15, v0, v10

    .line 194
    invoke-static {v14, v15}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v15, v0, v10

    .line 195
    invoke-static {v13, v15}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v0, v0, v10

    .line 196
    invoke-virtual {v9, v0}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    .line 193
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_153} :catch_16f
    .catchall {:try_start_c2 .. :try_end_153} :catchall_16c

    goto :goto_156

    :cond_154
    move-object/from16 v18, v5

    :cond_156
    :goto_156
    move-object/from16 v5, v18

    const/4 v9, 0x4

    goto/16 :goto_c2

    .line 206
    :cond_15b
    :try_start_15b
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_15f

    goto :goto_162

    .line 208
    :catch_15f
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_162
    :try_start_162
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_165} :catch_167

    goto/16 :goto_30f

    .line 216
    :catch_167
    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30f

    :catchall_16c
    move-exception v0

    move-object v15, v12

    goto :goto_1a9

    :catch_16f
    move-exception v0

    move-object v15, v12

    goto :goto_17d

    :catchall_172
    move-exception v0

    goto :goto_178

    :catch_174
    move-exception v0

    goto :goto_17c

    :catchall_176
    move-exception v0

    const/4 v2, 0x0

    :goto_178
    const/4 v15, 0x0

    goto :goto_1a9

    :catch_17a
    move-exception v0

    const/4 v2, 0x0

    :goto_17c
    const/4 v15, 0x0

    .line 201
    :goto_17d
    :try_start_17d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown exception : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_195
    .catchall {:try_start_17d .. :try_end_195} :catchall_1a8

    if-eqz v15, :cond_19e

    .line 206
    :try_start_197
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19a} :catch_19b

    goto :goto_19e

    .line 208
    :catch_19b
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19e
    :goto_19e
    if-eqz v2, :cond_1a7

    .line 214
    :try_start_1a0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a3} :catch_1a4

    goto :goto_1a7

    .line 216
    :catch_1a4
    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a7
    :goto_1a7
    return-void

    :catchall_1a8
    move-exception v0

    :goto_1a9
    if-eqz v15, :cond_1b2

    .line 206
    :try_start_1ab
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1ae} :catch_1af

    goto :goto_1b2

    .line 208
    :catch_1af
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b2
    :goto_1b2
    if-eqz v2, :cond_1bb

    .line 214
    :try_start_1b4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b7} :catch_1b8

    goto :goto_1bb

    .line 216
    :catch_1b8
    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1bb
    :goto_1bb
    throw v0

    .line 222
    :cond_1bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.samsung.android.sm.policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "policy_item"

    .line 223
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "HmtThridPartyDevicePolicy"

    .line 225
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 229
    :try_start_1e0
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1f2} :catch_2ba
    .catchall {:try_start_1e0 .. :try_end_1f2} :catchall_2b7

    if-nez v3, :cond_1ff

    :try_start_1f4
    const-string v0, "It can\'t query the HmtThridPartyDevicePolicy policy URI"

    .line 231
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1f9} :catch_2b4
    .catchall {:try_start_1f4 .. :try_end_1f9} :catchall_2b1

    if-eqz v3, :cond_1fe

    .line 275
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1fe
    return-void

    .line 235
    :cond_1ff
    :try_start_1ff
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    :cond_209
    :goto_209
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_20d} :catch_2b4
    .catchall {:try_start_1ff .. :try_end_20d} :catchall_2b1

    if-eqz v0, :cond_2ad

    const/4 v0, 0x1

    .line 244
    :try_start_210
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_214} :catch_226
    .catchall {:try_start_210 .. :try_end_214} :catchall_2b1

    const/4 v5, 0x2

    .line 245
    :try_start_215
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_219} :catch_227
    .catchall {:try_start_215 .. :try_end_219} :catchall_2b1

    const/4 v10, 0x3

    .line 246
    :try_start_21a
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_21e} :catch_228
    .catchall {:try_start_21a .. :try_end_21e} :catchall_2b1

    const/4 v15, 0x4

    .line 247
    :try_start_21f
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_223} :catch_229
    .catchall {:try_start_21f .. :try_end_223} :catchall_2b1

    move-object/from16 v0, v16

    goto :goto_22d

    :catch_226
    const/4 v5, 0x2

    :catch_227
    const/4 v10, 0x3

    :catch_228
    const/4 v15, 0x4

    :catch_229
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_22d
    if-eqz v4, :cond_209

    if-eqz v9, :cond_209

    if-eqz v12, :cond_209

    if-nez v0, :cond_236

    goto :goto_209

    .line 258
    :cond_236
    :try_start_236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_283

    .line 260
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v5}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 261
    invoke-static {v14, v9}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v5

    .line 262
    invoke-static {v13, v12}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v5

    .line 263
    invoke-virtual {v5, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v4

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_209

    .line 264
    :cond_283
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_209

    .line 265
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v5}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 266
    invoke-static {v14, v9}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v5

    .line 267
    invoke-static {v13, v12}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v5

    .line 268
    invoke-virtual {v5, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v4

    .line 265
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_2ab} :catch_2b4
    .catchall {:try_start_236 .. :try_end_2ab} :catchall_2b1

    goto/16 :goto_209

    .line 275
    :cond_2ad
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2c7

    :catchall_2b1
    move-exception v0

    move-object v15, v3

    goto :goto_311

    :catch_2b4
    move-exception v0

    move-object v15, v3

    goto :goto_2bc

    :catchall_2b7
    move-exception v0

    const/4 v15, 0x0

    goto :goto_311

    :catch_2ba
    move-exception v0

    const/4 v15, 0x0

    :goto_2bc
    :try_start_2bc
    const-string/jumbo v2, "updateSupportDevicePolicy for HmtDevice"

    .line 272
    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c2
    .catchall {:try_start_2bc .. :try_end_2c2} :catchall_310

    if-eqz v15, :cond_2c7

    .line 275
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_2c7
    :goto_2c7
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    iget-object v0, v1, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadThirdPartyDevices size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPowerLimitingDevices size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30f
    return-void

    :catchall_310
    move-exception v0

    :goto_311
    if-eqz v15, :cond_316

    .line 275
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_316
    throw v0
.end method
