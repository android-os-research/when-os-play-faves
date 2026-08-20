.class public Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
.super Ljava/lang/Object;
.source "SemWifiPackageInfo.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiPackageInfo"

.field public static final WIFI_APPLICATION_CATEGORY_NONE_QUERY_MAX:I = 0x3

.field public static final WIFI_DATA_USAGE_HIGH:I = 0x3

.field public static final WIFI_DATA_USAGE_LOW:I = 0x1

.field public static final WIFI_DATA_USAGE_MID:I = 0x2

.field public static final WIFI_DATA_USAGE_NONE:I = 0x0

.field public static final WIFI_USAGE_PATTERN_BROWSER:I = 0x3

.field public static final WIFI_USAGE_PATTERN_CHAT:I = 0x2

.field public static final WIFI_USAGE_PATTERN_NONE:I = 0x0

.field public static final WIFI_USAGE_PATTERN_RADIO:I = 0x1

.field public static final WIFI_USAGE_PATTERN_STREAMING:I = 0x4


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryUpdateFailCount:I

.field private mDataUsage:I

.field private mDetectedCount:I

.field private mHasInternetPermission:Z

.field private mIsBrowsingApp:Z

.field private mIsChattingApp:Z

.field private mIsGamingApp:Z

.field private mIsLaunchableApp:Z

.field private mIsSwitchable:Z

.field private mIsSystemApp:Z

