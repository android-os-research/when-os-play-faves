.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x2

.field public static AUTH_TYPE_NONE:I = 0x0

.field public static AUTH_TYPE_NOTSET:I = -0x1

.field public static AUTH_TYPE_PAP:I = 0x1

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x3

.field public static final SIM_INVALID:I = -0x1

.field public static final SIM_SLOT1:I = 0x0

.field public static final SIM_SLOT2:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field public dunRequired:Z

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mMDMConfigVersion:I

.field public mPendingGetApnList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 106
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    iput v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 138
    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .registers 32

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p3

    monitor-enter p0

    :try_start_7
    const-string v3, "ApnSettingsPolicyService"

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNewAp - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_39c

    const-wide/16 v3, -0x1

    if-nez v0, :cond_27

    .line 220
    monitor-exit p0

    return-wide v3

    .line 223
    :cond_27
    :try_start_27
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    move-result-wide v5

    .line 224
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v8

    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 227
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v10

    .line 228
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    move-result v11

    .line 229
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v12

    .line 230
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v13

    .line 231
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v14

    .line 232
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    move-result v15

    .line 233
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_392

    if-nez v4, :cond_65

    goto/16 :goto_392

    :cond_65
    move-object/from16 p1, v14

    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v16, v13

    const/16 v13, 0x41

    if-le v14, v13, :cond_7c

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "APN name maximum length (65)"

    .line 242
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_27 .. :try_end_78} :catchall_39c

    .line 243
    monitor-exit p0

    :goto_79
    const-wide/16 v1, -0x1

    return-wide v1

    .line 245
    :cond_7c
    :try_start_7c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x78

    if-le v13, v14, :cond_8d

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "APN excedes maximum length (120)"

    .line 246
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_39c

    .line 247
    monitor-exit p0

    goto :goto_79

    .line 249
    :cond_8d
    :try_start_8d
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 250
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v12

    .line 251
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v10

    .line 253
    iget-object v10, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_ba

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid protocol!"

    .line 255
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_8d .. :try_end_b8} :catchall_39c

    .line 256
    monitor-exit p0

    goto :goto_79

    :cond_ba
    move-object/from16 v19, v10

    .line 259
    :try_start_bc
    iget-object v10, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_cd

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid Roaming Protocol!"

    .line 261
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_bc .. :try_end_cb} :catchall_39c

    .line 262
    monitor-exit p0

    goto :goto_79

    :cond_cd
    move-object/from16 v20, v10

    .line 265
    :try_start_cf
    iget-object v10, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateMVNOType(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_e0

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid mvno type!"

    .line 267
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_cf .. :try_end_de} :catchall_39c

    .line 268
    monitor-exit p0

    goto :goto_79

    .line 271
    :cond_e0
    :try_start_e0
    iget-object v0, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    move-object/from16 v21, v10

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_39c

    move-object/from16 p3, v10

    .line 276
    :try_start_ea
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 277
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 280
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v10, -0x1

    if-nez v0, :cond_104

    const-string v0, "*"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_104

    .line 281
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_105

    :cond_104
    move v0, v10

    :goto_105
    const-wide/16 v23, 0x1

    if-nez v2, :cond_10d

    cmp-long v25, v23, v5

    if-gtz v25, :cond_139

    :cond_10d
    if-eqz v13, :cond_139

    .line 285
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_139

    if-eqz v14, :cond_139

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_139

    .line 286
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_139

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_139

    if-gt v10, v11, :cond_139

    if-gt v10, v0, :cond_139

    const/4 v10, -0x2

    if-gt v10, v15, :cond_139

    const/4 v10, 0x3

    if-ge v10, v15, :cond_134

    goto :goto_139

    :cond_134
    move-object/from16 v23, v12

    const/4 v0, 0x1

    goto/16 :goto_1c1

    :cond_139
    :goto_139
    if-nez v2, :cond_158

    cmp-long v10, v23, v5

    if-lez v10, :cond_158

    const-string v10, "ApnSettingsPolicyService"
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_141} :catch_1ba
    .catchall {:try_start_ea .. :try_end_141} :catchall_39c

    move-object/from16 v23, v12

    .line 290
    :try_start_143
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUpdateAp() : invalid ap Id "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15a

    :cond_158
    move-object/from16 v23, v12

    .line 292
    :goto_15a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16a

    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap name"

    .line 293
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    :catch_168
    move-exception v0

    goto :goto_1bd

    .line 295
    :cond_16a
    :goto_16a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_177

    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap apn"

    .line 296
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_177
    if-eqz v13, :cond_17f

    .line 298
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_186

    :cond_17f
    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap mcc"

    .line 299
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_186
    if-eqz v14, :cond_191

    .line 301
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18f

    goto :goto_191

    :cond_18f
    :goto_18f
    const/4 v2, -0x1

    goto :goto_199

    :cond_191
    :goto_191
    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap mnc"

    .line 302
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18f

    :goto_199
    if-le v2, v11, :cond_1a3

    const-string v2, "ApnSettingsPolicyService"

    const-string v10, "addUpdateAp() : invalid ap port"

    .line 305
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :cond_1a3
    if-le v2, v0, :cond_1ac

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp() : invalid ap iMmsPort"

    .line 308
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ac
    const/4 v2, -0x2

    if-gt v2, v15, :cond_1b2

    const/4 v2, 0x3

    if-ge v2, v15, :cond_1c0

    :cond_1b2
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp() : invalid ap authType"

    .line 311
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_1b9} :catch_168
    .catchall {:try_start_143 .. :try_end_1b9} :catchall_39c

    goto :goto_1c0

    :catch_1ba
    move-exception v0

    move-object/from16 v23, v12

    .line 316
    :goto_1bd
    :try_start_1bd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c0
    :goto_1c0
    const/4 v0, 0x0

    :goto_1c1
    if-eqz v0, :cond_38e

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24
    :try_end_1c7
    .catchall {:try_start_1bd .. :try_end_1c7} :catchall_39c

    .line 322
    :try_start_1c7
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 323
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 324
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz v0, :cond_1ec

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_1ec

    const/4 v10, 0x0

    const/4 v12, 0x3

    .line 328
    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 330
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v10, v22

    goto :goto_1ef

    :cond_1ec
    const/4 v10, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 335
    :goto_1ef
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v18

    .line 339
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, v17

    .line 340
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v26, v5

    move-object/from16 v5, v16

    .line 341
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    .line 342
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p1, v10

    .line 344
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v16, v12

    const-string/jumbo v12, "name"

    move-object/from16 v17, v6

    move/from16 v6, p2

    .line 346
    invoke-virtual {v1, v6, v10, v12, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "numeric"

    if-eqz v13, :cond_243

    if-nez v14, :cond_233

    goto :goto_243

    .line 349
    :cond_233
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_244

    :cond_243
    :goto_243
    const/4 v12, 0x0

    .line 348
    :goto_244
    invoke-virtual {v1, v6, v10, v3, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "mcc"

    .line 350
    invoke-virtual {v1, v6, v10, v3, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "mnc"

    .line 351
    invoke-virtual {v1, v6, v10, v3, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "apn"

    .line 352
    invoke-virtual {v1, v6, v10, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    .line 353
    invoke-virtual {v1, v6, v10, v3, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "server"

    .line 354
    invoke-virtual {v1, v6, v10, v0, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    .line 355
    invoke-virtual {v1, v6, v10, v0, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "proxy"

    .line 356
    invoke-virtual {v1, v6, v10, v0, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "port"

    if-ltz v11, :cond_27a

    .line 357
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_27c

    :cond_27a
    const-string v3, ""

    :goto_27c
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mmsproxy"

    .line 359
    invoke-virtual {v1, v6, v10, v0, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mmsport"

    move-object/from16 v2, v23

    .line 360
    invoke-virtual {v1, v6, v10, v0, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mmsc"

    .line 361
    invoke-virtual {v1, v6, v10, v0, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2a8

    const-string v0, "authtype"

    const/4 v2, -0x2

    if-ge v2, v15, :cond_29e

    const/4 v2, 0x4

    if-le v2, v15, :cond_29e

    goto :goto_2a0

    .line 365
    :cond_29e
    sget v15, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 364
    :goto_2a0
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2b9

    :cond_2a8
    if-nez v6, :cond_2b9

    const/4 v2, -0x2

    if-ge v2, v15, :cond_2b9

    const/4 v0, 0x4

    if-le v0, v15, :cond_2b9

    const-string v0, "authtype"

    .line 367
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2b9
    :goto_2b9
    const-string/jumbo v0, "type"

    move-object/from16 v2, v17

    .line 370
    invoke-virtual {v1, v6, v10, v0, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_2f5

    if-eqz p1, :cond_2f5

    move-object/from16 v12, v16

    .line 373
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f5

    const-string v0, "current"

    const/4 v2, 0x1

    .line 374
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getDeviceSimSlotCnt()I

    move-result v0

    if-le v0, v2, :cond_2f5

    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "IS DUAL SIM"

    .line 376
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "current1"

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2f5
    const-string v0, "edited"

    const/4 v2, 0x1

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    iget v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_315

    const-string/jumbo v0, "protocol"

    move-object/from16 v3, v19

    .line 387
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "roaming_protocol"

    move-object/from16 v3, v20

    .line 388
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    :cond_315
    const-string/jumbo v0, "mvno_type"

    move-object/from16 v3, v21

    .line 391
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mvno_match_data"

    move-object/from16 v3, p3

    .line 392
    invoke-virtual {v1, v6, v10, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_373

    if-eqz v6, :cond_34d

    .line 397
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 398
    invoke-virtual {v0, v3, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_33d

    move v10, v2

    goto :goto_33e

    :cond_33d
    const/4 v10, 0x0

    :goto_33e
    if-eqz v10, :cond_37a

    const-string v2, "ApnSettingsPolicyService"

    const-string v3, "addUpdateAp Created rowUri : "

    .line 401
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    :goto_34b
    move-wide v3, v2

    goto :goto_37c

    .line 406
    :cond_34d
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v3, v26

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 407
    iget-object v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    .line 408
    invoke-virtual {v3, v0, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_364

    move v10, v2

    goto :goto_365

    :cond_364
    const/4 v10, 0x0

    :goto_365
    if-eqz v10, :cond_37a

    const-string v2, "ApnSettingsPolicyService"

    const-string v3, "addUpdateAp Updated rowUri : "

    .line 411
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_34b

    :cond_373
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp Error: Empty dataset."

    .line 416
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37a
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_37a} :catch_382
    .catchall {:try_start_1c7 .. :try_end_37a} :catchall_380

    :cond_37a
    const-wide/16 v3, -0x1

    .line 421
    :goto_37c
    :try_start_37c
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_37f
    .catchall {:try_start_37c .. :try_end_37f} :catchall_39c

    goto :goto_390

    :catchall_380
    move-exception v0

    goto :goto_38a

    :catch_382
    move-exception v0

    .line 419
    :try_start_383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_386
    .catchall {:try_start_383 .. :try_end_386} :catchall_380

    .line 421
    :try_start_386
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38e

    :goto_38a
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    throw v0
    :try_end_38e
    .catchall {:try_start_386 .. :try_end_38e} :catchall_39c

    :cond_38e
    :goto_38e
    const-wide/16 v3, -0x1

    .line 424
    :goto_390
    monitor-exit p0

    return-wide v3

    :cond_392
    :goto_392
    :try_start_392
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid value"

    .line 237
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_399
    .catchall {:try_start_392 .. :try_end_399} :catchall_39c

    .line 238
    monitor-exit p0

    goto/16 :goto_79

    :catchall_39c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 9

    monitor-enter p0

    const/4 v0, -0x1

    .line 182
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v3, p2

    const/4 v3, 0x0

    if-lez p1, :cond_19

    const-string p1, "ApnSettingsPolicyService"

    const-string p2, "deleteAp : apId is invalid"

    .line 186
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_54

    .line 187
    monitor-exit p0

    return v3

    .line 190
    :cond_19
    :try_start_19
    sget-object p1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string p1, "ApnSettingsPolicyService"

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_40} :catch_46
    .catchall {:try_start_19 .. :try_end_40} :catchall_44

    .line 196
    :goto_40
    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_54

    goto :goto_4b

    :catchall_44
    move-exception p1

    goto :goto_50

    :catch_46
    move-exception p1

    .line 194
    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    goto :goto_40

    :goto_4b
    if-lez v0, :cond_4e

    const/4 v3, 0x1

    .line 198
    :cond_4e
    monitor-exit p0

    return v3

    .line 196
    :goto_50
    :try_start_50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw p1
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final enforceApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 127
    invoke-virtual {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 133
    invoke-virtual {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 490
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 494
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2b

    .line 496
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->retrieveApnListFromDatabase()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 499
    :goto_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4e

    .line 500
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {p1, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_5f

    .line 505
    :cond_4e
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :goto_5f
    return-object p0
.end method

.method public final getApnListUri(I)Landroid/net/Uri;
    .registers 5

    const-string v0, "ApnSettingsPolicyService"

    const-string v1, "getApnListUri"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 598
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_40

    .line 599
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    goto :goto_40

    :cond_19
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    .line 605
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 606
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v1, 0x0

    aget p1, p1, v1

    goto :goto_2b

    :cond_2a
    move p1, v0

    .line 612
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 615
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 617
    :cond_35
    sget-object p0, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 618
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_47

    :cond_40
    :goto_40
    const-string p0, "No SIM "

    .line 600
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    :goto_47
    return-object p0
.end method

.method public getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 13

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-wide/16 v0, 0x1

    cmp-long p1, v0, p2

    const/4 v0, 0x0

    if-lez p1, :cond_12

    const-string p0, "ApnSettingsPolicyService"

    const-string p1, "getApnSettings : apId is invalid"

    .line 720
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 723
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 725
    :try_start_16
    sget-object p1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 726
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_126
    .catchall {:try_start_16 .. :try_end_2a} :catchall_124

    if-eqz p1, :cond_121

    .line 727
    :try_start_2c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_121

    .line 728
    new-instance p2, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {p2}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string p3, "_id"

    .line 729
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 730
    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo p3, "name"

    .line 731
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo p3, "mcc"

    .line 732
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo p3, "mnc"

    .line 733
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string p3, "apn"

    .line 734
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo p3, "user"

    .line 735
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo p3, "server"

    .line 736
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo p3, "password"

    .line 737
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo p3, "proxy"

    .line 738
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo p3, "port"

    .line 739
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    .line 740
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a7

    .line 741
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 742
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_a7
    const-string/jumbo p3, "mmsproxy"

    .line 744
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo p3, "mmsport"

    .line 745
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo p3, "mmsc"

    .line 746
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string p3, "authtype"

    .line 747
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    .line 748
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d8

    .line 749
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 750
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_d8
    const-string/jumbo p3, "type"

    .line 752
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 753
    iget p3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v3, 0x11

    if-lt p3, v3, :cond_fa

    const-string/jumbo p3, "protocol"

    .line 756
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo p3, "roaming_protocol"

    .line 757
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_fa
    const-string/jumbo p3, "mvno_type"

    .line 759
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    .line 760
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_109

    .line 761
    iput-object p3, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_109
    const-string/jumbo p3, "mvno_match_data"

    .line 763
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    .line 764
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_118

    .line 765
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_118} :catch_11f
    .catchall {:try_start_2c .. :try_end_118} :catchall_134

    .line 773
    :cond_118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 775
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catch_11f
    move-exception p0

    goto :goto_128

    :cond_121
    if-eqz p1, :cond_130

    goto :goto_12d

    :catchall_124
    move-exception p0

    goto :goto_136

    :catch_126
    move-exception p0

    move-object p1, v0

    .line 770
    :goto_128
    :try_start_128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_134

    if-eqz p1, :cond_130

    .line 773
    :goto_12d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_130
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_134
    move-exception p0

    move-object v0, p1

    :goto_136
    if-eqz v0, :cond_13b

    .line 773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_13b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    throw p0
.end method

.method public final getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    .line 818
    :try_start_2
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_f

    if-nez p1, :cond_d

    goto :goto_13

    :cond_d
    move-object p0, p1

    goto :goto_13

    :catch_f
    move-exception p1

    .line 823
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-object p0
.end method

.method public final getDeviceSimSlotCnt()I
    .registers 3

    .line 668
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "simSlotCnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettingsPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 118
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getFirstSlotIndex()I
    .registers 8

    const-string/jumbo v0, "ril.ICC_TYPE0"

    const/4 v1, 0x0

    const-string v2, "0"

    .line 675
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ril.ICC_TYPE1"

    const/4 v4, 0x1

    .line 676
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone1_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_23

    move v5, v4

    goto :goto_24

    :cond_23
    move v5, v1

    .line 680
    :goto_24
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v6, "phone2_on"

    invoke-static {p0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_35

    move p0, v4

    goto :goto_36

    :cond_35
    move p0, v1

    :goto_36
    const/4 v6, -0x1

    if-eqz v5, :cond_40

    .line 684
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4b

    :cond_40
    if-eqz p0, :cond_4a

    .line 686
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    move v1, v4

    goto :goto_4b

    :cond_4a
    move v1, v6

    .line 690
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirstSlotIndex : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnSettingsPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 12

    monitor-enter p0

    .line 783
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v1, "getPreferredApn():"

    .line 787
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_9b

    const/4 v2, 0x0

    .line 791
    :try_start_11
    iget-object v3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string/jumbo v6, "name"

    const-string v7, "apn"

    filled-new-array {v3, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "name ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_6f
    .catchall {:try_start_11 .. :try_end_2d} :catchall_6d

    if-eqz v3, :cond_64

    .line 795
    :try_start_2f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_64

    const-string v4, "_id"

    .line 796
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "ApnSettingsPolicyService"

    .line 797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPreferredApn():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_64

    .line 799
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object p1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_60} :catch_62
    .catchall {:try_start_2f .. :try_end_60} :catchall_90

    move-object v2, p1

    goto :goto_64

    :catch_62
    move-exception p1

    goto :goto_71

    :cond_64
    :goto_64
    if-eqz v3, :cond_69

    .line 807
    :try_start_66
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_69
    :goto_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_9b

    goto :goto_8e

    :catchall_6d
    move-exception p1

    goto :goto_92

    :catch_6f
    move-exception p1

    move-object v3, v2

    :goto_71
    :try_start_71
    const-string v4, "ApnSettingsPolicyService"

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreferredApn Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_90

    if-eqz v3, :cond_69

    .line 807
    :try_start_8a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_9b

    goto :goto_69

    .line 812
    :goto_8e
    monitor-exit p0

    return-object v2

    :catchall_90
    move-exception p1

    move-object v2, v3

    :goto_92
    if-eqz v2, :cond_97

    .line 807
    :try_start_94
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    throw p1
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 664
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo p0, "ril.ICC_TYPE0"

    .line 695
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ril.ICC_TYPE1"

    .line 696
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    if-eqz v0, :cond_1d

    .line 699
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1d

    goto :goto_32

    :cond_1d
    move-object v0, p3

    goto :goto_32

    .line 700
    :cond_1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz v2, :cond_2e

    .line 701
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v2, p3

    :goto_2f
    move-object v0, v2

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 704
    :goto_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 705
    invoke-static {p2, p1, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getTelephonyProperty : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettingsPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getWhereClause(I)Ljava/lang/String;
    .registers 9

    const-string p1, "ApnSettingsPolicyService"

    const-string/jumbo v0, "getWhereClause"

    .line 625
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 631
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const-string/jumbo v1, "ril.ICC_TYPE0"

    const/4 v2, 0x0

    const-string v3, "0"

    .line 632
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone1_on"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_33

    move v4, v6

    goto :goto_34

    :cond_33
    move v4, v2

    :goto_34
    if-eqz v4, :cond_3e

    .line 638
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    move v1, v6

    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 641
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getDeviceSimSlotCnt()I

    move-result v4

    if-le v4, v6, :cond_7b

    const-string/jumbo v4, "ril.ICC_TYPE1"

    .line 642
    invoke-virtual {p0, v4, v6, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 643
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v5, "phone2_on"

    invoke-static {p0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_5d

    move p0, v6

    goto :goto_5e

    :cond_5d
    move p0, v2

    :goto_5e
    if-eqz p0, :cond_67

    .line 646
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    move v2, v6

    :cond_67
    if-eqz v1, :cond_71

    if-nez v0, :cond_71

    const-string p0, " AND current = 1 "

    .line 650
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_71
    if-eqz v2, :cond_84

    if-ne v0, v6, :cond_84

    const-string p0, " AND current1 = 1 "

    .line 652
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_7b
    if-eqz v1, :cond_84

    if-nez v0, :cond_84

    const-string p0, " AND current = 1"

    .line 656
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_84
    :goto_84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isValidApnId(J)Z
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    const-string v2, "ApnSettingsPolicyService"

    if-gez v0, :cond_10f

    const-string v0, "_id"

    const-string/jumbo v3, "numeric"

    const-string/jumbo v4, "type"

    .line 432
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    .line 437
    :try_start_16
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 438
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    .line 439
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 440
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const-string/jumbo v5, "ril.simoperator"

    const-string v6, "ETC"

    .line 444
    invoke-static {v3, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isValidApnId: simOp = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", numeric = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CTC"

    .line 447
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    const-string/jumbo v4, "gsm.sim.cdmaoperator.numeric"

    const-string v5, ""

    .line 448
    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6d

    const-string v4, "46003"

    goto :goto_6e

    :cond_6d
    move-object v4, v3

    .line 451
    :goto_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidApnId: CTC card! numeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cdmaOperator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_8b
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 455
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidApnId() row count : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for apId : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_c5} :catch_102
    .catchall {:try_start_16 .. :try_end_c5} :catchall_100

    goto :goto_c7

    :cond_c6
    move p0, v1

    :goto_c7
    if-eqz p0, :cond_f9

    const/4 p1, 0x1

    .line 462
    :try_start_ca
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_fa

    const/4 p1, 0x2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_fa

    .line 463
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "dun"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_fa

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "mms"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_f2} :catch_f5
    .catchall {:try_start_ca .. :try_end_f2} :catchall_100

    if-eqz p1, :cond_f9

    goto :goto_fa

    :catch_f5
    move-exception p1

    move v1, p0

    move-object p0, p1

    goto :goto_103

    :cond_f9
    move v1, p0

    :cond_fa
    :goto_fa
    if-eqz v0, :cond_124

    .line 475
    :goto_fc
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_124

    :catchall_100
    move-exception p0

    goto :goto_109

    :catch_102
    move-exception p0

    .line 472
    :goto_103
    :try_start_103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_100

    if-eqz v0, :cond_124

    goto :goto_fc

    :goto_109
    if-eqz v0, :cond_10e

    .line 475
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_10e
    throw p0

    .line 479
    :cond_10f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isValidApnId() : invalid apId : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    :goto_124
    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final retrieveApnListFromDatabase()Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "ApnSettingsPolicyService"

    const-string/jumbo v2, "retrieveApnListFromDatabase"

    .line 513
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_14
    const-string v5, "_id"

    const-string/jumbo v6, "name"

    const-string/jumbo v7, "mcc"

    const-string/jumbo v8, "mnc"

    const-string v9, "apn"

    const-string/jumbo v10, "user"

    const-string/jumbo v11, "server"

    const-string/jumbo v12, "password"

    const-string/jumbo v13, "proxy"

    const-string/jumbo v14, "port"

    const-string/jumbo v15, "mmsproxy"

    const-string/jumbo v16, "mmsport"

    const-string/jumbo v17, "mmsc"

    const-string v18, "authtype"

    const-string/jumbo v19, "type"

    const-string/jumbo v20, "protocol"

    const-string/jumbo v21, "roaming_protocol"

    const-string/jumbo v22, "mvno_type"

    const-string/jumbo v23, "mvno_match_data"

    .line 519
    filled-new-array/range {v5 .. v23}, [Ljava/lang/String;

    move-result-object v26

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getFirstSlotIndex()I

    move-result v5

    .line 530
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListUri(I)Landroid/net/Uri;

    move-result-object v25

    .line 532
    iget-object v6, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 533
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getWhereClause(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 532
    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_15f

    .line 536
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_15f

    .line 538
    :cond_70
    new-instance v5, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v5}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string v6, "_id"

    .line 539
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 540
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo v6, "name"

    .line 541
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v6, "mcc"

    .line 542
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v6, "mnc"

    .line 543
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v6, "apn"

    .line 544
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v6, "user"

    .line 545
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v6, "server"

    .line 546
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v6, "password"

    .line 547
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v6, "proxy"

    .line 548
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v6, "port"

    .line 549
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 550
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e5

    .line 551
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 552
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    :cond_e5
    const-string/jumbo v6, "mmsproxy"

    .line 554
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v6, "mmsport"

    .line 555
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v6, "mmsc"

    .line 556
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v6, "authtype"

    .line 557
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 558
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_116

    .line 559
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 560
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_116
    const-string/jumbo v6, "type"

    .line 562
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 563
    iget v6, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_138

    const-string/jumbo v6, "protocol"

    .line 566
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo v6, "roaming_protocol"

    .line 567
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_138
    const-string/jumbo v6, "mvno_type"

    .line 570
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 571
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_147

    .line 572
    iput-object v6, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_147
    const-string/jumbo v6, "mvno_match_data"

    .line 574
    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_156

    .line 576
    iput-object v6, v5, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    .line 578
    :cond_156
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_15d
    .catchall {:try_start_14 .. :try_end_15d} :catchall_168

    if-nez v5, :cond_70

    :cond_15f
    if-eqz v4, :cond_164

    .line 585
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_164
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_168
    move-exception v0

    if-eqz v4, :cond_16e

    .line 585
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_16e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    throw v0
.end method

.method public final setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_f

    if-nez p4, :cond_7

    const-string p0, ""

    goto :goto_b

    .line 838
    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_b
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_f
    if-eqz p4, :cond_18

    .line 842
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_18
    :goto_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setColumnValue: key="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettingsPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 9

    monitor-enter p0

    .line 149
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_7a

    const-wide/16 v2, 0x0

    cmp-long p1, v2, p2

    const/4 v2, 0x0

    if-eqz p1, :cond_29

    if-lez p1, :cond_29

    :try_start_11
    const-string p1, "ApnSettingsPolicyService"

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 156
    :cond_29
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 157
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    if-nez p1, :cond_3a

    const-wide/16 p2, -0x1

    .line 158
    :cond_3a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v3, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_52

    const/4 p2, 0x1

    move v2, p2

    :cond_52
    const-string p2, "ApnSettingsPolicyService"

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferedAp() row count : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_69} :catch_6f
    .catchall {:try_start_11 .. :try_end_69} :catchall_6d

    .line 168
    :cond_69
    :goto_69
    :try_start_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7a

    goto :goto_74

    :catchall_6d
    move-exception p1

    goto :goto_76

    :catch_6f
    move-exception p1

    .line 166
    :try_start_70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_6d

    goto :goto_69

    .line 170
    :goto_74
    monitor-exit p0

    return v2

    .line 168
    :goto_76
    :try_start_76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    throw p1
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final validateMVNOType(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_40

    const/4 v0, -0x1

    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_42

    goto :goto_3b

    :sswitch_d
    const-string/jumbo v1, "imsi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_3b

    :cond_17
    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_19
    const-string/jumbo v1, "spn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_3b

    :cond_23
    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_25
    const-string/jumbo v1, "gid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_3b

    :cond_2f
    move v0, v2

    goto :goto_3b

    :sswitch_31
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, p0

    :goto_3b
    packed-switch v0, :pswitch_data_54

    goto :goto_40

    :pswitch_3f
    return v2

    :cond_40
    :goto_40
    return p0

    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_31
        0x18fc2 -> :sswitch_25
        0x1bdb1 -> :sswitch_19
        0x31627a -> :sswitch_d
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method public final validateProtocol(Ljava/lang/String;)Z
    .registers 5

    .line 913
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 916
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_3a

    goto :goto_35

    :sswitch_15
    const-string v1, "IPV6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 p0, 0x2

    goto :goto_35

    :sswitch_20
    const-string v1, "IP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_35

    :cond_29
    move p0, v2

    goto :goto_35

    :sswitch_2b
    const-string v1, "IPV4V6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    move p0, v0

    :goto_35
    packed-switch p0, :pswitch_data_48

    return v0

    :pswitch_39
    return v2

    :sswitch_data_3a
    .sparse-switch
        -0x7edefc9b -> :sswitch_2b
        0x927 -> :sswitch_20
        0x226607 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public final validateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_3

    goto :goto_7

    .line 850
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_7
    return-object p1
.end method
