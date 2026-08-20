.class public Lcom/android/server/hdmi/HdmiCecConfig;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecConfig$Setting;,
        Lcom/android/server/hdmi/HdmiCecConfig$Value;,
        Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;,
        Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;,
        Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;,
        Lcom/android/server/hdmi/HdmiCecConfig$ValueType;,
        Lcom/android/server/hdmi/HdmiCecConfig$Storage;
    }
.end annotation


# static fields
.field public static final CONFIG_FILE:Ljava/lang/String; = "cec_config.xml"

.field public static final ETC_DIR:Ljava/lang/String; = "etc"

.field public static final SHARED_PREFS_DIR:Ljava/lang/String; = "shared_prefs"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "cec_config.xml"

.field public static final STORAGE_GLOBAL_SETTINGS:I = 0x1

.field public static final STORAGE_SHARED_PREFS:I = 0x2

.field public static final STORAGE_SYSPROPS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HdmiCecConfig"

.field public static final VALUE_TYPE_INT:Ljava/lang/String; = "int"

.field public static final VALUE_TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/hdmi/HdmiCecConfig$Setting;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSettings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/hdmi/HdmiCecConfig$Setting;",
            ">;"
        }
    .end annotation
.end field

.field public final mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 670
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 280
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    const-string/jumbo p1, "hdmi_cec_enabled"

    const p2, 0x1110057

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const/4 p2, 0x1

    const v0, 0x1110055

    const v1, 0x1110056

    .line 291
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/4 v0, 0x0

    const v1, 0x1110053

    const v2, 0x1110054

    .line 294
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "hdmi_cec_version"

    const v1, 0x111005c

    .line 298
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const/4 v1, 0x5

    const v2, 0x1110058

    const v3, 0x1110059

    .line 301
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/4 v1, 0x6

    const v2, 0x111005a

    const v3, 0x111005b

    .line 304
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "routing_control"

    const v2, 0x11100de

    .line 308
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100dc

    const v3, 0x11100dd

    .line 311
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100da

    const v3, 0x11100db

    .line 314
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "power_control_mode"

    const v2, 0x1110065

    .line 318
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const-string/jumbo v2, "to_tv"

    const v3, 0x1110063

    const v4, 0x1110064

    .line 321
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const-string v2, "broadcast"

    const v3, 0x111005d

    const v4, 0x111005e

    .line 324
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const-string/jumbo v2, "none"

    const v3, 0x111005f

    const v4, 0x1110060

    .line 327
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const-string/jumbo v3, "to_tv_and_audio_system"

    const v4, 0x1110061

    const v5, 0x1110062

    .line 330
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const-string/jumbo p1, "power_state_change_on_active_source_lost"

    const v3, 0x111006a

    .line 334
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v3, 0x1110066

    const v4, 0x1110067

    .line 337
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const-string/jumbo v2, "standby_now"

    const v3, 0x1110068

    const v4, 0x1110069

    .line 341
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const-string/jumbo p1, "system_audio_control"

    const v2, 0x11100e8

    .line 346
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100e6

    const v3, 0x11100e7

    .line 349
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100e4

    const v3, 0x11100e5

    .line 352
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "system_audio_mode_muting"

    const v2, 0x11100ed

    .line 356
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100eb

    const v3, 0x11100ec

    .line 359
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100e9

    const v3, 0x11100ea

    .line 362
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "volume_control_enabled"

    const v2, 0x11100fc

    .line 366
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100fa

    const v3, 0x11100fb

    .line 369
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100f8

    const v3, 0x11100f9

    .line 372
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "tv_wake_on_one_touch_play"

    const v2, 0x11100f7

    .line 376
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100f5

    const v3, 0x11100f6

    .line 379
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100f3

    const v3, 0x11100f4

    .line 382
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "tv_send_standby_on_sleep"

    const v2, 0x11100f2

    .line 386
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100f0

    const v3, 0x11100f1

    .line 389
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100ee

    const v3, 0x11100ef

    .line 392
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "set_menu_language"

    const v2, 0x11100e3

    .line 396
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100e1

    const v3, 0x11100e2

    .line 399
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100df

    const v3, 0x11100e0

    .line 402
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_tv"

    const v2, 0x11100d9

    .line 406
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v2, 0x11100d1

    const v3, 0x11100d2

    .line 409
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/4 v2, 0x2

    const v3, 0x11100d3

    const v4, 0x11100d4

    .line 412
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v2, 0x11100d7

    const v3, 0x11100d8

    .line 415
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/16 v1, 0xa

    const v2, 0x11100d5

    const v3, 0x11100d6

    .line 418
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const/16 v1, 0xe

    const v2, 0x11100cf

    const v3, 0x11100d0

    .line 421
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_root_menu"

    const v1, 0x11100c4

    .line 425
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100c0

    const v2, 0x11100c1

    .line 428
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100c2

    const v2, 0x11100c3

    .line 432
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_setup_menu"

    const v1, 0x11100c9

    .line 437
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100c5

    const v2, 0x11100c6

    .line 440
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100c7

    const v2, 0x11100c8

    .line 444
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_contents_menu"

    const v1, 0x11100ba

    .line 449
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100b6

    const v2, 0x11100b7

    .line 452
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100b8

    const v2, 0x11100b9

    .line 456
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_top_menu"

    const v1, 0x11100ce

    .line 461
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100ca

    const v2, 0x11100cb

    .line 464
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100cc

    const v2, 0x11100cd

    .line 468
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "rc_profile_source_handles_media_context_sensitive_menu"

    const v1, 0x11100bf

    .line 473
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100bb

    const v2, 0x11100bc

    .line 477
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100bd

    const v2, 0x11100be

    .line 481
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_lpcm"

    const v1, 0x1110092

    .line 486
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x1110090

    const v2, 0x1110091

    .line 489
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x111008e

    const v2, 0x111008f

    .line 493
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dd"

    const v1, 0x1110079

    .line 498
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x1110077

    const v2, 0x1110078

    .line 501
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x1110075

    const v2, 0x1110076

    .line 505
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_mpeg1"

    const v1, 0x11100a1

    .line 510
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x111009f

    const v2, 0x11100a0

    .line 513
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x111009d

    const v2, 0x111009e

    .line 517
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_mp3"

    const v1, 0x111009c

    .line 522
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x111009a

    const v2, 0x111009b

    .line 525
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x1110098

    const v2, 0x1110099

    .line 529
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_mpeg2"

    const v1, 0x11100a6

    .line 534
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100a4

    const v2, 0x11100a5

    .line 537
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100a2

    const v2, 0x11100a3

    .line 541
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_aac"

    const v1, 0x111006f

    .line 546
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x111006d

    const v2, 0x111006e

    .line 549
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x111006b

    const v2, 0x111006c

    .line 553
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dts"

    const v1, 0x1110088

    .line 558
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x1110086

    const v2, 0x1110087

    .line 561
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x1110084

    const v2, 0x1110085

    .line 565
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_atrac"

    const v1, 0x1110074

    .line 570
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x1110072

    const v2, 0x1110073

    .line 573
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x1110070

    const v2, 0x1110071

    .line 577
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_onebitaudio"

    const v1, 0x11100ab

    .line 582
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100a9

    const v2, 0x11100aa

    .line 585
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100a7

    const v2, 0x11100a8

    .line 589
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_ddp"

    const v1, 0x111007e

    .line 594
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x111007c

    const v2, 0x111007d

    .line 597
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x111007a

    const v2, 0x111007b

    .line 601
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dtshd"

    const v1, 0x111008d

    .line 606
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x111008b

    const v2, 0x111008c

    .line 609
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x1110089

    const v2, 0x111008a

    .line 613
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_truehd"

    const v1, 0x11100b0

    .line 618
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100ae

    const v2, 0x11100af

    .line 621
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100ac

    const v2, 0x11100ad

    .line 625
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_dst"

    const v1, 0x1110083

    .line 630
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x1110081

    const v2, 0x1110082

    .line 633
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x111007f

    const v2, 0x1110080

    .line 637
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_wmapro"

    const v1, 0x11100b5

    .line 642
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x11100b3

    const v2, 0x11100b4

    .line 645
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const v1, 0x11100b1

    const v2, 0x11100b2

    .line 649
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const-string/jumbo p1, "query_sad_max"

    const v1, 0x1110097

    .line 654
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const v1, 0x1110095

    const v2, 0x1110096

    .line 657
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110093

    const v1, 0x1110094

    .line 661
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 666
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig;->verifySettings()V

    return-void
