.class public Lcom/android/server/location/LocationShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "LocationShellCommand.java"


# static fields
.field public static final DEFAULT_TEST_LOCATION_ACCURACY:F = 100.0f


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lcom/android/server/location/LocationManagerService;

    iput-object p2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final handleAddTestProvider()V
    .registers 18

    move-object/from16 v0, p0

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    move-object v5, v2

    move v12, v4

    move v13, v12

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 234
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_5d

    .line 285
    new-instance v3, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v3}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 286
    invoke-virtual {v3, v2}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 287
    invoke-virtual {v2, v6}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 288
    invoke-virtual {v2, v7}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 290
    invoke-virtual {v2, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 291
    invoke-virtual {v2, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 292
    invoke-virtual {v2, v11}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v2, v12}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 294
    invoke-virtual {v2, v13}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v2

    .line 296
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v4, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    move-object v0, v3

    move-object v3, v5

    move-object v5, v6

    .line 296
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LocationManagerService;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    const/4 v15, -0x1

    .line 238
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_12e

    goto/16 :goto_da

    :sswitch_67
    const-string v3, "--supportsSpeed"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_da

    :cond_71
    const/16 v15, 0x9

    goto/16 :goto_da

    :sswitch_75
    const-string v3, "--powerRequirement"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_da

    :cond_7f
    const/16 v15, 0x8

    goto/16 :goto_da

    :sswitch_83
    const-string v3, "--requiresSatellite"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    goto :goto_da

    :cond_8c
    const/4 v15, 0x7

    goto :goto_da

    :sswitch_8e
    const-string v3, "--hasMonetaryCost"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    goto :goto_da

    :cond_97
    const/4 v15, 0x6

    goto :goto_da

    :sswitch_99
    const-string v3, "--requiresCell"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    goto :goto_da

    :cond_a2
    const/4 v15, 0x5

    goto :goto_da

    :sswitch_a4
    const-string v3, "--supportsAltitude"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad

    goto :goto_da

    :cond_ad
    const/4 v15, 0x4

    goto :goto_da

    :sswitch_af
    const-string v3, "--supportsBearing"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    goto :goto_da

    :cond_b8
    const/4 v15, 0x3

    goto :goto_da

    :sswitch_ba
    const-string v3, "--extraAttributionTags"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c3

    goto :goto_da

    :cond_c3
    const/4 v15, 0x2

    goto :goto_da

    :sswitch_c5
    const-string v3, "--requiresNetwork"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    goto :goto_da

    :cond_ce
    move v15, v4

    goto :goto_da

    :sswitch_d0
    const-string v3, "--accuracy"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d9

    goto :goto_da

    :cond_d9
    const/4 v15, 0x0

    :goto_da
    packed-switch v15, :pswitch_data_158

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f4
    move v10, v4

    goto/16 :goto_15

    .line 268
    :pswitch_f7
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_15

    :pswitch_101
    move v6, v4

    goto/16 :goto_15

    :pswitch_104
    move v8, v4

    goto/16 :goto_15

    :pswitch_107
    move v7, v4

    goto/16 :goto_15

    :pswitch_10a
    move v9, v4

    goto/16 :goto_15

    :pswitch_10d
    move v11, v4

    goto/16 :goto_15

    .line 276
    :pswitch_110
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_15

    :pswitch_120
    move v2, v4

    goto/16 :goto_15

    .line 272
    :pswitch_123
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_15

    nop

    :sswitch_data_12e
    .sparse-switch
        -0x7e1ee167 -> :sswitch_d0
        -0x6a811300 -> :sswitch_c5
        -0x57e7a758 -> :sswitch_ba
        -0x563e8116 -> :sswitch_af
        -0x4734d51a -> :sswitch_a4
        0x40bc37d0 -> :sswitch_99
        0x4c45a754 -> :sswitch_8e
        0x5864ef8d -> :sswitch_83
        0x5f6d5b9e -> :sswitch_75
        0x7a12a683 -> :sswitch_67
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_123
        :pswitch_120
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_f7
        :pswitch_f4
    .end packed-switch
.end method

.method public final handleIsAdasGnssLocationEnabled()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, -0x3

    .line 162
    :goto_f
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    .line 173
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isAdasGnssLocationEnabledForUser(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_23
    const-string v0, "--user"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 167
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_f

    .line 169
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleIsAutomotiveGnssSuspended()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 215
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->isAutomotiveGnssSuspended()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    .line 212
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleIsLocationEnabled()V
    .registers 4

    const/4 v0, -0x3

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    .line 131
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_15
    const-string v0, "--user"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 125
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 127
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleRemoveTestProvider()V
    .registers 4

    .line 301
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-virtual {v1, v0, v2, p0}, Lcom/android/server/location/LocationManagerService;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleSendExtraCommand()V
    .registers 4

    .line 364
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final handleSetAdasGnssLocationEnabled()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 181
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x3

    .line 186
    :goto_17
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    .line 197
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/LocationManagerService;->setAdasGnssLocationEnabledForUser(ZI)V

    return-void

    :cond_23
    const-string v1, "--user"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 191
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_17

    .line 193
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleSetAutomotiveGnssSuspended()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 205
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 207
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->setAutomotiveGnssSuspended(Z)V

    return-void

    .line 202
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleSetLocationEnabled()V
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x3

    .line 140
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    .line 151
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/LocationManagerService;->setLocationEnabledForUser(ZI)V

    return-void

    :cond_15
    const-string v1, "--user"

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 145
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 147
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleSetTestProviderEnabled()V
    .registers 5

    .line 307
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 309
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/android/server/location/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleSetTestProviderLocation()V
    .registers 10

    .line 314
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 319
    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    const/4 v2, 0x0

    move v3, v2

    .line 324
    :goto_1e
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_40

    if-eqz v3, :cond_38

    .line 359
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/android/server/location/LocationManagerService;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Option \"--location\" is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    const/4 v5, -0x1

    .line 328
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_dc

    goto :goto_6b

    :sswitch_4b
    const-string v6, "--location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_6b

    :cond_54
    move v5, v7

    goto :goto_6b

    :sswitch_56
    const-string v6, "--time"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    goto :goto_6b

    :cond_5f
    move v5, v8

    goto :goto_6b

    :sswitch_61
    const-string v6, "--accuracy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    goto :goto_6b

    :cond_6a
    move v5, v2

    :goto_6b
    packed-switch v5, :pswitch_data_ea

    .line 351
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 330
    :pswitch_85
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 331
    array-length v4, v3

    if-ne v4, v7, :cond_a7

    .line 337
    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 338
    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    move v3, v8

    goto/16 :goto_1e

    .line 332
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location argument must be in the form of \"<LATITUDE>,<LONGITUDE>\", not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 347
    :pswitch_c2
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setTime(J)V

    goto/16 :goto_1e

    .line 343
    :pswitch_cf
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/location/Location;->setAccuracy(F)V

    goto/16 :goto_1e

    :sswitch_data_dc
    .sparse-switch
        -0x7e1ee167 -> :sswitch_61
        0x4f7a886d -> :sswitch_56
        0x72400555 -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_c2
        :pswitch_85
    .end packed-switch
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    const/4 v0, -0x1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_8e

    goto :goto_65

    :sswitch_12
    const-string/jumbo v1, "is-adas-gnss-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_65

    :cond_1c
    const/4 v0, 0x6

    goto :goto_65

    :sswitch_1e
    const-string/jumbo v1, "set-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_65

    :cond_28
    const/4 v0, 0x5

    goto :goto_65

    :sswitch_2a
    const-string/jumbo v1, "set-adas-gnss-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_65

    :cond_34
    const/4 v0, 0x4

    goto :goto_65

    :sswitch_36
    const-string/jumbo v1, "set-automotive-gnss-suspended"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_65

    :cond_40
    const/4 v0, 0x3

    goto :goto_65

    :sswitch_42
    const-string/jumbo v1, "is-automotive-gnss-suspended"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_65

    :cond_4c
    const/4 v0, 0x2

    goto :goto_65

    :sswitch_4e
    const-string/jumbo v1, "providers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_65

    :cond_58
    const/4 v0, 0x1

    goto :goto_65

    :sswitch_5a
    const-string/jumbo v1, "is-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_65

    :cond_64
    move v0, v2

    :goto_65
    packed-switch v0, :pswitch_data_ac

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 65
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsAdasGnssLocationEnabled()V

    return v2

    .line 61
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetLocationEnabled()V

    return v2

    .line 69
    :pswitch_75
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetAdasGnssLocationEnabled()V

    return v2

    .line 73
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetAutomotiveGnssSuspended()V

    return v2

    .line 77
    :pswitch_7d
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsAutomotiveGnssSuspended()V

    return v2

    .line 81
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationShellCommand;->parseProvidersCommand(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 57
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsLocationEnabled()V

    return v2

    :sswitch_data_8e
    .sparse-switch
        -0x3f71c494 -> :sswitch_5a
        -0x20a3475e -> :sswitch_4e
        -0x1a7afff6 -> :sswitch_42
        -0x158a66be -> :sswitch_36
        -0x5102b3e -> :sswitch_2a
        0x5c29e334 -> :sswitch_1e
        0x61cd46fa -> :sswitch_12
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 371
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Location service commands:"

    .line 372
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help or -h"

    .line 373
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    .line 374
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  is-location-enabled [--user <USER_ID>]"

    .line 375
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the master location switch enabled state. If no user is specified,"

    .line 376
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    the current user is assumed."

    .line 377
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-location-enabled true|false [--user <USER_ID>]"

    .line 378
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the master location switch enabled state. If no user is specified,"

    .line 379
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6b

    const-string p0, "  is-adas-gnss-location-enabled [--user <USER_ID>]"

    .line 382
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Gets the ADAS GNSS location enabled state. If no user is specified,"

    .line 383
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  set-adas-gnss-location-enabled true|false [--user <USER_ID>]"

    .line 385
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Sets the ADAS GNSS location enabled state. If no user is specified,"

    .line 386
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  is-automotive-gnss-suspended"

    .line 388
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Gets the automotive GNSS suspended state."

    .line 389
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  set-automotive-gnss-suspended true|false"

    .line 390
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Sets the automotive GNSS suspended state."

    .line 391
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6b
    const-string p0, "  providers"

    .line 393
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    The providers command is followed by a subcommand, as listed below:"

    .line 394
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string p0, "    add-test-provider <PROVIDER> [--requiresNetwork] [--requiresSatellite]"

    .line 396
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      [--requiresCell] [--hasMonetaryCost] [--supportsAltitude]"

    .line 397
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      [--supportsSpeed] [--supportsBearing]"

    .line 398
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      [--powerRequirement <POWER_REQUIREMENT>]"

    .line 399
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      [--extraAttributionTags <TAG>,<TAG>,...]"

    .line 400
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Add the given test provider. Requires MOCK_LOCATION permissions which"

    .line 401
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      can be enabled by running \"adb shell appops set <uid>"

    .line 402
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      android:mock_location allow\". There are optional flags that can be"

    .line 403
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      used to configure the provider properties and additional arguments. If"

    .line 404
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      no flags are included, then default values will be used."

    .line 405
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    remove-test-provider <PROVIDER>"

    .line 406
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Remove the given test provider."

    .line 407
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    set-test-provider-enabled <PROVIDER> true|false"

    .line 408
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Sets the given test provider enabled state."

    .line 409
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    set-test-provider-location <PROVIDER> --location <LATITUDE>,<LONGITUDE>"

    .line 410
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      [--accuracy <ACCURACY>] [--time <TIME>]"

    .line 411
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Set location for given test provider. Accuracy and time are optional."

    .line 412
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    send-extra-command <PROVIDER> <COMMAND>"

    .line 413
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Sends the given extra command to the given provider."

    .line 414
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string p0, "      Common commands that may be supported by the gps provider, depending on"

    .line 416
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      hardware and software configurations:"

    .line 417
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        delete_aiding_data - requests deletion of any predictive aiding data"

    .line 418
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        force_time_injection - requests NTP time injection"

    .line 419
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        force_psds_injection - requests predictive aiding data injection"

    .line 420
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        request_power_stats - requests GNSS power stats update"

    .line 421
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseProvidersCommand(Ljava/lang/String;)I
    .registers 5

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_64

    goto :goto_47

    :sswitch_d
    const-string/jumbo v0, "send-extra-command"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_47

    :cond_17
    const/4 v2, 0x4

    goto :goto_47

    :sswitch_19
    const-string v0, "add-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_47

    :cond_22
    const/4 v2, 0x3

    goto :goto_47

    :sswitch_24
    const-string/jumbo v0, "set-test-provider-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_47

    :cond_2e
    const/4 v2, 0x2

    goto :goto_47

    :sswitch_30
    const-string/jumbo v0, "set-test-provider-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_47

    :cond_3a
    const/4 v2, 0x1

    goto :goto_47

    :sswitch_3c
    const-string/jumbo v0, "remove-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_47

    :cond_46
    move v2, v1

    :goto_47
    packed-switch v2, :pswitch_data_7a

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 108
    :pswitch_4f
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSendExtraCommand()V

    return v1

    .line 92
    :pswitch_53
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleAddTestProvider()V

    return v1

    .line 100
    :pswitch_57
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderEnabled()V

    return v1

    .line 104
    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderLocation()V

    return v1

    .line 96
    :pswitch_5f
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleRemoveTestProvider()V

    return v1

    nop

    :sswitch_data_64
    .sparse-switch
        -0x638384bd -> :sswitch_3c
        -0x625a9a9f -> :sswitch_30
        -0x3ab9feb -> :sswitch_24
        0xae04a0 -> :sswitch_19
        0x7961b909 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
    .end packed-switch
.end method
