.class public Lcom/android/server/enterprise/nap/DataDeliveryHelper;
.super Ljava/lang/Object;
.source "DataDeliveryHelper.java"


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:DataDeliveryHelper"


# instance fields
.field public identifier:Ljava/lang/String;

.field public operationUserId:I

.field public profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field public serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 34
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 48
    iput-object p2, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 49
    iput p3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eqz p1, :cond_15

    .line 51
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    :cond_15
    return-void
.end method


# virtual methods
.method public final blockDnsFlow(Lorg/json/JSONObject;II)I
    .registers 7

    const/4 p0, 0x1

    :try_start_1
    const-string v0, "dport"

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "53"

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "dnsuid"

    .line 306
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 307
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_2b

    if-nez p3, :cond_26

    if-nez p2, :cond_26

    if-eqz p0, :cond_26

    const/4 p0, 0x3

    goto :goto_2b

    :cond_26
    if-eq p0, p2, :cond_2a

    const/4 p0, 0x2

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :catch_2b
    :cond_2b
    :goto_2b
    return p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public getOperationUserId()I
    .registers 1

    .line 285
    iget p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    return p0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object p0
.end method

.method public getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz p0, :cond_9

    .line 269
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-object p0
.end method

.method public processData(Ljava/lang/String;)Ljava/lang/String;
    .registers 24

    move-object/from16 v0, p0

    const-string v1, "brecv"

    const-string v2, "end"

    const-string/jumbo v3, "start"

    const-string v4, "bsent"

    const-string/jumbo v5, "protocol"

    const-string/jumbo v6, "sport"

    const-string v7, "dst"

    const-string/jumbo v8, "src"

    const-string/jumbo v9, "recordtype"

    const-string v10, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v11, "parentprochash"

    const-string/jumbo v12, "prochash"

    const-string/jumbo v13, "procname"

    const-string v14, "dnsuid"

    const-string/jumbo v15, "uid"

    move-object/from16 v16, v10

    .line 57
    :try_start_2b
    new-instance v10, Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2d} :catch_290
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_285

    move-object/from16 v17, v14

    move-object/from16 v14, p1

    :try_start_31
    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v14, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlags()I

    move-result v14

    move-object/from16 v18, v1

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_41} :catch_280
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_285

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .line 67
    :try_start_44
    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_48} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_27a

    if-eqz v20, :cond_85

    .line 70
    :try_start_4a
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 71
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_79

    move-object/from16 v20, v3

    .line 73
    iget v3, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    invoke-virtual {v0, v10, v3, v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    move-result v3
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_60} :catch_83
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_60} :catch_290
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_60} :catch_285

    move-object/from16 v21, v4

    if-lez v3, :cond_89

    const/4 v4, 0x3

    if-ne v3, v4, :cond_69

    const/4 v3, 0x0

    return-object v3

    :cond_69
    const/4 v3, 0x0

    .line 78
    :try_start_6a
    iget v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_6c} :catch_77
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_6c} :catch_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6c} :catch_6f

    if-eq v2, v0, :cond_89

    return-object v3

    :catch_6f
    move-exception v0

    move-object v1, v3

    goto/16 :goto_287

    :catch_73
    move-exception v0

    move-object v1, v3

    goto/16 :goto_282

    :catch_77
    move-object v2, v3

    goto :goto_84

    :cond_79
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 83
    :try_start_7d
    iget v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_7f} :catch_83
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_7f} :catch_290
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7f} :catch_285

    if-eq v2, v0, :cond_89

    const/4 v2, 0x0

    return-object v2

    :catch_83
    const/4 v2, 0x0

    :goto_84
    return-object v2

    :cond_85
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    :cond_89
    const/4 v2, 0x0

    .line 92
    :try_start_8a
    invoke-virtual {v10, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_8e} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8e} :catch_27a

    .line 93
    :try_start_8e
    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_91} :catch_280
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_285

    const v0, 0x8000

    and-int/2addr v0, v14

    if-nez v0, :cond_99

    if-nez v14, :cond_a1

    :cond_99
    const/4 v2, 0x0

    .line 96
    :try_start_9a
    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_9a .. :try_end_9e} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9e} :catch_27a

    .line 97
    :try_start_9e
    invoke-virtual {v1, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_a1} :catch_280
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_285

    :cond_a1
    and-int/lit16 v0, v14, 0x100

    const-string/jumbo v2, "pid"

    if-nez v0, :cond_aa

    if-nez v14, :cond_b2

    :cond_aa
    const/4 v3, 0x0

    .line 101
    :try_start_ab
    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_af} :catch_73
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_6f

    .line 102
    :try_start_af
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_af .. :try_end_b2} :catch_280
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_285

    :cond_b2
    and-int/lit16 v0, v14, 0x1000

    const-string/jumbo v3, "puid"

    if-nez v0, :cond_bb

    if-nez v14, :cond_c3

    :cond_bb
    const/4 v4, 0x0

    .line 106
    :try_start_bc
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_bc .. :try_end_c0} :catch_277
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c0} :catch_274

    .line 107
    :try_start_c0
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_c0 .. :try_end_c3} :catch_280
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_285

    :cond_c3
    and-int/lit16 v0, v14, 0x2000

    if-nez v0, :cond_c9

    if-nez v14, :cond_d1

    :cond_c9
    const/4 v4, 0x0

    .line 111
    :try_start_ca
    invoke-virtual {v10, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_ca .. :try_end_ce} :catch_277
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ce} :catch_274

    .line 112
    :try_start_ce
    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_ce .. :try_end_d1} :catch_280
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_285

    :cond_d1
    and-int/lit8 v0, v14, 0x8

    if-nez v0, :cond_d7

    if-nez v14, :cond_df

    :cond_d7
    const/4 v4, 0x0

    .line 116
    :try_start_d8
    invoke-virtual {v10, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_d8 .. :try_end_dc} :catch_277
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_dc} :catch_274

    .line 117
    :try_start_dc
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_dc .. :try_end_df} :catch_280
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_285

    :cond_df
    and-int/lit16 v0, v14, 0x4000

    if-nez v0, :cond_e5

    if-nez v14, :cond_ed

    :cond_e5
    const/4 v4, 0x0

    .line 121
    :try_start_e6
    invoke-virtual {v10, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_e6 .. :try_end_ea} :catch_277
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ea} :catch_274

    .line 122
    :try_start_ea
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ed
    .catch Lorg/json/JSONException; {:try_start_ea .. :try_end_ed} :catch_280
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_285

    :cond_ed
    and-int/lit8 v0, v14, 0x10

    const-string v4, "dport"

    if-nez v0, :cond_f5

    if-nez v14, :cond_fd

    :cond_f5
    const/4 v6, 0x0

    .line 126
    :try_start_f6
    invoke-virtual {v10, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_fa
    .catch Lorg/json/JSONException; {:try_start_f6 .. :try_end_fa} :catch_271
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fa} :catch_26e

    .line 127
    :try_start_fa
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_fa .. :try_end_fd} :catch_280
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_285

    :cond_fd
    and-int/lit16 v0, v14, 0x800

    if-nez v0, :cond_106

    if-nez v14, :cond_104

    goto :goto_106

    :cond_104
    const/4 v6, 0x0

    goto :goto_10e

    :cond_106
    :goto_106
    const/4 v6, 0x0

    .line 131
    :try_start_107
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_107 .. :try_end_10e} :catch_271
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10e} :catch_26e

    .line 137
    :goto_10e
    :try_start_10e
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_112} :catch_26c

    if-eqz v0, :cond_26a

    .line 138
    :try_start_114
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11c

    goto/16 :goto_26a

    :cond_11c
    and-int/lit16 v5, v14, 0x400

    if-nez v5, :cond_122

    if-nez v14, :cond_125

    .line 141
    :cond_122
    invoke-virtual {v1, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_125} :catch_268

    :cond_125
    and-int/lit16 v0, v14, 0x200

    const-string v5, "0"

    if-nez v0, :cond_12d

    if-nez v14, :cond_168

    :cond_12d
    const/4 v6, 0x0

    .line 149
    :try_start_12e
    invoke-virtual {v10, v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual {v10, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_168

    if-eqz v7, :cond_168

    .line 153
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_153

    goto :goto_15f

    .line 156
    :cond_153
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_168

    :cond_15f
    :goto_15f
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_163} :catch_164

    goto :goto_168

    :catch_164
    const/4 v2, 0x0

    .line 162
    :try_start_165
    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_168
    .catch Lorg/json/JSONException; {:try_start_165 .. :try_end_168} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_168} :catch_27a

    :cond_168
    :goto_168
    and-int/lit16 v0, v14, 0x80

    const-string/jumbo v2, "parentprocname"

    if-nez v0, :cond_171

    if-nez v14, :cond_179

    :cond_171
    const/4 v6, 0x0

    .line 166
    :try_start_172
    invoke-virtual {v10, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_176
    .catch Lorg/json/JSONException; {:try_start_172 .. :try_end_176} :catch_271
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_176} :catch_26e

    .line 167
    :try_start_176
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_179
    .catch Lorg/json/JSONException; {:try_start_176 .. :try_end_179} :catch_290
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_285

    :cond_179
    const/high16 v0, 0x40000

    and-int/2addr v0, v14

    const-string/jumbo v6, "ppid"

    if-nez v0, :cond_183

    if-nez v14, :cond_1b9

    :cond_183
    const/4 v7, 0x0

    .line 172
    :try_start_184
    invoke-virtual {v10, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v10, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1b9

    if-eqz v2, :cond_1b9

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a9

    goto :goto_1b5

    .line 179
    :cond_1a9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v1, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b9

    :cond_1b5
    :goto_1b5
    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1b9} :catch_1bb

    :cond_1b9
    :goto_1b9
    const/4 v2, 0x0

    goto :goto_1bf

    :catch_1bb
    const/4 v2, 0x0

    .line 185
    :try_start_1bc
    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1bf
    and-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_1c5

    if-nez v14, :cond_1ce

    :cond_1c5
    move-object/from16 v0, v21

    .line 189
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1cb
    .catch Lorg/json/JSONException; {:try_start_1bc .. :try_end_1cb} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1cb} :catch_27a

    .line 190
    :try_start_1cb
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ce
    .catch Lorg/json/JSONException; {:try_start_1cb .. :try_end_1ce} :catch_290
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1ce} :catch_285

    :cond_1ce
    and-int/lit8 v0, v14, 0x40

    if-nez v0, :cond_1d4

    if-nez v14, :cond_1de

    :cond_1d4
    move-object/from16 v0, v20

    const/4 v2, 0x0

    .line 194
    :try_start_1d7
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1db
    .catch Lorg/json/JSONException; {:try_start_1d7 .. :try_end_1db} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1db} :catch_27a

    .line 195
    :try_start_1db
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1de
    .catch Lorg/json/JSONException; {:try_start_1db .. :try_end_1de} :catch_290
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1de} :catch_285

    :cond_1de
    and-int/lit8 v0, v14, 0x4

    if-nez v0, :cond_1e4

    if-nez v14, :cond_1ee

    :cond_1e4
    move-object/from16 v0, v19

    const/4 v2, 0x0

    .line 199
    :try_start_1e7
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1eb
    .catch Lorg/json/JSONException; {:try_start_1e7 .. :try_end_1eb} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1eb} :catch_27a

    .line 200
    :try_start_1eb
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ee
    .catch Lorg/json/JSONException; {:try_start_1eb .. :try_end_1ee} :catch_290
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1ee} :catch_285

    :cond_1ee
    and-int/lit8 v0, v14, 0x1

    if-nez v0, :cond_1f4

    if-nez v14, :cond_1fe

    :cond_1f4
    move-object/from16 v0, v18

    const/4 v2, 0x0

    .line 204
    :try_start_1f7
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1fb
    .catch Lorg/json/JSONException; {:try_start_1f7 .. :try_end_1fb} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_1fb} :catch_27a

    .line 205
    :try_start_1fb
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1fe
    and-int/lit8 v0, v14, 0x20

    if-nez v0, :cond_204

    if-nez v14, :cond_212

    :cond_204
    const-string/jumbo v0, "hostname"
    :try_end_207
    .catch Lorg/json/JSONException; {:try_start_1fb .. :try_end_207} :catch_290
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_207} :catch_285

    const/4 v2, 0x0

    .line 209
    :try_start_208
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_20c
    .catch Lorg/json/JSONException; {:try_start_208 .. :try_end_20c} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_20c} :catch_27a

    :try_start_20c
    const-string/jumbo v2, "hostname"

    .line 210
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_212
    .catch Lorg/json/JSONException; {:try_start_20c .. :try_end_212} :catch_290
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_212} :catch_285

    :cond_212
    const/high16 v0, 0x10000

    and-int/2addr v0, v14

    if-nez v0, :cond_21c

    if-nez v14, :cond_21a

    goto :goto_21c

    :cond_21a
    const/4 v2, 0x0

    goto :goto_240

    :cond_21c
    :goto_21c
    const/4 v2, 0x0

    .line 215
    :try_start_21d
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_240

    const-string v3, "53"

    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_229} :catch_23b

    if-eqz v0, :cond_235

    move-object/from16 v0, v17

    .line 218
    :try_start_22d
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_240

    :cond_235
    move-object/from16 v0, v17

    .line 221
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_23a} :catch_23d

    goto :goto_240

    :catch_23b
    move-object/from16 v0, v17

    .line 226
    :catch_23d
    :try_start_23d
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_240
    :goto_240
    const/high16 v0, 0x20000

    and-int/2addr v0, v14

    if-nez v0, :cond_247

    if-nez v14, :cond_24e

    .line 230
    :cond_247
    invoke-virtual {v10, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_24b
    .catch Lorg/json/JSONException; {:try_start_23d .. :try_end_24b} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_24b} :catch_27a

    .line 231
    :try_start_24b
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24e
    const/high16 v0, 0x80000

    and-int/2addr v0, v14

    if-nez v0, :cond_255

    if-nez v14, :cond_263

    :cond_255
    const-string/jumbo v0, "iface"
    :try_end_258
    .catch Lorg/json/JSONException; {:try_start_24b .. :try_end_258} :catch_290
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_258} :catch_285

    const/4 v2, 0x0

    .line 235
    :try_start_259
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_25d
    .catch Lorg/json/JSONException; {:try_start_259 .. :try_end_25d} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_25d} :catch_27a

    :try_start_25d
    const-string/jumbo v2, "iface"

    .line 236
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    :cond_263
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_267
    .catch Lorg/json/JSONException; {:try_start_25d .. :try_end_267} :catch_290
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_267} :catch_285

    goto :goto_29b

    :catch_268
    const/4 v1, 0x0

    goto :goto_26d

    :cond_26a
    :goto_26a
    const/4 v1, 0x0

    return-object v1

    :catch_26c
    move-object v1, v6

    :goto_26d
    return-object v1

    :catch_26e
    move-exception v0

    move-object v1, v6

    goto :goto_287

    :catch_271
    move-exception v0

    move-object v1, v6

    goto :goto_282

    :catch_274
    move-exception v0

    move-object v1, v4

    goto :goto_287

    :catch_277
    move-exception v0

    move-object v1, v4

    goto :goto_282

    :catch_27a
    move-exception v0

    move-object v1, v2

    goto :goto_287

    :catch_27d
    move-exception v0

    move-object v1, v2

    goto :goto_282

    :catch_280
    move-exception v0

    const/4 v1, 0x0

    :goto_282
    move-object/from16 v3, v16

    goto :goto_294

    :catch_285
    move-exception v0

    const/4 v1, 0x0

    :goto_287
    const-string/jumbo v2, "processData: Exception"

    move-object/from16 v3, v16

    .line 244
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29a

    :catch_290
    move-exception v0

    move-object/from16 v3, v16

    const/4 v1, 0x0

    :goto_294
    const-string/jumbo v2, "processData: JSONException"

    .line 241
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29a
    move-object v10, v1

    :goto_29b
    return-object v10
.end method

.method public setServiceConnection(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-void
.end method