.end method


# virtual methods
.method public getAllSettings()Ljava/util/List;
    .registers 2
    .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    const-string v0, "Setting \'"

    if-eqz p0, :cond_51

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1029
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1031
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    return-object p1

    .line 1026
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1023
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    const-string v0, "Setting \'"

    if-eqz p0, :cond_51

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1010
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1012
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    return-object p1

    .line 1007
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1004
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultIntValue(Ljava/lang/String;)I
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string v1, "Setting \'"

    if-eqz v0, :cond_40

    .line 1059
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "int"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1060
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1057
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string v1, "Setting \'"

    if-eqz v0, :cond_3c

    .line 1044
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1048
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1045
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1042
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string v1, "Setting \'"

    if-eqz v0, :cond_64

    .line 1090
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1096
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1097
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1091
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a int-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1088
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public final getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I
    .registers 5
    .annotation build Lcom/android/server/hdmi/HdmiCecConfig$Storage;
    .end annotation

    .line 697
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_1fe

    goto/16 :goto_1d9

    :sswitch_12
    const-string/jumbo v0, "system_audio_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_1d9

    :cond_1d
    const/16 v2, 0x1f

    goto/16 :goto_1d9

    :sswitch_21
    const-string/jumbo v0, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_1d9

    :cond_2c
    const/16 v2, 0x1e

    goto/16 :goto_1d9

    :sswitch_30
    const-string/jumbo v0, "query_sad_mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_1d9

    :cond_3b
    const/16 v2, 0x1d

    goto/16 :goto_1d9

    :sswitch_3f
    const-string/jumbo v0, "query_sad_max"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto/16 :goto_1d9

    :cond_4a
    const/16 v2, 0x1c

    goto/16 :goto_1d9

    :sswitch_4e
    const-string/jumbo v0, "query_sad_dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto/16 :goto_1d9

    :cond_59
    const/16 v2, 0x1b

    goto/16 :goto_1d9

    :sswitch_5d
    const-string/jumbo v0, "query_sad_dst"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto/16 :goto_1d9

    :cond_68
    const/16 v2, 0x1a

    goto/16 :goto_1d9

    :sswitch_6c
    const-string/jumbo v0, "query_sad_ddp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto/16 :goto_1d9

    :cond_77
    const/16 v2, 0x19

    goto/16 :goto_1d9

    :sswitch_7b
    const-string/jumbo v0, "query_sad_aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto/16 :goto_1d9

    :cond_86
    const/16 v2, 0x18

    goto/16 :goto_1d9

    :sswitch_8a
    const-string/jumbo v0, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_95

    goto/16 :goto_1d9

    :cond_95
    const/16 v2, 0x17

    goto/16 :goto_1d9

    :sswitch_99
    const-string/jumbo v0, "query_sad_dd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto/16 :goto_1d9

    :cond_a4
    const/16 v2, 0x16

    goto/16 :goto_1d9

    :sswitch_a8
    const-string/jumbo v0, "query_sad_onebitaudio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_1d9

    :cond_b3
    const/16 v2, 0x15

    goto/16 :goto_1d9

    :sswitch_b7
    const-string/jumbo v0, "rc_profile_tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_1d9

    :cond_c2
    const/16 v2, 0x14

    goto/16 :goto_1d9

    :sswitch_c6
    const-string/jumbo v0, "hdmi_cec_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d1

    goto/16 :goto_1d9

    :cond_d1
    const/16 v2, 0x13

    goto/16 :goto_1d9

    :sswitch_d5
    const-string/jumbo v0, "volume_control_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto/16 :goto_1d9

    :cond_e0
    const/16 v2, 0x12

    goto/16 :goto_1d9

    :sswitch_e4
    const-string/jumbo v0, "power_control_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ef

    goto/16 :goto_1d9

    :cond_ef
    const/16 v2, 0x11

    goto/16 :goto_1d9

    :sswitch_f3
    const-string/jumbo v0, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fe

    goto/16 :goto_1d9

    :cond_fe
    const/16 v2, 0x10

    goto/16 :goto_1d9

    :sswitch_102
    const-string/jumbo v0, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10d

    goto/16 :goto_1d9

    :cond_10d
    const/16 v2, 0xf

    goto/16 :goto_1d9

    :sswitch_111
    const-string/jumbo v0, "query_sad_lpcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11c

    goto/16 :goto_1d9

    :cond_11c
    const/16 v2, 0xe

    goto/16 :goto_1d9

    :sswitch_120
    const-string/jumbo v0, "routing_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12b

    goto/16 :goto_1d9

    :cond_12b
    const/16 v2, 0xd

    goto/16 :goto_1d9

    :sswitch_12f
    const-string/jumbo v0, "query_sad_wmapro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13a

    goto/16 :goto_1d9

    :cond_13a
    const/16 v2, 0xc

    goto/16 :goto_1d9

    :sswitch_13e
    const-string/jumbo v0, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_149

    goto/16 :goto_1d9

    :cond_149
    const/16 v2, 0xb

    goto/16 :goto_1d9

    :sswitch_14d
    const-string/jumbo v0, "query_sad_truehd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_158

    goto/16 :goto_1d9

    :cond_158
    const/16 v2, 0xa

    goto/16 :goto_1d9

    :sswitch_15c
    const-string/jumbo v0, "query_sad_mpeg2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_167

    goto/16 :goto_1d9

    :cond_167
    const/16 v2, 0x9

    goto/16 :goto_1d9

    :sswitch_16b
    const-string/jumbo v0, "query_sad_mpeg1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_176

    goto/16 :goto_1d9

    :cond_176
    const/16 v2, 0x8

    goto/16 :goto_1d9

    :sswitch_17a
    const-string/jumbo v0, "query_sad_dtshd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_184

    goto :goto_1d9

    :cond_184
    const/4 v2, 0x7

    goto :goto_1d9

    :sswitch_186
    const-string/jumbo v0, "query_sad_atrac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_190

    goto :goto_1d9

    :cond_190
    const/4 v2, 0x6

    goto :goto_1d9

    :sswitch_192
    const-string/jumbo v0, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19c

    goto :goto_1d9

    :cond_19c
    const/4 v2, 0x5

    goto :goto_1d9

    :sswitch_19e
    const-string/jumbo v0, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a8

    goto :goto_1d9

    :cond_1a8
    const/4 v2, 0x4

    goto :goto_1d9

    :sswitch_1aa
    const-string/jumbo v0, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b4

    goto :goto_1d9

    :cond_1b4
    const/4 v2, 0x3

    goto :goto_1d9

    :sswitch_1b6
    const-string/jumbo v0, "set_menu_language"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c0

    goto :goto_1d9

    :cond_1c0
    move v2, v1

    goto :goto_1d9

    :sswitch_1c2
    const-string/jumbo v0, "system_audio_mode_muting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1cc

    goto :goto_1d9

    :cond_1cc
    const/4 v2, 0x1

    goto :goto_1d9

    :sswitch_1ce
    const-string/jumbo v0, "hdmi_cec_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    const/4 v2, 0x0

    :goto_1d9
    packed-switch v2, :pswitch_data_280

    .line 764
    new-instance p0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' storage."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1fc
    return v1

    nop

    :sswitch_data_1fe
    .sparse-switch
        -0x7b89074d -> :sswitch_1ce
        -0x6a9ec647 -> :sswitch_1c2
        -0x607d7ae5 -> :sswitch_1b6
        -0x4c082dd9 -> :sswitch_1aa
        -0x4ab99283 -> :sswitch_19e
        -0x46d3da58 -> :sswitch_192
        -0x44f9855f -> :sswitch_186
        -0x44cf3a41 -> :sswitch_17a
        -0x44526d14 -> :sswitch_16b
        -0x44526d13 -> :sswitch_15c
        -0x39e5d496 -> :sswitch_14d
        -0x36427790 -> :sswitch_13e
        -0x3516ad1e -> :sswitch_12f
        -0x1893b91c -> :sswitch_120
        -0x12b8cab2 -> :sswitch_111
        -0x117d9fab -> :sswitch_102
        -0xd196d78 -> :sswitch_f3
        -0x1832fc1 -> :sswitch_e4
        0x45cb33a -> :sswitch_d5
        0xf91671c -> :sswitch_c6
        0x2f314ba6 -> :sswitch_b7
        0x2fa40eef -> :sswitch_a8
        0x5e0410e0 -> :sswitch_99
        0x611b5e8f -> :sswitch_8a
        0x627dffe3 -> :sswitch_7b
        0x627e0b90 -> :sswitch_6c
        0x627e0d65 -> :sswitch_5d
        0x627e0d83 -> :sswitch_4e
        0x627e2d04 -> :sswitch_3f
        0x627e2e90 -> :sswitch_30
        0x7a8663a3 -> :sswitch_21
        0x7e41b7e4 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_280
    .packed-switch 0x0
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1fc
    .end packed-switch
