.class public final Lcom/android/server/sepunion/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static final FEATURE_COVER_ACCESSARY_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.nfc_authentication_cover"

.field public static final FEATURE_COVER_CLEARCOVER:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field public static final FEATURE_COVER_CLEAR_CAMERA_VIEW_COVER:Ljava/lang/String; = "com.sec.feature.cover.clearcameraviewcover"

.field public static final FEATURE_COVER_CLEAR_SIDE_VIEW_COVER:Ljava/lang/String; = "com.sec.feature.cover.clearsideviewcover"

.field public static final FEATURE_COVER_GAMEPACK_COVER:Ljava/lang/String; = "com.sec.feature.cover.gamepackcover"

.field public static final FEATURE_COVER_LED_BACK_COVER:Ljava/lang/String; = "com.sec.feature.cover.ledbackcover"

.field public static final FEATURE_COVER_MINI_SVIEW_WALLET_COVER:Ljava/lang/String; = "com.sec.feature.cover.minisviewwalletcover"

.field public static final FEATURE_COVER_NEONCOVER:Ljava/lang/String; = "com.sec.feature.cover.neoncover"

.field public static final FEATURE_COVER_NFC_LED_COVER:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field public static final FEATURE_COVER_SECURE_COVER:Ljava/lang/String; = "com.sec.feature.cover.securecover"

.field public static final NFC_LED_COVER_FEATURE_LEVEL:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

.field public static final NFC_LED_COVER_LEVEL_BEYOND:I = 0x3c

.field public static final NFC_LED_COVER_LEVEL_DAVINCI:I = 0x46

.field public static final NFC_LED_COVER_LEVEL_DREAM:I = 0x1e

.field public static final NFC_LED_COVER_LEVEL_GRACE:I = 0x14

.field public static final NFC_LED_COVER_LEVEL_GREAT:I = 0x28

.field public static final NFC_LED_COVER_LEVEL_HERO:I = 0xa

.field public static final NFC_LED_COVER_LEVEL_HUBBLE:I = 0x50

.field public static final NFC_LED_COVER_LEVEL_RAINBOW:I = 0x64

.field public static final NFC_LED_COVER_LEVEL_STAR:I = 0x32

.field public static final NFC_LED_COVER_LEVEL_UNBOUND:I = 0x5a

.field public static sDeviceTypeProperty:Ljava/lang/String; = null

.field public static sHardwareProperty:Ljava/lang/String; = null

.field public static sInstance:Lcom/android/server/sepunion/cover/Feature; = null

.field public static sIsDeviceSupportDetectCover:Z = false

.field public static sIsDeviceSupportQueried:Z = false

.field public static sIsDeviceSupportVerifyCover:Z = false

.field public static sIsNfcAuthSystemFeatureEnabled:Z = false

.field public static sIsSupportClearCameraViewCover:Z = false

.field public static sIsSupportClearCover:Z = false

.field public static sIsSupportClearSideViewCover:Z = false

.field public static sIsSupportFlipCover:Z = false

.field public static sIsSupportGamePackCover:Z = false

.field public static sIsSupportLEDBackCover:Z = false

.field public static sIsSupportMiniSviewWalletCover:Z = false

.field public static sIsSupportNeonCover:Z = false

.field public static sIsSupportNfcLedCover:Z = false

.field public static sIsSupportSecureCover:Z = false

.field public static sIsSystemFeatureQueried:Z = false

