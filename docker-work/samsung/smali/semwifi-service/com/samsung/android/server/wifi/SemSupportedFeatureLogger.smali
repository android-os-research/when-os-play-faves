.class public Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;
.super Ljava/lang/Object;
.source "SemSupportedFeatureLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;
    }
.end annotation


# static fields
.field private static final FEATURE_VER_FIELD_LEN:I = 0x4

.field private static final HW_FEATURE_FIELD_LEN:I = 0x2

.field private static final LAZY_BOOT_COMPLETE:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field private static final PROVIDER_NAME_FIELD_LEN:I = 0x3

.field private static final SW_ASSURANCE_ID:I = 0xa

.field private static final SW_BIG_DATA_ID:I = 0xe

.field private static final SW_ELEMENT_FIELD_LEN:I = 0x2

.field private static final SW_FEATURE_FIELD_LEN:I = 0x4

.field private static final SW_ID_FIELD_LEN:I = 0x2

.field private static final SW_NCHO_ID:I = 0x9

.field private static final SW_ROAMING_KV_ID:I = 0x8

.field private static final SW_SECURITY_ID:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SemSupportedFeatureLogger"

.field private static final VER:Ljava/lang/String; = "1.0.0"

.field private static final bigDataFeatureList:[Ljava/lang/String;

.field private static final roamingFeatureList:[Ljava/lang/String;

.field private static final securityFeatureList:[Ljava/lang/String;


# instance fields
.field mFeatureSet:Ljava/lang/String;

.field mNotSupportedFeatureStr:Ljava/lang/String;

.field mSupportedFeatureStr:Ljava/lang/String;

.field mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;


# direct methods
.method static bridge synthetic -$$Nest$mparseSupportedFeature(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseSupportedFeature()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 17

    const-string v0, "[A11R]"

    const-string v1, "[ROAM TRIGGER API]"

    const-string v2, "[REASSOC API]"

    const-string v3, "[GET CU]"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, "[HIGH CU]"

    const-string v9, "[EMERGENCY]"

    const-string v10, "[BTM]"

    const-string v11, "[IDLE]"

    const-string v12, "[WTC]"

    const-string v13, "[BTCOEX]"

    const-string v14, "[TKIP/AES ROAMING]"

    const-string v15, "[RCL API]"

    .line 53
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->roamingFeatureList:[Ljava/lang/String;

    const-string v1, "[OWE]"

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, "[SAE H2E]"

    const-string v10, "[SAE FT]"

    const-string v11, "[WPA3 ENTERPRISE SUITE B]"

    const-string v12, "[WPA3 ENTERPRISE SUITE B 192]"

    const-string v13, "[FILS SHA256]"

    const-string v14, "[FILS SHA384]"

    const-string v15, "[FILS SHA256-FT]"

    const-string v16, "[FILS SHA384-FT]"

    .line 60
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->securityFeatureList:[Ljava/lang/String;

    const-string v1, "[GETBSSIINFO API]"

    const-string v2, "[GETASSOCREJECTINFO API]"

    const-string v3, "[GETSTAINFO API]"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    .line 67
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->bigDataFeatureList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 75
    new-instance p2, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;-><init>(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    sget-object p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    const-string p1, "SemSupportedFeatureLogger initialized: ver=1.0.0"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseSupportedFeature()V
    .registers 13

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFeatureInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x7

    .line 119
    :try_start_15
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x10

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    const/4 v9, 0x1

    move v10, v9

    :goto_26
    const/16 v1, 0xe

    if-gt v10, v1, :cond_88

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v11, v0, 0x2

    packed-switch v10, :pswitch_data_13e

    :pswitch_31
    goto :goto_76

    :pswitch_32
    const/4 v1, 0x1

    .line 156
    sget-object v2, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->bigDataFeatureList:[Ljava/lang/String;

    move-object v0, p0

    move v3, v11

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    goto :goto_76

    :pswitch_3d
    const/4 v1, 0x2

    .line 151
    sget-object v2, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->securityFeatureList:[Ljava/lang/String;

    move-object v0, p0

    move v3, v11

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    goto :goto_76

    .line 140
    :pswitch_48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    add-int/lit8 v1, v11, 0x2

    .line 141
    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_54} :catch_95

    const-string v1, "[ASSURANCE DISC REASON]"

    if-ne v0, v9, :cond_5c

    .line 144
    :try_start_58
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 146
    :cond_5c
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :pswitch_60
    const-string v0, "NCHO"

    .line 136
    invoke-virtual {p0, v0, v11, v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->getVersion(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    goto :goto_76

    :pswitch_66
    const-string v0, "ROAMING"

    .line 130
    invoke-virtual {p0, v0, v11, v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->getVersion(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v1, 0x2

    .line 131
    sget-object v2, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->roamingFeatureList:[Ljava/lang/String;

    add-int/lit8 v3, v11, 0x4

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 162
    :goto_76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    add-int/lit8 v1, v11, -0x2

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    .line 166
    :cond_88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_94} :catch_95

    goto :goto_e4

    :catch_95
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    .line 173
    sget-object v1, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error(Supported feature): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error(Not supported feature): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    :goto_e4
    sget-object v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportedFeatureStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "None"

    if-eqz v2, :cond_112

    move-object v2, v3

    goto :goto_114

    :cond_112
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    :goto_114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotSupportedFeatureStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_131

    goto :goto_133

    .line 181
    :cond_131
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    :goto_133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_13e
    .packed-switch 0x8
        :pswitch_66
        :pswitch_60
        :pswitch_48
        :pswitch_31
        :pswitch_3d
        :pswitch_31
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "Supported Feature information :-----------------------------------------------"

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raw value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "None"

    if-eqz v1, :cond_31

    move-object v1, v2

    goto :goto_33

    :cond_31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mSupportedFeatureStr:Ljava/lang/String;

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not Supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_52

    :cond_50
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mNotSupportedFeatureStr:Ljava/lang/String;

    :goto_52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getVersion(Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .registers 7

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const-string p2, "["

    .line 107
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, " %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    .line 108
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "%d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method parseFeatureBits(I[Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 9

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->mFeatureSet:Ljava/lang/String;

    mul-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p3

    invoke-virtual {p0, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 p3, 0x10

    invoke-static {p0, p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p3, 0x0

    const/4 v0, 0x1

    move v1, v0

    move v0, p3

    :goto_13
    mul-int/lit8 v2, p1, 0x8

    if-ge p3, v2, :cond_31

    .line 88
    array-length v2, p2

    if-lt v0, v2, :cond_1b

    goto :goto_31

    :cond_1b
    and-int v2, p0, v1

    if-eqz v2, :cond_25

    .line 93
    aget-object v2, p2, v0

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 95
    :cond_25
    aget-object v2, p2, v0

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_13

    :cond_31
    :goto_31
    return-void
.end method