.end method

.method public final getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;
    .registers 4

    .line 770
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_29c

    goto/16 :goto_1d8

    :sswitch_11
    const-string/jumbo v0, "system_audio_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_1d8

    :cond_1c
    const/16 v1, 0x1f

    goto/16 :goto_1d8

    :sswitch_20
    const-string/jumbo v0, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_1d8

    :cond_2b
    const/16 v1, 0x1e

    goto/16 :goto_1d8

    :sswitch_2f
    const-string/jumbo v0, "query_sad_mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_1d8

    :cond_3a
    const/16 v1, 0x1d

    goto/16 :goto_1d8

    :sswitch_3e
    const-string/jumbo v0, "query_sad_max"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_1d8

    :cond_49
    const/16 v1, 0x1c

    goto/16 :goto_1d8

    :sswitch_4d
    const-string/jumbo v0, "query_sad_dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto/16 :goto_1d8

    :cond_58
    const/16 v1, 0x1b

    goto/16 :goto_1d8

    :sswitch_5c
    const-string/jumbo v0, "query_sad_dst"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto/16 :goto_1d8

    :cond_67
    const/16 v1, 0x1a

    goto/16 :goto_1d8

    :sswitch_6b
    const-string/jumbo v0, "query_sad_ddp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto/16 :goto_1d8

    :cond_76
    const/16 v1, 0x19

    goto/16 :goto_1d8

    :sswitch_7a
    const-string/jumbo v0, "query_sad_aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto/16 :goto_1d8

    :cond_85
    const/16 v1, 0x18

    goto/16 :goto_1d8

    :sswitch_89
    const-string/jumbo v0, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto/16 :goto_1d8

    :cond_94
    const/16 v1, 0x17

    goto/16 :goto_1d8

    :sswitch_98
    const-string/jumbo v0, "query_sad_dd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a3

    goto/16 :goto_1d8

    :cond_a3
    const/16 v1, 0x16

    goto/16 :goto_1d8

    :sswitch_a7
    const-string/jumbo v0, "query_sad_onebitaudio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto/16 :goto_1d8

    :cond_b2
    const/16 v1, 0x15

    goto/16 :goto_1d8

    :sswitch_b6
    const-string/jumbo v0, "rc_profile_tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_1d8

    :cond_c1
    const/16 v1, 0x14

    goto/16 :goto_1d8

    :sswitch_c5
    const-string/jumbo v0, "hdmi_cec_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_1d8

    :cond_d0
    const/16 v1, 0x13

    goto/16 :goto_1d8

    :sswitch_d4
    const-string/jumbo v0, "volume_control_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_df

    goto/16 :goto_1d8

    :cond_df
    const/16 v1, 0x12

    goto/16 :goto_1d8

    :sswitch_e3
    const-string/jumbo v0, "power_control_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    goto/16 :goto_1d8

    :cond_ee
    const/16 v1, 0x11

    goto/16 :goto_1d8

    :sswitch_f2
    const-string/jumbo v0, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    goto/16 :goto_1d8

    :cond_fd
    const/16 v1, 0x10

    goto/16 :goto_1d8

    :sswitch_101
    const-string/jumbo v0, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10c

    goto/16 :goto_1d8

    :cond_10c
    const/16 v1, 0xf

    goto/16 :goto_1d8

    :sswitch_110
    const-string/jumbo v0, "query_sad_lpcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11b

    goto/16 :goto_1d8

    :cond_11b
    const/16 v1, 0xe

    goto/16 :goto_1d8

    :sswitch_11f
    const-string/jumbo v0, "routing_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12a

    goto/16 :goto_1d8

    :cond_12a
    const/16 v1, 0xd

    goto/16 :goto_1d8

    :sswitch_12e
    const-string/jumbo v0, "query_sad_wmapro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_139

    goto/16 :goto_1d8

    :cond_139
    const/16 v1, 0xc

    goto/16 :goto_1d8

    :sswitch_13d
    const-string/jumbo v0, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_148

    goto/16 :goto_1d8

    :cond_148
    const/16 v1, 0xb

    goto/16 :goto_1d8

    :sswitch_14c
    const-string/jumbo v0, "query_sad_truehd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_157

    goto/16 :goto_1d8

    :cond_157
    const/16 v1, 0xa

    goto/16 :goto_1d8

    :sswitch_15b
    const-string/jumbo v0, "query_sad_mpeg2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_166

    goto/16 :goto_1d8

    :cond_166
    const/16 v1, 0x9

    goto/16 :goto_1d8

    :sswitch_16a
    const-string/jumbo v0, "query_sad_mpeg1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_175

    goto/16 :goto_1d8

    :cond_175
    const/16 v1, 0x8

    goto/16 :goto_1d8

    :sswitch_179
    const-string/jumbo v0, "query_sad_dtshd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_183

    goto :goto_1d8

    :cond_183
    const/4 v1, 0x7

    goto :goto_1d8

    :sswitch_185
    const-string/jumbo v0, "query_sad_atrac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18f

    goto :goto_1d8

    :cond_18f
    const/4 v1, 0x6

    goto :goto_1d8

    :sswitch_191
    const-string/jumbo v0, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19b

    goto :goto_1d8

    :cond_19b
    const/4 v1, 0x5

    goto :goto_1d8

    :sswitch_19d
    const-string/jumbo v0, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a7

    goto :goto_1d8

    :cond_1a7
    const/4 v1, 0x4

    goto :goto_1d8

    :sswitch_1a9
    const-string/jumbo v0, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b3

    goto :goto_1d8

    :cond_1b3
    const/4 v1, 0x3

    goto :goto_1d8

    :sswitch_1b5
    const-string/jumbo v0, "set_menu_language"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1bf

    goto :goto_1d8

    :cond_1bf
    const/4 v1, 0x2

    goto :goto_1d8

    :sswitch_1c1
    const-string/jumbo v0, "system_audio_mode_muting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1cb

    goto :goto_1d8

    :cond_1cb
    const/4 v1, 0x1

    goto :goto_1d8

    :sswitch_1cd
    const-string/jumbo v0, "hdmi_cec_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d7

    goto :goto_1d8

    :cond_1d7
    const/4 v1, 0x0

    :goto_1d8
    packed-switch v1, :pswitch_data_31e

    .line 837
    new-instance p0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' storage key."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 784
    :pswitch_1fb
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 790
    :pswitch_200
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 813
    :pswitch_205
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 835
    :pswitch_20a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 819
    :pswitch_20f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 831
    :pswitch_214
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 825
    :pswitch_219
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 817
    :pswitch_21e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 788
    :pswitch_223
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 809
    :pswitch_228
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :pswitch_22d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 794
    :pswitch_232
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 772
    :pswitch_237
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 780
    :pswitch_23c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 778
    :pswitch_241
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 782
    :pswitch_246
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 798
    :pswitch_24b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 807
    :pswitch_250
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 776
    :pswitch_255
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 833
    :pswitch_25a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 800
    :pswitch_25f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 829
    :pswitch_264
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 815
    :pswitch_269
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 811
    :pswitch_26e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 827
    :pswitch_273
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 821
    :pswitch_278
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 796
    :pswitch_27d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 802
    :pswitch_282
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 805
    :pswitch_287
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 792
    :pswitch_28c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 786
    :pswitch_291
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 774
    :pswitch_296
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_29c
    .sparse-switch
        -0x7b89074d -> :sswitch_1cd
        -0x6a9ec647 -> :sswitch_1c1
        -0x607d7ae5 -> :sswitch_1b5
        -0x4c082dd9 -> :sswitch_1a9
        -0x4ab99283 -> :sswitch_19d
        -0x46d3da58 -> :sswitch_191
        -0x44f9855f -> :sswitch_185
        -0x44cf3a41 -> :sswitch_179
        -0x44526d14 -> :sswitch_16a
        -0x44526d13 -> :sswitch_15b
        -0x39e5d496 -> :sswitch_14c
        -0x36427790 -> :sswitch_13d
        -0x3516ad1e -> :sswitch_12e
        -0x1893b91c -> :sswitch_11f
        -0x12b8cab2 -> :sswitch_110
        -0x117d9fab -> :sswitch_101
        -0xd196d78 -> :sswitch_f2
        -0x1832fc1 -> :sswitch_e3
        0x45cb33a -> :sswitch_d4
        0xf91671c -> :sswitch_c5
        0x2f314ba6 -> :sswitch_b6
        0x2fa40eef -> :sswitch_a7
        0x5e0410e0 -> :sswitch_98
        0x611b5e8f -> :sswitch_89
        0x627dffe3 -> :sswitch_7a
        0x627e0b90 -> :sswitch_6b
        0x627e0d65 -> :sswitch_5c
        0x627e0d83 -> :sswitch_4d
        0x627e2d04 -> :sswitch_3e
        0x627e2e90 -> :sswitch_2f
        0x7a8663a3 -> :sswitch_20
        0x7e41b7e4 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_31e
    .packed-switch 0x0
        :pswitch_296
        :pswitch_291
        :pswitch_28c
        :pswitch_287
        :pswitch_282
        :pswitch_27d
        :pswitch_278
        :pswitch_273
        :pswitch_26e
        :pswitch_269
        :pswitch_264
        :pswitch_25f
        :pswitch_25a
        :pswitch_255
        :pswitch_250
        :pswitch_24b
        :pswitch_246
        :pswitch_241
        :pswitch_23c
        :pswitch_237
        :pswitch_232
        :pswitch_22d
        :pswitch_228
        :pswitch_223
        :pswitch_21e
        :pswitch_219
        :pswitch_214
        :pswitch_20f
        :pswitch_20a
        :pswitch_205
        :pswitch_200
        :pswitch_1fb
    .end packed-switch
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string v1, "Setting \'"

    if-eqz v0, :cond_58

    .line 1074
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1075
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1072
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserSettings()Ljava/util/List;
    .registers 4
    .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 966
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 967
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 968
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_29
    return-object v0