.field public static sSupportNfcLedCoverLevel:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->getSystemProperties()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/Feature;->updateSystemFeature(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->updateDeviceSupportFeature()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;
    .registers 2

    .line 87
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    if-nez v0, :cond_b

    .line 88
    new-instance v0, Lcom/android/server/sepunion/cover/Feature;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/Feature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    .line 90
    :cond_b
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p0, " Current Feature state:"

    .line 202
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  sIsDeviceSupportVerifyCover="

    .line 203
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsDeviceSupportDetectCover="

    .line 204
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportFlipCover="

    .line 205
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsSupportNfcLedCover="

    .line 206
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsSupportClearCover="

    .line 207
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsNfcAuthSystemFeatureEnabled="

    .line 208
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, "  sIsSupportNeonCover="

    .line 209
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sSupportNfcLedCoverLevel="

    .line 210
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  sIsSupportGamePackCover="

    .line 211
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportLEDBackCover="

    .line 212
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportSecureCover="

    .line 213
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportClearSideViewCover="

    .line 214
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportMiniSviewWalletCover="

    .line 215
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sIsSupportClearCameraViewCover="

    .line 216
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  "

    .line 217
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getSupportNfcLedCoverLevel()I
    .registers 1

    .line 198
    sget p0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    return p0
.end method

.method public final getSystemProperties()V
    .registers 1

    .line 129
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez p0, :cond_d

    const-string/jumbo p0, "ro.hardware"

    .line 130
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 132
    :cond_d
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez p0, :cond_1a

    const-string/jumbo p0, "ro.build.characteristics"

    .line 133
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    :cond_1a
    return-void
.end method

.method public isChinaModel()Z
    .registers 2

    const-string/jumbo p0, "ro.csc.country_code"

    .line 194
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CHINA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNfcAuthEnabled()Z
    .registers 1

    .line 154
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    return p0
.end method

.method public isSupportClearCameraViewCover()Z
    .registers 1

    .line 186
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    return p0
.end method

.method public isSupportClearCover()Z
    .registers 1

    .line 150
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    return p0
.end method

.method public isSupportClearSideViewCover()Z
    .registers 1

    .line 178
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    return p0
.end method

.method public isSupportDetectCover()Z
    .registers 1

    .line 142
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    return p0
.end method

.method public isSupportFlipCover()Z
    .registers 1

    .line 146
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    return p0
.end method

.method public isSupportGamePackCover()Z
    .registers 1

    .line 166
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    return p0
.end method

.method public isSupportLEDBackCover()Z
    .registers 1

    .line 170
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    return p0
.end method

.method public isSupportMiniSviewWalletCover()Z
    .registers 1

    .line 182
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    return p0
.end method

.method public isSupportNeonCover()Z
    .registers 1

    .line 162
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    return p0
.end method

.method public isSupportNfcLedCover()Z
    .registers 1

    .line 158
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSupportSecureCover()Z
    .registers 1

    .line 174
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    return p0
.end method

.method public isSupportVerifyCover()Z
    .registers 1

    .line 138
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    return p0
.end method

.method public isTablet()Z
    .registers 2

    .line 190
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-eqz p0, :cond_f

    const-string/jumbo v0, "tablet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final updateDeviceSupportFeature()V
    .registers 2

    .line 120
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez p0, :cond_24

    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    .line 121
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_17

    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    .line 122
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    move p0, v0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    const-string p0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    .line 123
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 124
    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    :cond_24
    return-void
.end method

.method public final updateSystemFeature(Landroid/content/Context;)V
    .registers 3

    .line 100
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    if-nez p0, :cond_6f

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.sec.feature.cover.flip"

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    const-string p1, "com.sec.feature.cover.clearcover"

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    const-string p1, "com.sec.feature.nfc_authentication_cover"

    .line 104
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    const-string p1, "com.sec.feature.cover.nfcledcover"

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    const-string p1, "com.sec.feature.cover.gamepackcover"

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    const-string p1, "com.sec.feature.cover.ledbackcover"

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    .line 108
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    const-string p1, "com.sec.feature.cover.neoncover"

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    const-string p1, "com.sec.feature.cover.securecover"

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    const-string p1, "com.sec.feature.cover.clearsideviewcover"

    .line 111
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    const-string p1, "com.sec.feature.cover.minisviewwalletcover"

    .line 112
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    const-string p1, "com.sec.feature.cover.clearcameraviewcover"

    .line 113
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    const/4 p0, 0x1

    .line 115
    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    :cond_6f
    return-void
.end method
