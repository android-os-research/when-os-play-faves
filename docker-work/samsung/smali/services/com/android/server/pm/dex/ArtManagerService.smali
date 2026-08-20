.class public Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
    }
.end annotation


# static fields
.field public static final BOOT_IMAGE_ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field public static final BOOT_IMAGE_PROFILE_NAME:Ljava/lang/String; = "android.prof"

.field public static final DEBUG:Z

.field public static final DEXOPT_REASON_WITH_DEX_METADATA_ANNOTATION:Ljava/lang/String; = "-dm"

.field public static final TAG:Ljava/lang/String; = "ArtManagerService"

.field public static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x2

.field public static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED_IORAP:I = 0xf

.field public static final TRON_COMPILATION_FILTER_ERROR:I = 0x0

.field public static final TRON_COMPILATION_FILTER_EVERYTHING:I = 0xb

.field public static final TRON_COMPILATION_FILTER_EVERYTHING_IORAP:I = 0x18

.field public static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xa

.field public static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE_IORAP:I = 0x17

.field public static final TRON_COMPILATION_FILTER_EXTRACT:I = 0x3

.field public static final TRON_COMPILATION_FILTER_EXTRACT_IORAP:I = 0x10

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xc

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xd

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK_IORAP:I = 0x1a

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_IORAP:I = 0x19

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xe

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK_IORAP:I = 0x1b

.field public static final TRON_COMPILATION_FILTER_QUICKEN:I = 0x5

.field public static final TRON_COMPILATION_FILTER_QUICKEN_IORAP:I = 0x12

.field public static final TRON_COMPILATION_FILTER_SPACE:I = 0x7

.field public static final TRON_COMPILATION_FILTER_SPACE_IORAP:I = 0x14

.field public static final TRON_COMPILATION_FILTER_SPACE_PROFILE:I = 0x6

.field public static final TRON_COMPILATION_FILTER_SPACE_PROFILE_IORAP:I = 0x13

.field public static final TRON_COMPILATION_FILTER_SPEED:I = 0x9

.field public static final TRON_COMPILATION_FILTER_SPEED_IORAP:I = 0x16

.field public static final TRON_COMPILATION_FILTER_SPEED_PROFILE:I = 0x8

.field public static final TRON_COMPILATION_FILTER_SPEED_PROFILE_IORAP:I = 0x15

.field public static final TRON_COMPILATION_FILTER_UNKNOWN:I = 0x1

.field public static final TRON_COMPILATION_FILTER_VERIFY:I = 0x4

.field public static final TRON_COMPILATION_FILTER_VERIFY_IORAP:I = 0x11

.field public static final TRON_COMPILATION_REASON_AB_OTA:I = 0x6

.field public static final TRON_COMPILATION_REASON_BG_DEXOPT:I = 0x5

.field public static final TRON_COMPILATION_REASON_BOOT_AFTER_OTA:I = 0x14

.field public static final TRON_COMPILATION_REASON_BOOT_DEPRECATED_SINCE_S:I = 0x3

.field public static final TRON_COMPILATION_REASON_CMDLINE:I = 0x16

.field public static final TRON_COMPILATION_REASON_ERROR:I = 0x0

.field public static final TRON_COMPILATION_REASON_FIRST_BOOT:I = 0x2

.field public static final TRON_COMPILATION_REASON_INACTIVE:I = 0x7

.field public static final TRON_COMPILATION_REASON_INSTALL:I = 0x4

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK:I = 0xb

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK_DOWNGRADED:I = 0xd

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK_DOWNGRADED_WITH_DM:I = 0x12

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY:I = 0xc

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0xe

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY_DOWNGRADED_WITH_DM:I = 0x13

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY_WITH_DM:I = 0x11

.field public static final TRON_COMPILATION_REASON_INSTALL_BULK_WITH_DM:I = 0x10

.field public static final TRON_COMPILATION_REASON_INSTALL_FAST:I = 0xa

