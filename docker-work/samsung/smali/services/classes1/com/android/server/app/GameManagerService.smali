.class public final Lcom/android/server/app/GameManagerService;
.super Landroid/app/IGameManagerService$Stub;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/GameManagerService$Lifecycle;,
        Lcom/android/server/app/GameManagerService$GamePackageConfiguration;,
        Lcom/android/server/app/GameManagerService$FrameRate;,
        Lcom/android/server/app/GameManagerService$DeviceConfigListener;,
        Lcom/android/server/app/GameManagerService$SettingsHandler;
    }
.end annotation


# static fields
.field public static final CANCEL_GAME_LOADING_MODE:I = 0x5

.field public static final COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

.field public static final COMPAT_ENABLED:Landroid/app/compat/PackageOverride;

.field public static final DEBUG:Z = false

.field public static final LOADING_BOOST_MAX_DURATION:I = 0x1388

.field public static final PACKAGE_NAME_MSG_KEY:Ljava/lang/String; = "packageName"

.field public static final POPULATE_GAME_MODE_SETTINGS:I = 0x3

.field public static final REMOVE_SETTINGS:I = 0x2

.field public static final SET_GAME_STATE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "GameManagerService"

.field public static final USER_ID_MSG_KEY:Ljava/lang/String; = "userId"

.field public static final WRITE_SETTINGS:I = 0x1

.field public static final WRITE_SETTINGS_DELAY:I = 0x2710


# instance fields
.field public final mConfigs:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceConfigLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/app/GameManagerService$GamePackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

.field public final mDeviceConfigLock:Ljava/lang/Object;

.field public final mGameServiceController:Lcom/android/server/app/GameServiceController;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mOverrideConfigLock:Ljava/lang/Object;