.field private mIsVoip:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field private mUsagePattern:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->DBG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZZZZZIIIIZ)V
    .registers 16

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    .line 82
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 84
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 85
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 86
    iput-boolean p6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 87
    iput-boolean p7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 88
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 89
    iput-boolean p9, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 90
    iput-boolean p10, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 91
    iput p11, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 92
    iput p12, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 93
    iput p13, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 94
    iput p14, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 95
    iput-boolean p15, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 44
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 50
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    const-string p2, "NONE"

    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 54
    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isChatApp(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 56
    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3b

    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    const-string v1, "GAME"

    if-ne p2, v1, :cond_39

    goto :goto_3b

    :cond_39
    move p2, v0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p2, 0x1

    :goto_3c
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 58
    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isBrowserApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 59
    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    if-eqz p2, :cond_50

    const-string p2, "SYSTEM"

    .line 61
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 63
    :cond_50
    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isLauchablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updateSwitchable()V

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 69
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 71
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    const-string p2, "android.permission.INTERNET"

    .line 73
    invoke-static {p1, p3, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 74
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->DBG:Z

    if-eqz p1, :cond_87

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CREATED - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiPackageInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NONE"

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 44
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDataUsage()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUsagePattern()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    return-void
.end method

.method private getSwitchable()Z
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 215
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSkipCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSamsungPackage()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGooglePackage()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_3e

    :cond_3d
    return v1

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return p0
.end method

.method private isGooglePackage()Z
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v1, "com.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    const-string v0, "com.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private isSamsungPackage()Z
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v1, "com.samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    const-string v0, "com.sec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private isSkipCategory(Ljava/lang/String;)Z
    .registers 5

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_170

    goto/16 :goto_154

    :sswitch_f
    const-string p0, "FAILED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_154

    :cond_19
    const/16 v2, 0x18

    goto/16 :goto_154

    :sswitch_1d
    const-string p0, "EVENTS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_154

    :cond_27
    const/16 v2, 0x17

    goto/16 :goto_154

    :sswitch_2b
    const-string p0, "BEAUTY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_154

    :cond_35
    const/16 v2, 0x16

    goto/16 :goto_154

    :sswitch_39
    const-string p0, "WEATHER"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_154

    :cond_43
    const/16 v2, 0x15

    goto/16 :goto_154

    :sswitch_47
    const-string p0, "NEWS_AND_MAGAZINES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_154

    :cond_51
    const/16 v2, 0x14

    goto/16 :goto_154

    :sswitch_55
    const-string p0, "ART_AND_DESIGN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_154

    :cond_5f
    const/16 v2, 0x13

    goto/16 :goto_154

    :sswitch_63
    const-string p0, "PERSONALIZATION"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto/16 :goto_154

    :cond_6d
    const/16 v2, 0x12

    goto/16 :goto_154

    :sswitch_71
    const-string p0, "MEDICAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto/16 :goto_154

    :cond_7b
    const/16 v2, 0x11

    goto/16 :goto_154

    :sswitch_7f
    const-string p0, "MAPS_AND_NAVIGATION"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto/16 :goto_154

    :cond_89
    const/16 v2, 0x10

    goto/16 :goto_154

    :sswitch_8d
    const-string p0, "TRAVEL_AND_LOCAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_154

    :cond_97
    const/16 v2, 0xf

    goto/16 :goto_154

    :sswitch_9b
    const-string p0, "HEALTH_AND_FITNESS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_154

    :cond_a5
    const/16 v2, 0xe

    goto/16 :goto_154

    :sswitch_a9
    const-string p0, "PARENTING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_154

    :cond_b3
    const/16 v2, 0xd

    goto/16 :goto_154

    :sswitch_b7
    const-string p0, "SHOPPING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_154

    :cond_c1
    const/16 v2, 0xc

    goto/16 :goto_154

    :sswitch_c5
    const-string p0, "VIDEO_PLAYERS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_154

    :cond_cf
    const/16 v2, 0xb

    goto/16 :goto_154

    :sswitch_d3
    const-string p0, "NOT_POPULAR"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto/16 :goto_154

    :cond_dd
    const/16 v2, 0xa

    goto/16 :goto_154

    :sswitch_e1
    const-string p0, "TOOLS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto/16 :goto_154

    :cond_eb
    const/16 v2, 0x9

    goto/16 :goto_154

    :sswitch_ef
    const-string p0, "NONE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    goto/16 :goto_154

    :cond_f9
    const/16 v2, 0x8

    goto/16 :goto_154

    :sswitch_fd
    const-string p0, "GAME"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_106

    goto :goto_154

    :cond_106
    const/4 v2, 0x7

    goto :goto_154

    :sswitch_108
    const-string p0, "FINANCE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_111

    goto :goto_154

    :cond_111
    const/4 v2, 0x6

    goto :goto_154

    :sswitch_113
    const-string p0, "AUTO_AND_VEHICLES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11c

    goto :goto_154

    :cond_11c
    const/4 v2, 0x5

    goto :goto_154

    :sswitch_11e
    const-string p0, "PHOTOGRAPHY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_127

    goto :goto_154

    :cond_127
    const/4 v2, 0x4

    goto :goto_154

    :sswitch_129
    const-string p0, "PRODUCTIVITY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_132

    goto :goto_154

    :cond_132
    const/4 v2, 0x3

    goto :goto_154

    :sswitch_134
    const-string p0, "SYSTEM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13d

    goto :goto_154

    :cond_13d
    const/4 v2, 0x2

    goto :goto_154

    :sswitch_13f
    const-string p0, "SPORTS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_148

    goto :goto_154

    :cond_148
    move v2, v0

    goto :goto_154

    :sswitch_14a
    const-string p0, "LIBRARIES_AND_DEMO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_153

    goto :goto_154

    :cond_153
    move v2, v1

    :goto_154
    packed-switch v2, :pswitch_data_1d6

    return v1

    .line 249
    :pswitch_158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSkipCategory - skip:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiPackageInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :sswitch_data_170
    .sparse-switch
        -0x70dd2d8f -> :sswitch_14a
        -0x6dd14481 -> :sswitch_13f
        -0x6d5099d1 -> :sswitch_134
        -0x38da472e -> :sswitch_129
        -0x1c08b283 -> :sswitch_11e
        -0xbfb7f21 -> :sswitch_113
        -0x8102446 -> :sswitch_108
        0x2143f2 -> :sswitch_fd
        0x24a738 -> :sswitch_ef
        0x4c4d1bb -> :sswitch_e1
        0x6acf12d -> :sswitch_d3
        0x114585ae -> :sswitch_c5
        0x1a1de168 -> :sswitch_b7
        0x217ee6d8 -> :sswitch_a9
        0x2a02d9dd -> :sswitch_9b
        0x3314b7de -> :sswitch_8d
        0x5250f444 -> :sswitch_7f
        0x62dea671 -> :sswitch_71
        0x6a0cb204 -> :sswitch_63
        0x6b2d08c2 -> :sswitch_55
        0x7242be4b -> :sswitch_47
        0x73b7c3d4 -> :sswitch_39
        0x748b047c -> :sswitch_2b
        0x7a9ad519 -> :sswitch_1d
        0x7b29883d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
    .end packed-switch
.end method


# virtual methods
.method public addCategoryUpdateFailCount()V
    .registers 2

    .line 318
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getCategoryUpdateFailCount()I
    .registers 1

    .line 314
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    return p0
.end method

.method public getDataUsage()I
    .registers 1

    .line 286
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    return p0
.end method

.method public getDetectedCount()I
    .registers 1

    .line 276
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 140
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    return p0
.end method

.method public getUsagePattern()I
    .registers 1

    .line 291
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    return p0
.end method

.method public hasInternetPermission()Z
    .registers 1

    .line 322
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    return p0
.end method

.method public isBrowsingApp()Z
    .registers 1

    .line 170
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    return p0
.end method

.method public isChatApp()Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    return p0
.end method

.method public isGamingApp()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    return p0
.end method

.method public isLaunchable()Z
    .registers 1

    .line 271
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    return p0
.end method

.method public isSwitchable()Z
    .registers 1

    .line 191
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    return p0
.end method

.method public isSystemApp()Z
    .registers 1

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    return p0
.end method

.method public isVoip()Z
    .registers 1

    .line 155
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    return p0
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updateSwitchable()V

    return-void
.end method

.method public setDetectedCount(I)V
    .registers 2

    .line 281
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    return-void
.end method

.method public setIsVoip(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UID:"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", PackageName:"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Category:"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", ChattingApp:"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", VoIP:"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", Game:"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", Browsing:"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", SystemApp:"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", Launchable:"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", Switchable:"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", DetectedCount:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", DataUsage:"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", UsagePattern:"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", CategoryUpdateFailCount:"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", HasInternetPermission:"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", IsSamsungPackage:"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSamsungPackage()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePackageInfo(Landroid/content/Context;)V
    .registers 6

    .line 295
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SemWifiPackageInfo"

    const-string v1, "updatePackageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    if-nez v0, :cond_17

    .line 297
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isChatApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 299
    :cond_17
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_31

    .line 300
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    const-string v3, "GAME"

    if-ne v0, v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v0, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 303
    :cond_31
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isBrowserApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3d
    move v1, v2

    :cond_3e
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 304
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    if-eqz v0, :cond_4e

    const-string v0, "SYSTEM"

    .line 306
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 308
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isLauchablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updateSwitchable()V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "android.permission.INTERNET"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    return-void
.end method

.method public updateSwitchable()V
    .registers 2

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getSwitchable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    return-void
.end method
