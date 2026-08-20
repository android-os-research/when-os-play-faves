.class public Lcom/android/internal/telephony/metrics/PerSimStatus;
.super Ljava/lang/Object;
.source "PerSimStatus.java"


# instance fields
.field public final blacklist advancedCallingSettingEnabled:Z

.field public final blacklist carrierId:I

.field public final blacklist dataRoamingEnabled:Z

.field public final blacklist disabled2g:Z

.field public final blacklist minimumVoltageClass:I

.field public final blacklist phoneNumberSourceCarrier:I

.field public final blacklist phoneNumberSourceIms:I

.field public final blacklist phoneNumberSourceUicc:I

.field public final blacklist pin1Enabled:Z

.field public final blacklist preferredNetworkType:J

.field public final blacklist userModifiedApnTypes:I

.field public final blacklist voWiFiModeSetting:I

.field public final blacklist voWiFiRoamingModeSetting:I

.field public final blacklist voWiFiSettingEnabled:Z

.field public final blacklist vtSettingEnabled:Z


# direct methods
.method private constructor blacklist <init>(IIIIZZIIZZJZZII)V
    .registers 20

    move-object v0, p0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 123
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->carrierId:I

    move v1, p2

    .line 124
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceUicc:I

    move v1, p3

    .line 125
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceCarrier:I

    move v1, p4

    .line 126
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceIms:I

    move v1, p5

    .line 127
    iput-boolean v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->advancedCallingSettingEnabled:Z

    move v1, p6

    .line 128
    iput-boolean v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiSettingEnabled:Z

    move v1, p7

    .line 129
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiModeSetting:I

    move v1, p8

    .line 130
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiRoamingModeSetting:I

    move v1, p9

    .line 131
    iput-boolean v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->vtSettingEnabled:Z

    move v1, p10

    .line 132
    iput-boolean v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->dataRoamingEnabled:Z

    move-wide v1, p11

    .line 133
    iput-wide v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->preferredNetworkType:J

    move/from16 v1, p13

    .line 134
    iput-boolean v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->disabled2g:Z

    move/from16 v1, p14

    .line 135
    iput-boolean v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->pin1Enabled:Z

    move/from16 v1, p15

    .line 136
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->minimumVoltageClass:I

    move/from16 v1, p16

    .line 137
    iput v1, v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->userModifiedApnTypes:I

    return-void
.end method

.method public static blacklist getCurrentState(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/metrics/PerSimStatus;
    .registers 22

    .line 81
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getNumberIds(Lcom/android/internal/telephony/Phone;)[I

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getImsMmTelManager(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 85
    new-instance v20, Lcom/android/internal/telephony/metrics/PerSimStatus;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v4

    const/4 v3, 0x0

    aget v5, v0, v3

    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x2

    aget v7, v0, v7

    if-nez v1, :cond_23

    move v8, v3

    goto :goto_28

    .line 90
    :cond_23
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v0

    move v8, v0

    :goto_28
    if-nez v1, :cond_2c

    move v9, v3

    goto :goto_31

    .line 91
    :cond_2c
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v0

    move v9, v0

    :goto_31
    if-nez v1, :cond_35

    move v10, v3

    goto :goto_3e

    .line 94
    :cond_35
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->wifiCallingModeToProtoEnum(I)I

    move-result v0

    move v10, v0

    :goto_3e
    if-nez v1, :cond_42

    move v11, v3

    goto :goto_4b

    .line 97
    :cond_42
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->wifiCallingModeToProtoEnum(I)I

    move-result v0

    move v11, v0

    :goto_4b
    if-nez v1, :cond_4f

    move v12, v3

    goto :goto_54

    .line 98
    :cond_4f
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v0

    move v12, v0

    .line 99
    :goto_54
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v13

    move-object/from16 v0, p0

    .line 100
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v14

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->is2gDisabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-nez v2, :cond_67

    move/from16 v17, v3

    goto :goto_6d

    .line 102
    :cond_67
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    move/from16 v17, v1

    .line 103
    :goto_6d
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getMinimumVoltageClass(Lcom/android/internal/telephony/Phone;)I

    move-result v18

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getUserModifiedApnTypes(Lcom/android/internal/telephony/Phone;)I

    move-result v19

    move-object/from16 v3, v20

    invoke-direct/range {v3 .. v19}, Lcom/android/internal/telephony/metrics/PerSimStatus;-><init>(IIIIZZIIZZJZZII)V

    return-object v20
.end method

.method private static blacklist getImsMmTelManager(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ims/ImsMmTelManager;
    .registers 3

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 147
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    return-object v1
.end method

.method private static blacklist getMinimumVoltageClass(Lcom/android/internal/telephony/Phone;)I
    .registers 3

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 239
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getMinimumVoltageClass()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1e

    return v0

    :cond_1e
    return v1
.end method

.method private static blacklist getNumberIds(Lcom/android/internal/telephony/Phone;)[I
    .registers 10

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 171
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 173
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/metrics/PerSimStatus$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/metrics/PerSimStatus$$ExternalSyntheticLambda0;-><init>()V

    .line 174
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, ""

    .line 175
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x1

    .line 179
    invoke-virtual {v0, p0, v5, v1, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x2

    .line 181
    invoke-virtual {v0, p0, v6, v1, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 183
    invoke-virtual {v0, p0, v3, v1, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v6

    new-array p0, v3, [I

    move v0, v7

    :goto_40
    if-ge v0, v3, :cond_73

    .line 188
    aget-object v1, v4, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_70

    :cond_4b
    move v1, v7

    :goto_4c
    if-ge v1, v0, :cond_67

    .line 195
    aget-object v6, v4, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_64

    aget-object v6, v4, v0

    aget-object v8, v4, v1

    .line 196
    invoke-static {v6, v8, v2}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 198
    aget v6, p0, v1

    aput v6, p0, v0

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 202
    :cond_67
    aget v1, p0, v0

    if-nez v1, :cond_70

    add-int/lit8 v1, v5, 0x1

    .line 203
    aput v5, p0, v0

    move v5, v1

    :cond_70
    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_73
    return-object p0
.end method

.method private static blacklist getUserModifiedApnTypes(Lcom/android/internal/telephony/Phone;)I
    .registers 9

    const-string v0, "type"

    .line 253
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v5, v7

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subId/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "edited=?"

    const/4 v6, 0x0

    .line 259
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    move v0, v7

    :goto_3b
    if-eqz p0, :cond_57

    .line 266
    :try_start_3d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 267
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_4d

    or-int/2addr v0, v1

    goto :goto_3b

    :catchall_4d
    move-exception v0

    .line 256
    :try_start_4e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw v0

    :cond_57
    if-eqz p0, :cond_5c

    .line 270
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5c
    return v0
.end method

.method private static blacklist is2gDisabled(Lcom/android/internal/telephony/Phone;)Z
    .registers 5

    const/4 v0, 0x3

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v0

    const-wide/32 v2, 0x804b

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private static blacklist wifiCallingModeToProtoEnum(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v0, :cond_c

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v1

    :cond_d
    return v0
.end method