.field public final mOverrideConfigs:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOverrideConfigLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/app/GameManagerService$GamePackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mSettings:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameManagerSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EPYXImIbGKy01Rze_VvqcNpRMWg(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->lambda$getInstalledGamePackageNames$1(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rv9cNwmixN5RtvOiVJKX4NwyDcw(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->lambda$getInstalledGamePackageNames$0(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_Hcta-dCGh5VLed3dPcTZq_ORAM(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->lambda$getInstalledGamePackageNames$2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/app/GameManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOverrideConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOverrideConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterDeviceConfigListener(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerDeviceConfigListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterPackageReceiver(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerPackageReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgameStateModeToStatsdGameState(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->gameStateModeToStatsdGameState(I)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 128
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v0

    sput-object v0, Lcom/android/server/app/GameManagerService;->COMPAT_ENABLED:Landroid/app/compat/PackageOverride;

    .line 130
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v0

    sput-object v0, Lcom/android/server/app/GameManagerService;->COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 154
    invoke-static {}, Lcom/android/server/app/GameManagerService;->createServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7

    .line 157
    invoke-direct {p0}, Landroid/app/IGameManagerService$Stub;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 146
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    .line 158
    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/android/server/app/GameManagerService$SettingsHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/app/GameManagerService$SettingsHandler;-><init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo p2, "platform_compat"

    .line 162
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 161
    invoke-static {p2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/app/GameManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 163
    const-class p2, Landroid/os/PowerManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManagerInternal;

    iput-object p2, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.software.game_service"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 165
    new-instance p2, Lcom/android/server/app/GameServiceController;

    .line 166
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderSelectorImpl;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/app/GameServiceProviderSelectorImpl;-><init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V

    new-instance v2, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    invoke-direct {v2, p1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/android/server/app/GameServiceController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelector;Lcom/android/server/app/GameServiceProviderInstanceFactory;)V

    iput-object p2, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    goto :goto_80

    :cond_7d
    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    :goto_80
    return-void
.end method

.method public static createServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 1652
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "GameManagerService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1654
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method

.method public static gameStateModeToStatsdGameState(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    return v0
.end method

.method public static getCompatChangeId(Ljava/lang/String;)J
    .registers 3

    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_e4

    goto/16 :goto_aa

    :sswitch_d
    const-string v0, "0.85"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_aa

    :cond_17
    const/16 v1, 0xc

    goto/16 :goto_aa

    :sswitch_1b
    const-string v0, "0.75"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_aa

    :cond_25
    const/16 v1, 0xb

    goto/16 :goto_aa

    :sswitch_29
    const-string v0, "0.65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_aa

    :cond_33
    const/16 v1, 0xa

    goto/16 :goto_aa

    :sswitch_37
    const-string v0, "0.55"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_aa

    :cond_41
    const/16 v1, 0x9

    goto/16 :goto_aa

    :sswitch_45
    const-string v0, "0.45"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto/16 :goto_aa

    :cond_4f
    const/16 v1, 0x8

    goto/16 :goto_aa

    :sswitch_53
    const-string v0, "0.35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto :goto_aa

    :cond_5c
    const/4 v1, 0x7

    goto :goto_aa

    :sswitch_5e
    const-string v0, "0.9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto :goto_aa

    :cond_67
    const/4 v1, 0x6

    goto :goto_aa

    :sswitch_69
    const-string v0, "0.8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto :goto_aa

    :cond_72
    const/4 v1, 0x5

    goto :goto_aa

    :sswitch_74
    const-string v0, "0.7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d

    goto :goto_aa

    :cond_7d
    const/4 v1, 0x4

    goto :goto_aa

    :sswitch_7f
    const-string v0, "0.6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_88

    goto :goto_aa

    :cond_88
    const/4 v1, 0x3

    goto :goto_aa

    :sswitch_8a
    const-string v0, "0.5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto :goto_aa

    :cond_93
    const/4 v1, 0x2

    goto :goto_aa

    :sswitch_95
    const-string v0, "0.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    goto :goto_aa

    :cond_9e
    const/4 v1, 0x1

    goto :goto_aa

    :sswitch_a0
    const-string v0, "0.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v1, 0x0

    :goto_aa
    packed-switch v1, :pswitch_data_11a

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_b0
    const-wide/32 v0, 0xb52b546

    return-wide v0

    :pswitch_b4
    const-wide/32 v0, 0xb52b573

    return-wide v0

    :pswitch_b8
    const-wide/32 v0, 0xb52b550

    return-wide v0

    :pswitch_bc
    const-wide/32 v0, 0xb52b674

    return-wide v0

    :pswitch_c0
    const-wide/32 v0, 0xb52b576

    return-wide v0

    :pswitch_c4
    const-wide/32 v0, 0xb52b555

    return-wide v0

    :pswitch_c8
    const-wide/32 v0, 0xae57a6b

    return-wide v0

    :pswitch_cc
    const-wide/32 v0, 0xa8bb021

    return-wide v0

    :pswitch_d0
    const-wide/32 v0, 0xa8bb06d

    return-wide v0

    :pswitch_d4
    const-wide/32 v0, 0xa8bb033

    return-wide v0

    :pswitch_d8
    const-wide/32 v0, 0xa8bb015

    return-wide v0

    :pswitch_dc
    const-wide/32 v0, 0xb52b676

    return-wide v0

    :pswitch_e0
    const-wide/32 v0, 0xb52b678

    return-wide v0

    :sswitch_data_e4
    .sparse-switch
        0xb9f5 -> :sswitch_a0
        0xb9f6 -> :sswitch_95
        0xb9f7 -> :sswitch_8a
        0xb9f8 -> :sswitch_7f
        0xb9f9 -> :sswitch_74
        0xb9fa -> :sswitch_69
        0xb9fb -> :sswitch_5e
        0x1684e0 -> :sswitch_53
        0x1684ff -> :sswitch_45
        0x16851e -> :sswitch_37
        0x16853d -> :sswitch_29
        0x16855c -> :sswitch_1b
        0x16857b -> :sswitch_d
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
    .end packed-switch
.end method

.method public static getFpsInt(Ljava/lang/String;)I
    .registers 3

    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_90

    goto/16 :goto_64

    :sswitch_d
    const-string v0, "disable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_64

    :cond_16
    const/4 v1, 0x7

    goto :goto_64

    :sswitch_18
    const-string v0, "120"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_64

    :cond_21
    const/4 v1, 0x6

    goto :goto_64

    :sswitch_23
    const-string v0, "90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_64

    :cond_2c
    const/4 v1, 0x5

    goto :goto_64

    :sswitch_2e
    const-string v0, "60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_64

    :cond_37
    const/4 v1, 0x4

    goto :goto_64

    :sswitch_39
    const-string v0, "45"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_64

    :cond_42
    const/4 v1, 0x3

    goto :goto_64

    :sswitch_44
    const-string v0, "40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto :goto_64

    :cond_4d
    const/4 v1, 0x2

    goto :goto_64

    :sswitch_4f
    const-string v0, "30"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_64

    :cond_58
    const/4 v1, 0x1

    goto :goto_64

    :sswitch_5a
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    packed-switch v1, :pswitch_data_b2

    .line 403
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_INVALID:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    .line 398
    :pswitch_6c
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_120:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    .line 396
    :pswitch_71
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_90:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    .line 394
    :pswitch_76
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_60:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    .line 392
    :pswitch_7b
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_45:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    .line 390
    :pswitch_80
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_40:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    .line 388
    :pswitch_85
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_30:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    .line 401
    :pswitch_8a
    sget-object p0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_DEFAULT:Lcom/android/server/app/GameManagerService$FrameRate;

    iget p0, p0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return p0

    nop

    :sswitch_data_90
    .sparse-switch
        0x0 -> :sswitch_5a
        0x65d -> :sswitch_4f
        0x67c -> :sswitch_44
        0x681 -> :sswitch_39
        0x6ba -> :sswitch_2e
        0x717 -> :sswitch_23
        0xbe2f -> :sswitch_18
        0x639e22e8 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_8a
    .end packed-switch
.end method

.method public static synthetic lambda$getInstalledGamePackageNames$0(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 1534
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_a

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static synthetic lambda$getInstalledGamePackageNames$1(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 1

    .line 1536
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$getInstalledGamePackageNames$2(I)[Ljava/lang/String;
    .registers 1

    .line 1537
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static native nativeSetOverrideFrameRate(IF)V
.end method


# virtual methods
.method public final bitFieldContainsModeBitmask(II)Z
    .registers 3

    .line 1245
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 808
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 810
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableCompatScale(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "GameManagerService"

    .line 1156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1158
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling downscale for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-wide/32 v4, 0xa09e1d7

    .line 1160
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/android/server/app/GameManagerService;->COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    new-instance v4, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v4, v3}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_40

    .line 1164
    :try_start_30
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, v4, p1}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_40

    goto :goto_3c

    :catch_36
    move-exception p0

    :try_start_37
    const-string p1, "Failed to call IPlatformCompat#putOverridesOnReleaseBuilds"

    .line 1166
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_40

    .line 1169
    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_40
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 184
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_37

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump GameManagerService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_37
    if-eqz p3, :cond_3c

    .line 191
    array-length p1, p3

    if-nez p1, :cond_44

    :cond_3c
    const-string p1, "*Dump GameManagerService*"

    .line 192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService;->dumpAllGameConfigs(Ljava/io/PrintWriter;)V

    :cond_44
    return-void
.end method

.method public final dumpAllGameConfigs(Ljava/io/PrintWriter;)V
    .registers 6

    .line 198
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v0

    .line 200
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/server/app/GameManagerService;->getInterventionList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method public final dumpDeviceConfigs()Ljava/lang/String;
    .registers 5

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1628
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[\nName: "

    .line 1629
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nConfig: "

    .line 1630
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1632
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final enableCompatScale(Ljava/lang/String;J)V
    .registers 13

    const-string v0, "GameManagerService"

    .line 1187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1189
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling downscale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-wide/32 v4, 0xa09e1d7

    .line 1191
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/android/server/app/GameManagerService;->COMPAT_ENABLED:Landroid/app/compat/PackageOverride;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v6, 0xb52b678

    .line 1192
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v6, Lcom/android/server/app/GameManagerService;->COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xb52b555

    .line 1193
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xb52b676

    .line 1194
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xb52b576

    .line 1195
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xa8bb015

    .line 1196
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xb52b674

    .line 1197
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xa8bb033

    .line 1198
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xb52b550

    .line 1199
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xa8bb06d

    .line 1200
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xb52b573

    .line 1201
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xa8bb021

    .line 1202
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xb52b546

    .line 1203
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v7, 0xae57a6b

    .line 1204
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    new-instance p2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {p2, v3}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V
    :try_end_c3
    .catchall {:try_start_6 .. :try_end_c3} :catchall_d3

    .line 1209
    :try_start_c3
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, p2, p1}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c8} :catch_c9
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_d3

    goto :goto_cf

    :catch_c9
    move-exception p0

    :try_start_ca
    const-string p1, "Failed to call IPlatformCompat#putOverridesOnReleaseBuilds"

    .line 1211
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_ca .. :try_end_cf} :catchall_d3

    .line 1214
    :goto_cf
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d3
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1215
    throw p0
.end method

.method public getAvailableGameModes(Ljava/lang/String;)[I
    .registers 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_MODE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.MANAGE_GAME_MODE"

    .line 848
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getAvailableGameModesUnchecked(Ljava/lang/String;)[I
    .registers 4

    .line 817
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 819
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    if-nez v1, :cond_1f

    .line 821
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_11
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 823
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    if-nez v1, :cond_25

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    .line 828
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p0

    return-object p0

    :catchall_2a
    move-exception p0

    .line 819
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public getConfig(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1546
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1547
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1548
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    if-nez v1, :cond_1f

    .line 1550
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1551
    :try_start_11
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1552
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return-object v1

    :catchall_20
    move-exception p0

    .line 1548
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getGameMode(Ljava/lang/String;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 872
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getGameMode"

    const-string v6, "com.android.server.app.GameManagerService"

    move v2, p2

    .line 872
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 889
    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettings(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_26
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    .line 894
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettings(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getGameModeFromSettings(Ljava/lang/String;I)I
    .registers 6

    .line 853
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string p0, "GameManagerService"

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' does not have a Game Mode selected for package: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 857
    monitor-exit v0

    return p0

    .line 860
    :cond_35
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerSettings;->getGameModeLocked(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_47
    move-exception p0

    .line 861
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;
    .registers 10
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_MODE"
    .end annotation

    .line 908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getGameModeInfo"

    const-string v6, "com.android.server.app.GameManagerService"

    move v2, p2

    .line 908
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string v0, "android.permission.MANAGE_GAME_MODE"

    .line 913
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 p0, 0x0

    return-object p0

    .line 920
    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettings(Ljava/lang/String;I)I

    move-result p2

    .line 921
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;)[I

    move-result-object p0

    .line 923
    new-instance p1, Landroid/app/GameModeInfo;

    invoke-direct {p1, p2, p0}, Landroid/app/GameModeInfo;-><init>(I[I)V

    return-object p1
.end method

.method public final getInstalledGamePackageNames(I)[Ljava/lang/String;
    .registers 3

    .line 1532
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 1533
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 1534
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 1536
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 1537
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getInterventionList(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1462
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1464
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_44

    if-nez v1, :cond_1f

    .line 1467
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1468
    :try_start_11
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1469
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw p0

    .line 1472
    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_33

    const-string v0, "\n No intervention found for package "

    .line 1474
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    const-string p1, "\n"

    .line 1478
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_44
    move-exception p0

    .line 1464
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public getLoadingBoostDuration(Ljava/lang/String;I)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 995
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_8

    return v0

    .line 1000
    :cond_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_b
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez p0, :cond_17

    .line 1003
    monitor-exit v1

    return v0

    .line 1006
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_1f

    .line 1008
    monitor-exit v1

    return v0

    .line 1010
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getLoadingBoostDuration()I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_25
    move-exception p0

    .line 1011
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1c

    .line 1434
    invoke-static {p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result p2

    .line 1437
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result v1

    not-int v1, v1

    and-int/2addr p2, v1

    .line 1438
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    .line 1439
    invoke-virtual {p0, p2, v2}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result p0

    if-eqz p0, :cond_1e

    move p1, v2

    goto :goto_1f

    :cond_1c
    if-eqz p1, :cond_1f

    :cond_1e
    move p1, v0

    :cond_1f
    :goto_1f
    return p1
.end method

.method public isAngleEnabled(Ljava/lang/String;I)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_MODE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 968
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 973
    :cond_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 974
    :try_start_b
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez p0, :cond_17

    .line 976
    monitor-exit v1

    return v0

    .line 979
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_1f

    .line 981
    monitor-exit v1

    return v0

    .line 983
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getUseAngle()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_25
    move-exception p0

    .line 984
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final isPackageGame(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 833
    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x20000

    .line 834
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 835
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_e

    if-nez p0, :cond_e

    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
.end method

.method public final isValidPackageName(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 800
    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    .line 801
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_e

    if-ne p0, p1, :cond_e

    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
.end method

.method public final modeToBitmask(I)I
    .registers 2

    const/4 p0, 0x1

    shl-int/2addr p0, p1

    return p0
.end method

.method public notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    .registers 10
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_MODE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1021
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "notifyGraphicsEnvironmentSetup"

    const-string v6, "com.android.server.app.GameManagerService"

    move v2, p2

    .line 1021
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1026
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 1030
    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    .line 1034
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 1038
    :cond_29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_58

    const/16 p2, 0x1388

    if-eqz p1, :cond_36

    if-le p1, p2, :cond_37

    :cond_36
    move p1, p2

    .line 1043
    :cond_37
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 1047
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4e

    .line 1049
    :cond_46
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1052
    :goto_4e
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 1053
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    int-to-long v0, p1

    .line 1052
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_58
    return-void
.end method

.method public onBootCompleted()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "GameManagerService"

    const-string/jumbo v1, "onBootCompleted"

    .line 1081
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_f

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceController;->onBootComplete()V

    :cond_f
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 179
    new-instance v0, Lcom/android/server/app/GameManagerShellCommand;

    invoke-direct {v0}, Lcom/android/server/app/GameManagerShellCommand;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 1088
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1090
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1091
    :try_start_7
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1092
    new-instance v2, Lcom/android/server/app/GameManagerSettings;

    .line 1093
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/app/GameManagerSettings;-><init>(Ljava/io/File;)V

    .line 1094
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerSettings;->readPersistentDataLocked()Z

    .line 1097
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_43

    .line 1098
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1099
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1100
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1102
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_42

    .line 1103
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStarted(Lcom/android/server/SystemService$TargetUser;)V

    :cond_42
    return-void

    :catchall_43
    move-exception p0

    .line 1097
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

    .line 1114
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1116
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1117
    :try_start_7
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1118
    monitor-exit v1

    return-void

    .line 1120
    :cond_15
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1122
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1123
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_30

    .line 1125
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_2f

    .line 1126
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    :cond_2f
    return-void

    :catchall_30
    move-exception p0

    .line 1123
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 1131
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    if-eqz p1, :cond_30

    .line 1133
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1134
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1135
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1136
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1138
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1140
    :cond_2b
    monitor-exit v1

    goto :goto_30

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw p0

    .line 1142
    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1144
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1146
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_49

    .line 1147
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameServiceController;->notifyNewForegroundUser(Lcom/android/server/SystemService$TargetUser;)V

    :cond_49
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 1108
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_7

    .line 1109
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    :cond_7
    return-void
.end method

.method public final registerDeviceConfigListener()V
    .registers 2

    .line 1623
    new-instance v0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameManagerService$DeviceConfigListener;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    return-void
.end method

.method public final registerPackageReceiver()V
    .registers 4

    .line 1558
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1559
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1560
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 1561
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1562
    new-instance v1, Lcom/android/server/app/GameManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameManagerService$1;-><init>(Lcom/android/server/app/GameManagerService;)V

    .line 1618
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final resetFps(Ljava/lang/String;I)V
    .registers 3

    .line 1179
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    .line 1180
    invoke-static {p0, p1}, Lcom/android/server/app/GameManagerService;->nativeSetOverrideFrameRate(IF)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public resetGameModeConfigOverride(Ljava/lang/String;II)V
    .registers 12
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_MODE"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.MANAGE_GAME_MODE"

    .line 1360
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1363
    monitor-exit v0

    return-void

    .line 1365
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_a5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p3, v0, :cond_66

    .line 1371
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1372
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1373
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_63

    .line 1376
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1377
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1378
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_60

    .line 1380
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v3

    .line 1384
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_3a
    if-ge v5, v4, :cond_44

    aget v7, v3, v5

    if-ne p3, v7, :cond_41

    move v6, v1

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_44
    if-nez v6, :cond_47

    return-void

    .line 1395
    :cond_47
    array-length v3, v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_58

    .line 1396
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1397
    :try_start_4e
    iget-object p3, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    monitor-exit v3

    goto :goto_6f

    :catchall_55
    move-exception p0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw p0

    .line 1401
    :cond_58
    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V

    goto :goto_6f

    :catchall_60
    move-exception p0

    .line 1378
    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0

    :catchall_63
    move-exception p0

    .line 1373
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0

    .line 1404
    :cond_66
    iget-object p3, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1406
    :try_start_69
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    monitor-exit p3
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_a2

    .line 1412
    :goto_6f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p3

    .line 1415
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_76
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1417
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_9f

    if-nez v2, :cond_91

    .line 1419
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    :try_start_84
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1421
    monitor-exit v0

    goto :goto_91

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_8e

    throw p0

    .line 1423
    :cond_91
    :goto_91
    invoke-virtual {p0, p3, v2}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v0

    if-eq p3, v0, :cond_9b

    .line 1425
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    .line 1428
    :cond_9b
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    :catchall_9f
    move-exception p0

    .line 1417
    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0

    :catchall_a2
    move-exception p0

    .line 1407
    :try_start_a3
    monitor-exit p3
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p0

    :catchall_a5
    move-exception p0

    .line 1365
    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p0
.end method

.method public setGameMode(Ljava/lang/String;II)V
    .registers 12
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_MODE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.MANAGE_GAME_MODE"

    .line 934
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 941
    :cond_c
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 943
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setGameMode"

    const-string v7, "com.android.server.app.GameManagerService"

    move v3, p3

    .line 942
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 946
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 947
    monitor-exit v0

    return-void

    .line 949
    :cond_31
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    .line 950
    invoke-virtual {v1, p1, p2}, Lcom/android/server/app/GameManagerSettings;->setGameModeLocked(Ljava/lang/String;I)V

    .line 951
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 952
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 953
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 954
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 956
    :cond_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_f .. :try_end_61} :catchall_65

    .line 957
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V

    return-void

    :catchall_65
    move-exception p0

    .line 956
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_MODE"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.MANAGE_GAME_MODE"

    .line 1314
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1316
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1317
    monitor-exit v0

    return-void

    .line 1319
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_82

    .line 1321
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1323
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez v0, :cond_2e

    .line 1325
    new-instance v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)V

    .line 1326
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    :cond_2e
    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    if-eqz p4, :cond_38

    .line 1334
    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    goto :goto_3d

    :cond_38
    const-string p4, ""

    .line 1336
    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    :goto_3d
    if-eqz p5, :cond_43

    .line 1340
    invoke-virtual {v0, p5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setScaling(Ljava/lang/String;)V

    goto :goto_48

    :cond_43
    const-string p4, "1.0"

    .line 1342
    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setScaling(Ljava/lang/String;)V

    :goto_48
    const-string p4, "GameManagerService"

    .line 1345
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package Name: "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FPS: "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Scaling: "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1345
    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_1a .. :try_end_7b} :catchall_7f

    .line 1349
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    :catchall_7f
    move-exception p0

    .line 1348
    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p0

    :catchall_82
    move-exception p0

    .line 1319
    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public setGameServiceProvider(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.SET_GAME_SERVICE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.SET_GAME_SERVICE"

    .line 1067
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1069
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-nez p0, :cond_a

    return-void

    .line 1073
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setGameServiceProvider(Ljava/lang/String;)V

    return-void
.end method

.method public setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    .registers 7

    .line 415
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    .line 421
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 422
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 424
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateCompatModeDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;I)V
    .registers 9

    .line 1225
    invoke-virtual {p1, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p1

    const-string v0, "GameManagerService"

    if-nez p1, :cond_25

    .line 1227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Game mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1230
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getCompatChangeId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_4c

    .line 1232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid downscaling change id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1237
    :cond_4c
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/app/GameManagerService;->enableCompatScale(Ljava/lang/String;J)V

    return-void
.end method

.method public varargs updateConfigsForUser(I[Ljava/lang/String;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1489
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_89

    .line 1490
    :try_start_3
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_49

    aget-object v4, p2, v3

    .line 1491
    new-instance v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)V

    .line 1493
    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1497
    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_1b
    const-string v6, "GameManagerService"

    .line 1499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid package config for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1499
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1504
    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_86

    .line 1505
    :try_start_4a
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_89

    .line 1506
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1507
    monitor-exit v0

    return-void

    .line 1509
    :cond_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_83

    .line 1510
    :try_start_5c
    array-length v0, p2

    :goto_5d
    if-ge v2, v0, :cond_a8

    aget-object v1, p2, v2

    .line 1511
    invoke-virtual {p0, v1, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v3

    .line 1517
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_89

    .line 1518
    :try_start_68
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1519
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_80

    .line 1520
    :try_start_71
    invoke-virtual {p0, v3, v5}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v4

    if-eq v4, v3, :cond_7a

    .line 1522
    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 1524
    :cond_7a
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7d} :catch_89

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :catchall_80
    move-exception p0

    .line 1519
    :try_start_81
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    :try_start_82
    throw p0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_83} :catch_89

    :catchall_83
    move-exception p0

    .line 1509
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw p0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_89

    :catchall_86
    move-exception p0

    .line 1504
    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw p0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_89} :catch_89

    :catch_89
    move-exception p0

    const-string p2, "GameManagerService"

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update compat modes for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    return-void
.end method

.method public final updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V
    .registers 5

    .line 1258
    invoke-virtual {p1, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p1

    if-nez p1, :cond_25

    .line 1260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Game mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1264
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result p1

    int-to-float p1, p1

    .line 1265
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    .line 1266
    invoke-static {p0, p1}, Lcom/android/server/app/GameManagerService;->nativeSetOverrideFrameRate(IF)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

.method public final updateInterventions(Ljava/lang/String;II)V
    .registers 6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_54

    if-nez p2, :cond_6

    goto :goto_54

    .line 1283
    :cond_6
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1284
    :try_start_9
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1285
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_51

    if-nez v1, :cond_24

    .line 1288
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1289
    :try_start_17
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1290
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    :goto_24
    if-nez v1, :cond_40

    .line 1294
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->disableCompatScale(Ljava/lang/String;)V

    const-string p0, "GameManagerService"

    .line 1295
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package configuration not found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1298
    :cond_40
    invoke-virtual {v1, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    if-eqz v0, :cond_47

    return-void

    .line 1301
    :cond_47
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/app/GameManagerService;->updateCompatModeDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;I)V

    .line 1302
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V

    .line 1303
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->updateUseAngle(Ljava/lang/String;I)V

    return-void

    :catchall_51
    move-exception p0

    .line 1285
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0

    .line 1277
    :cond_54
    :goto_54
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->disableCompatScale(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->resetFps(Ljava/lang/String;I)V

    return-void
.end method

.method public final updateUseAngle(Ljava/lang/String;I)V
    .registers 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.WRITE_SECURE_SETTINGS"
    .end annotation

    return-void
.end method