.field public static final TRON_COMPILATION_REASON_INSTALL_FAST_WITH_DM:I = 0xf

.field public static final TRON_COMPILATION_REASON_INSTALL_WITH_DM:I = 0x9

.field public static final TRON_COMPILATION_REASON_POST_BOOT:I = 0x15

.field public static final TRON_COMPILATION_REASON_PREBUILT:I = 0x17

.field public static final TRON_COMPILATION_REASON_SHARED:I = 0x8

.field public static final TRON_COMPILATION_REASON_UNKNOWN:I = 0x1

.field public static final TRON_COMPILATION_REASON_VDEX:I = 0x18


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method public static synthetic $r8$lambda$dmR_bGEH0KrwULZ-7hRCD3pHSTU(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/ArtManagerService;->lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rR3slZ2Zt0FPd_3voirSNF0VvCU(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/ArtManagerService;->lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smgetCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationFilterTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 101
    invoke-static {}, Lcom/android/server/pm/dex/ArtManagerService;->verifyTronLoggingConstants()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 108
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 110
    const-class p1, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance p2, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl-IA;)V

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static getCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 26

    move-object/from16 v0, p0

    .line 665
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_1e4

    goto/16 :goto_1b8

    :sswitch_3c
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_1b8

    :cond_47
    const/16 v24, 0x1a

    goto/16 :goto_1b8

    :sswitch_4b
    const-string/jumbo v1, "quicken-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_1b8

    :cond_56
    const/16 v24, 0x19

    goto/16 :goto_1b8

    :sswitch_5a
    const-string/jumbo v1, "space-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_1b8

    :cond_65
    const/16 v24, 0x18

    goto/16 :goto_1b8

    :sswitch_69
    const-string/jumbo v1, "speed-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_1b8

    :cond_74
    const/16 v24, 0x17

    goto/16 :goto_1b8

    :sswitch_78
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_1b8

    :cond_83
    const/16 v24, 0x16

    goto/16 :goto_1b8

    :sswitch_87
    const-string v1, "everything-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_1b8

    :cond_91
    move/from16 v24, v2

    goto/16 :goto_1b8

    :sswitch_95
    const-string/jumbo v1, "quicken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto/16 :goto_1b8

    :cond_a0
    move/from16 v24, v3

    goto/16 :goto_1b8

    :sswitch_a4
    const-string v1, "everything-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    goto/16 :goto_1b8

    :cond_ae
    move/from16 v24, v4

    goto/16 :goto_1b8

    :sswitch_b2
    const-string v1, "everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto/16 :goto_1b8

    :cond_bc
    move/from16 v24, v5

    goto/16 :goto_1b8

    :sswitch_c0
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    goto/16 :goto_1b8

    :cond_cb
    move/from16 v24, v6

    goto/16 :goto_1b8

    :sswitch_cf
    const-string/jumbo v1, "run-from-apk-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    goto/16 :goto_1b8

    :cond_da
    move/from16 v24, v7

    goto/16 :goto_1b8

    :sswitch_de
    const-string/jumbo v1, "speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    goto/16 :goto_1b8

    :cond_e9
    move/from16 v24, v8

    goto/16 :goto_1b8

    :sswitch_ed
    const-string/jumbo v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    goto/16 :goto_1b8

    :cond_f8
    move/from16 v24, v9

    goto/16 :goto_1b8

    :sswitch_fc
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto/16 :goto_1b8

    :cond_106
    move/from16 v24, v10

    goto/16 :goto_1b8

    :sswitch_10a
    const-string v1, "assume-verified-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    goto/16 :goto_1b8

    :cond_114
    move/from16 v24, v11

    goto/16 :goto_1b8

    :sswitch_118
    const-string/jumbo v1, "run-from-vdex-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    goto/16 :goto_1b8

    :cond_123
    move/from16 v24, v12

    goto/16 :goto_1b8

    :sswitch_127
    const-string/jumbo v1, "space-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    goto/16 :goto_1b8

    :cond_132
    move/from16 v24, v13

    goto/16 :goto_1b8

    :sswitch_136
    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_141

    goto/16 :goto_1b8

    :cond_141
    move/from16 v24, v14

    goto/16 :goto_1b8

    :sswitch_145
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_150

    goto/16 :goto_1b8

    :cond_150
    move/from16 v24, v15

    goto/16 :goto_1b8

    :sswitch_154
    const-string/jumbo v1, "run-from-apk-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15f

    goto/16 :goto_1b8

    :cond_15f
    move/from16 v24, v16

    goto :goto_1b8

    :sswitch_162
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16c

    goto :goto_1b8

    :cond_16c
    move/from16 v24, v17

    goto :goto_1b8

    :sswitch_16f
    const-string v1, "extract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_178

    goto :goto_1b8

    :cond_178
    move/from16 v24, v18

    goto :goto_1b8

    :sswitch_17b
    const-string v1, "extract-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    goto :goto_1b8

    :cond_184
    move/from16 v24, v19

    goto :goto_1b8

    :sswitch_187
    const-string/jumbo v1, "verify-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_191

    goto :goto_1b8

    :cond_191
    move/from16 v24, v20

    goto :goto_1b8

    :sswitch_194
    const-string v1, "everything-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d

    goto :goto_1b8

    :cond_19d
    move/from16 v24, v21

    goto :goto_1b8

    :sswitch_1a0
    const-string v1, "assume-verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a9

    goto :goto_1b8

    :cond_1a9
    move/from16 v24, v22

    goto :goto_1b8

    :sswitch_1ac
    const-string/jumbo v1, "speed-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    move/from16 v24, v23

    :goto_1b8
    packed-switch v24, :pswitch_data_252

    return v22

    :pswitch_1bc
    return v10

    :pswitch_1bd
    return v5

    :pswitch_1be
    return v3

    :pswitch_1bf
    const/16 v0, 0x16

    return v0

    :pswitch_1c2
    return v11

    :pswitch_1c3
    const/16 v0, 0x17

    return v0

    :pswitch_1c6
    return v18

    :pswitch_1c7
    const/16 v0, 0x18

    return v0

    :pswitch_1ca
    return v12

    :pswitch_1cb
    return v17

    :pswitch_1cc
    const/16 v0, 0x19

    return v0

    :pswitch_1cf
    return v14

    :pswitch_1d0
    return v16

    :pswitch_1d1
    return v23

    :pswitch_1d2
    return v8

    :pswitch_1d3
    const/16 v0, 0x1b

    return v0

    :pswitch_1d6
    return v4

    :pswitch_1d7
    return v19

    :pswitch_1d8
    return v9

    :pswitch_1d9
    const/16 v0, 0x1a

    return v0

    :pswitch_1dc
    return v15

    :pswitch_1dd
    return v20

    :pswitch_1de
    return v7

    :pswitch_1df
    return v6

    :pswitch_1e0
    return v13

    :pswitch_1e1
    return v21

    :pswitch_1e2
    return v2

    nop

    :sswitch_data_1e4
    .sparse-switch
        -0x7dd94aef -> :sswitch_1ac
        -0x74ad4b37 -> :sswitch_1a0
        -0x6b7d2b71 -> :sswitch_194
        -0x65cd9119 -> :sswitch_187
        -0x65986311 -> :sswitch_17b
        -0x4dcd237f -> :sswitch_16f
        -0x4358c9dd -> :sswitch_162
        -0x405bb3de -> :sswitch_154
        -0x35c83f13 -> :sswitch_145
        -0x30df7787 -> :sswitch_136
        -0x29c91470 -> :sswitch_127
        -0x2ad7fa5 -> :sswitch_118
        0x3061f37 -> :sswitch_10a
        0x5c4d208 -> :sswitch_fc
        0x688f106 -> :sswitch_ed
        0x6890047 -> :sswitch_de
        0xf517369 -> :sswitch_cf
        0x14c5f7e2 -> :sswitch_c0
        0x17efcab3 -> :sswitch_b2
        0x23319da1 -> :sswitch_a4
        0x273d6b56 -> :sswitch_95
        0x3374d27d -> :sswitch_87
        0x36f5967b -> :sswitch_78
        0x3a695435 -> :sswitch_69
        0x4e7b79b4 -> :sswitch_5a
        0x585ef804 -> :sswitch_4b
        0x71a3adf4 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_1e2
        :pswitch_1e1
        :pswitch_1e0
        :pswitch_1df
        :pswitch_1de
        :pswitch_1dd
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d8
        :pswitch_1d7
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d2
        :pswitch_1d1
        :pswitch_1d0
        :pswitch_1cf
        :pswitch_1cc
        :pswitch_1cb
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c6
        :pswitch_1c3
        :pswitch_1c2
        :pswitch_1bf
        :pswitch_1be
        :pswitch_1bd
        :pswitch_1bc
    .end packed-switch
.end method

.method public static getCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 26

    move-object/from16 v0, p0

    .line 620
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x11

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_19e

    goto/16 :goto_17f

    :sswitch_3c
    const-string/jumbo v1, "install-bulk-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_17f

    :cond_47
    move/from16 v24, v2

    goto/16 :goto_17f

    :sswitch_4b
    const-string/jumbo v1, "install-fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_17f

    :cond_56
    move/from16 v24, v3

    goto/16 :goto_17f

    :sswitch_5a
    const-string/jumbo v1, "install-bulk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_17f

    :cond_65
    move/from16 v24, v4

    goto/16 :goto_17f

    :sswitch_69
    const-string/jumbo v1, "install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_17f

    :cond_74
    move/from16 v24, v5

    goto/16 :goto_17f

    :sswitch_78
    const-string/jumbo v1, "post-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_17f

    :cond_83
    move/from16 v24, v6

    goto/16 :goto_17f

    :sswitch_87
    const-string/jumbo v1, "install-bulk-secondary-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_17f

    :cond_92
    move/from16 v24, v7

    goto/16 :goto_17f

    :sswitch_96
    const-string/jumbo v1, "install-bulk-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto/16 :goto_17f

    :cond_a1
    move/from16 v24, v8

    goto/16 :goto_17f

    :sswitch_a5
    const-string/jumbo v1, "install-bulk-secondary-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto/16 :goto_17f

    :cond_b0
    move/from16 v24, v9

    goto/16 :goto_17f

    :sswitch_b4
    const-string/jumbo v1, "install-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto/16 :goto_17f

    :cond_bf
    move/from16 v24, v10

    goto/16 :goto_17f

    :sswitch_c3
    const-string v1, "cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    goto/16 :goto_17f

    :cond_cd
    move/from16 v24, v11

    goto/16 :goto_17f

    :sswitch_d1
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    goto/16 :goto_17f

    :cond_db
    move/from16 v24, v12

    goto/16 :goto_17f

    :sswitch_df
    const-string/jumbo v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto/16 :goto_17f

    :cond_ea
    move/from16 v24, v13

    goto/16 :goto_17f

    :sswitch_ee
    const-string/jumbo v1, "install-bulk-secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    goto/16 :goto_17f

    :cond_f9
    move/from16 v24, v14

    goto/16 :goto_17f

    :sswitch_fd
    const-string/jumbo v1, "vdex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_108

    goto/16 :goto_17f

    :cond_108
    move/from16 v24, v15

    goto/16 :goto_17f

    :sswitch_10c
    const-string v1, "first-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    goto/16 :goto_17f

    :cond_116
    move/from16 v24, v16

    goto/16 :goto_17f

    :sswitch_11a
    const-string/jumbo v1, "install-bulk-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_125

    goto/16 :goto_17f

    :cond_125
    move/from16 v24, v17

    goto :goto_17f

    :sswitch_128
    const-string v1, "boot-after-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    goto :goto_17f

    :cond_131
    move/from16 v24, v18

    goto :goto_17f

    :sswitch_134
    const-string/jumbo v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13e

    goto :goto_17f

    :cond_13e
    move/from16 v24, v19

    goto :goto_17f

    :sswitch_141
    const-string/jumbo v1, "install-bulk-secondary-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b

    goto :goto_17f

    :cond_14b
    move/from16 v24, v20

    goto :goto_17f

    :sswitch_14e
    const-string/jumbo v1, "prebuilt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    goto :goto_17f

    :cond_158
    const/16 v24, 0x3

    goto :goto_17f

    :sswitch_15b
    const-string v1, "ab-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_164

    goto :goto_17f

    :cond_164
    move/from16 v24, v21

    goto :goto_17f

    :sswitch_167
    const-string/jumbo v1, "install-fast-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_171

    goto :goto_17f

    :cond_171
    move/from16 v24, v22

    goto :goto_17f

    :sswitch_174
    const-string v1, "bg-dexopt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17d

    goto :goto_17f

    :cond_17d
    move/from16 v24, v23

    :goto_17f
    packed-switch v24, :pswitch_data_1fc

    return v22

    :pswitch_183
    return v11

    :pswitch_184
    return v14

    :pswitch_185
    return v13

    :pswitch_186
    return v20

    :pswitch_187
    return v3

    :pswitch_188
    return v5

    :pswitch_189
    return v6

    :pswitch_18a
    return v10

    :pswitch_18b
    return v15

    :pswitch_18c
    return v2

    :pswitch_18d
    return v23

    :pswitch_18e
    return v17

    :pswitch_18f
    return v12

    :pswitch_190
    const/16 v0, 0x18

    return v0

    :pswitch_193
    return v21

    :pswitch_194
    return v8

    :pswitch_195
    return v4

    :pswitch_196
    return v16

    :pswitch_197
    return v7

    :pswitch_198
    const/16 v0, 0x17

    return v0

    :pswitch_19b
    return v18

    :pswitch_19c
    return v9

    :pswitch_19d
    return v19

    :sswitch_data_19e
    .sparse-switch
        -0x754fea3c -> :sswitch_174
        -0x6d771298 -> :sswitch_167
        -0x54fec890 -> :sswitch_15b
        -0x4d00be45 -> :sswitch_14e
        -0x43162b55 -> :sswitch_141
        -0x35db539b -> :sswitch_134
        -0x23098d70 -> :sswitch_128
        -0x1f55cf0e -> :sswitch_11a
        -0xc5e4811 -> :sswitch_10c
        0x3727e1 -> :sswitch_fd
        0x10534eb -> :sswitch_ee
        0x1785c6b -> :sswitch_df
        0x5c4d208 -> :sswitch_d1
        0x34bd042e -> :sswitch_c3
        0x35aae5fb -> :sswitch_b4
        0x5ce564b1 -> :sswitch_a5
        0x68b4487e -> :sswitch_96
        0x6ac14725 -> :sswitch_87
        0x749a27ff -> :sswitch_78
        0x74ae259b -> :sswitch_69
        0x76889604 -> :sswitch_5a
        0x768a1d4e -> :sswitch_4b
        0x778489f8 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
    .end packed-switch
.end method

.method public static synthetic lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .registers 4

    .line 361
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p0

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to callback after profile snapshot for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArtManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public static synthetic lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ArtManagerService"

    .line 378
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 379
    invoke-interface {p1, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_28

    .line 381
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The snapshot FD became invalid before posting the result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 383
    invoke-interface {p1, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2e
    .catchall {:try_start_2 .. :try_end_28} :catchall_2c

    .line 389
    :goto_28
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_44

    :catchall_2c
    move-exception p1

    goto :goto_45

    :catch_2e
    move-exception p1

    .line 386
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call onSuccess after profile snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_2c

    goto :goto_28

    :goto_44
    return-void

    .line 389
    :goto_45
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 390
    throw p1
.end method

.method public static verifyTronLoggingConstants()V
    .registers 4

    const/4 v0, 0x0

    .line 704
    :goto_1
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2b

    .line 705
    aget-object v1, v1, v0

    .line 706
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v3, 0x1

    if-eq v2, v3, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    return-void
.end method


# virtual methods
.method public final checkAndroidPermissions(ILjava/lang/String;)Z
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_RUNTIME_PROFILES"

    const-string v2, "ArtManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    .line 129
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_21
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return p2
.end method

.method public final checkShellPermissions(ILjava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-eq p3, v1, :cond_6

    return v0

    .line 156
    :cond_6
    sget-boolean p3, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz p3, :cond_c

    return v1

    :cond_c
    if-ne p1, v1, :cond_f

    return v0

    :cond_f
    const/4 p1, 0x0

    .line 165
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-interface {p0, p2, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1a

    :catch_1a
    if-nez p1, :cond_1d

    return v0

    .line 174
    :cond_1d
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_26

    move v0, v1

    :cond_26
    return v0
.end method

.method public clearAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7

    .line 455
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_28

    .line 457
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 458
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/Installer;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_1b} :catch_1e

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :catch_1e
    move-exception p0

    .line 461
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ArtManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 9

    const-string v0, "PackageManager"

    const/4 v1, 0x0

    .line 488
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v4

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/code_cache/compiled_view.dex"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_76

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isUseEmbeddedDex()Z

    move-result v5

    if-nez v5, :cond_76

    .line 494
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_76

    .line 502
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compiling layouts in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_77

    .line 506
    :try_start_63
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 507
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    .line 506
    invoke-virtual {p0, v3, v2, v4, p1}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_71

    .line 509
    :try_start_6d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_71
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw p0
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_77

    :cond_76
    :goto_76
    return v1

    :catchall_77
    move-exception p0

    const-string p1, "Failed to compile layouts"

    .line 513
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 8

    const/4 v0, 0x2

    .line 273
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/android/server/pm/Installer;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 274
    invoke-virtual {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_c} :catch_4f

    return-void

    .line 283
    :cond_d
    invoke-static {p1, p2}, Landroid/content/pm/dex/ArtManager;->getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/high16 p3, 0x10000000

    .line 287
    :try_start_13
    invoke-static {p2, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    if-eqz p3, :cond_28

    .line 288
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->valid()Z

    move-result p4

    if-nez p4, :cond_24

    goto :goto_28

    .line 291
    :cond_24
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_4e

    .line 289
    :cond_28
    :goto_28
    invoke-virtual {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_2b} :catch_2c

    goto :goto_4e

    :catch_2c
    move-exception p3

    .line 294
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not open snapshot profile for "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ArtManagerService"

    invoke-static {p4, p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    invoke-virtual {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    :goto_4e
    return-void

    .line 278
    :catch_4f
    invoke-virtual {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public final destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 301
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    const-string v1, ":"

    const-string v2, "ArtManagerService"

    if-eqz v0, :cond_22

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying profile snapshot for"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_22
    :try_start_22
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Installer;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_43

    :catch_28
    move-exception p0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to destroy profile snapshot for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    return-void
.end method

.method public dumpProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 12

    .line 469
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 471
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v7

    .line 472
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_13
    if-ltz v8, :cond_39

    .line 473
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 474
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_2e} :catch_31

    add-int/lit8 v8, v8, -0x1

    goto :goto_13

    :catch_31
    move-exception p0

    const-string p1, "ArtManagerService"

    const-string p2, "Failed to dump profiles"

    .line 479
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    return-void
.end method

.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "package"

    .line 117
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 119
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public final getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 524
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isHasCode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 525
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :cond_17
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitFlags()[I

    move-result-object v1

    .line 530
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object p1

    .line 531
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x0

    .line 532
    :goto_2a
    array-length v3, v0

    if-ge v2, v3, :cond_41

    .line 533
    aget v3, v1, v2

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3e

    .line 534
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_41
    return-object p0
.end method

.method public isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .registers 6

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_10

    .line 316
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    return v1

    :cond_10
    const-string p0, "dalvik.vm.usejitprofiles"

    if-eqz p1, :cond_4d

    const/4 p2, 0x1

    if-ne p1, p2, :cond_36

    const-string p1, "dalvik.vm.profilebootclasspath"

    .line 327
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo v0, "persist.device_config.runtime_native_boot.profilebootclasspath"

    .line 325
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 328
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_2c

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_35

    .line 329
    :cond_2c
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    move v1, p2

    :cond_35
    return v1

    .line 332
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid profile type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    :cond_4d
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    .registers 6

    .line 355
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 6

    .line 370
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1a
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
    .registers 16

    .line 403
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-gez p2, :cond_21

    const-string p0, "ArtManagerService"

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid user id: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    if-gez v0, :cond_3a

    const-string p0, "ArtManagerService"

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid app id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_3a
    :try_start_3a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v8

    .line 414
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v9, v1

    :goto_45
    if-ltz v9, :cond_bf

    .line 415
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 416
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p3, :cond_68

    .line 422
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_64

    goto :goto_68

    .line 423
    :cond_64
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_68
    :goto_68
    move-object v7, v1

    .line 425
    iget-object v11, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v11
    :try_end_6c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3a .. :try_end_6c} :catch_a4

    .line 426
    :try_start_6c
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, v0

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    const-string v1, "ArtManagerService"

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare profile for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_9d
    monitor-exit v11

    add-int/lit8 v9, v9, -0x1

    goto :goto_45

    :catchall_a1
    move-exception p0

    monitor-exit v11
    :try_end_a3
    .catchall {:try_start_6c .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw p0
    :try_end_a4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a3 .. :try_end_a4} :catch_a4

    :catch_a4
    move-exception p0

    const-string p2, "ArtManagerService"

    .line 435
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to prepare profile for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_bf
    return-void
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IZ)V
    .registers 6

    const/4 v0, 0x0

    .line 445
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_c

    .line 446
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public final snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-object v2, v1

    :goto_e
    if-nez v2, :cond_14

    .line 234
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void

    .line 238
    :cond_14
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v0, :cond_40

    if-eqz v3, :cond_40

    .line 242
    array-length v5, v3

    sub-int/2addr v5, v4

    :goto_2b
    if-ltz v5, :cond_40

    .line 243
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 245
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v1, v0, v5

    move v0, v4

    goto :goto_40

    :cond_3d
    add-int/lit8 v5, v5, -0x1

    goto :goto_2b

    :cond_40
    :goto_40
    if-nez v0, :cond_46

    .line 251
    invoke-virtual {p0, p3, p1, v4}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void

    .line 256
    :cond_46
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-gez v6, :cond_6b

    const/4 p2, 0x2

    .line 258
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AppId is -1 for package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ArtManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_6b
    invoke-static {v1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 266
    invoke-static {v1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "BOOTCLASSPATH"

    .line 339
    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SYSTEMSERVERCLASSPATH"

    .line 340
    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ":"

    .line 339
    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "android"

    const-string v4, "android.prof"

    const/4 v6, -0x1

    move-object v2, p0

    move-object v7, p1

    .line 343
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    const-string p1, "android"

    const-string v0, "android.prof"

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 8

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 184
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/dex/ArtManagerService;->checkShellPermissions(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 185
    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x2

    .line 187
    :try_start_11
    invoke-interface {p4, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    return-void

    .line 194
    :cond_15
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_25

    .line 198
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 199
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 203
    :cond_25
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_57

    .line 207
    sget-boolean p1, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz p1, :cond_4d

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested snapshot for "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ":"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "ArtManagerService"

    invoke-static {p5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-eqz v0, :cond_53

    .line 212
    invoke-virtual {p0, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_56

    .line 214
    :cond_53
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    :goto_56
    return-void

    .line 204
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Runtime profiling is not enabled for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