.end method

.method public isIntValueType(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 991
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 995
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "int"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 993
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStringValueType(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 979
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "string"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 981
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .registers 7

    .line 883
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 885
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_f

    .line 887
    monitor-exit v0

    return-void

    .line 889
    :cond_f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 890
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 891
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 892
    new-instance v4, Lcom/android/server/hdmi/HdmiCecConfig$1;

    invoke-direct {v4, p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig$1;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 899
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final notifySettingChanged(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    return-void

    .line 877
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 907
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 916
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 920
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    goto :goto_2d

    .line 922
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Change listeners for setting \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 925
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 926
    :try_start_30
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 927
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_42
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    monitor-exit v1

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_4f

    throw p0

    .line 918
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 675
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V

    .line 676
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public removeChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 942
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_9
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 944
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 945
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 946
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 948
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    :cond_27
    monitor-exit v1

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw p0

    .line 940
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 843
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 844
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "Reading \'"

    if-nez v0, :cond_2d

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' sysprop."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 v3, 0x1

    if-ne v0, v3, :cond_50

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' global setting."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveGlobalSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const/4 v3, 0x2

    if-ne v0, v3, :cond_73

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' shared preference."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSharedPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_73
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 1127
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string v1, "Setting \'"

    if-eqz v0, :cond_ab

    .line 1131
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_91

    .line 1134
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1138
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_55

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    .line 1139
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1135
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a int-type setting."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1132
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' prohibited."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1129
    :cond_ab
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$CecSettingName;
        .end annotation
    .end param

    .line 1104
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const-string v1, "Setting \'"

    if-eqz v0, :cond_a3

    .line 1108
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_89

    .line 1111
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_4d

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    .line 1116
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1112
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1109
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' prohibited."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1106
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V
    .registers 8

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 860
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Setting \'"

    if-nez v0, :cond_2c

    .line 862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' sysprop."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_2c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4e

    .line 865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' global setting."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeGlobalSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_4e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_72

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' shared pref."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public final verifySettings()V
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 684
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 685
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    .line 686
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    goto :goto_a

    :cond_20
    return-void
.end method
