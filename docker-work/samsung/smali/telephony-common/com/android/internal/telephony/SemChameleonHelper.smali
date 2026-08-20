.class public final Lcom/android/internal/telephony/SemChameleonHelper;
.super Ljava/lang/Object;
.source "SemChameleonHelper.java"


# instance fields
.field private blacklist mChameleonState:I

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field public blacklist mVmNumberDom:Ljava/lang/String;

.field public blacklist mVmNumberInt:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetVmNumber(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemChameleonHelper;->setVmNumber(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 14

    const-string v0, "Error: "

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    .line 23
    iput-object v1, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberDom:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberInt:Ljava/lang/String;

    const/4 v2, 0x0

    .line 32
    iput v2, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mChameleonState:I

    .line 124
    new-instance v3, Lcom/android/internal/telephony/SemChameleonHelper$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SemChameleonHelper$1;-><init>(Lcom/android/internal/telephony/SemChameleonHelper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string p1, "Chameleon feature doesn\'t support"

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    .line 39
    iput v2, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mChameleonState:I

    return-void

    .line 43
    :cond_2a
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CHAMELEON_TELEPHONY_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v5, "CscFeature_Common_ConfigDefSprBrand"

    const-string v6, "XAS"

    invoke-virtual {v3, p1, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "SPR"

    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string p1, "Sprint"

    const-string v3, "310120"

    const-string v5, "SPRINT"

    goto :goto_7d

    :cond_59
    const-string v3, "BST"

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string p1, "Boost Mobile"

    const-string v3, "311870"

    const-string v5, "BOOST"

    goto :goto_7d

    :cond_68
    const-string v3, "VMU"

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_77

    const-string p1, "Virgin Mobile"

    const-string v3, "311490"

    const-string v5, "VIRGIN"

    goto :goto_7d

    :cond_77
    const-string p1, "Samsung"

    const-string v3, "310000"

    const-string v5, "849"

    .line 69
    :goto_7d
    new-instance v6, Lcom/android/internal/telephony/SemChameleonParser;

    invoke-direct {v6}, Lcom/android/internal/telephony/SemChameleonParser;-><init>()V

    .line 70
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->isFileExist()Z

    move-result v7

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileExists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    const-string v8, ")"

    const-string v9, " ("

    if-eqz v7, :cond_c9

    .line 73
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getOperatorBrandAlpha()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c9

    .line 74
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getOperatorBrandAlpha()Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set ro.ril.cdma.home.operator.alpha to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Operators.BrandAlpha"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    .line 78
    :cond_c9
    :try_start_c9
    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_cdma_home_operator_alpha(Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/RuntimeException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_e4

    :catch_cd
    move-exception v10

    .line 80
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    :goto_e4
    if-eqz v7, :cond_10f

    .line 83
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getOperatorNetworkCode()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10f

    .line 84
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getOperatorNetworkCode()Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set ro.ril.cdma.home.operator.numeric to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Operators.AndroidOperatorNetworkCode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    .line 88
    :cond_10f
    :try_start_10f
    invoke-static {v3}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_cdma_home_operator_numeric(Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/RuntimeException; {:try_start_10f .. :try_end_112} :catch_113

    goto :goto_12a

    :catch_113
    move-exception v10

    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    :goto_12a
    if-eqz v7, :cond_155

    .line 93
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getOperatorResellerID()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_155

    .line 94
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getOperatorResellerID()Ljava/lang/String;

    move-result-object v5

    .line 95
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set ro.ril.home.operator.carrierid to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Operators.SubscriberCarrierId"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    .line 98
    :cond_155
    :try_start_155
    invoke-static {v5}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_home_operator_carrierid(Ljava/lang/String;)V
    :try_end_158
    .catch Ljava/lang/RuntimeException; {:try_start_155 .. :try_end_158} :catch_159

    goto :goto_170

    :catch_159
    move-exception v5

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    :goto_170
    if-eqz v7, :cond_17f

    .line 103
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getSpeedDial()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17f

    .line 104
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemChameleonParser;->getSpeedDial()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemChameleonHelper;->setVmNumber(Ljava/lang/String;)V

    :cond_17f
    if-eqz v7, :cond_182

    goto :goto_183

    :cond_182
    const/4 v4, 0x1

    .line 108
    :goto_183
    iput v4, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mChameleonState:I

    .line 111
    :catch_185
    :cond_185
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_cdma_home_operator_alpha()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 112
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_cdma_home_operator_numeric()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c4

    :cond_1a5
    const-wide/16 v4, 0x64

    .line 114
    :try_start_1a7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x32

    if-le v2, v0, :cond_185

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip chameleon setup. Waiting count: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V
    :try_end_1c4
    .catch Ljava/lang/InterruptedException; {:try_start_1a7 .. :try_end_1c4} :catch_185

    :cond_1c4
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemChameleonParser"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist setVmNumber(Ljava/lang/String;)V
    .registers 7

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, ","

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    array-length v1, v0

    const-string v2, "null"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    .line 182
    aget-object v1, v0, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 183
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberDom:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberInt:Ljava/lang/String;

    goto :goto_40

    :cond_22
    if-le v1, v4, :cond_40

    .line 187
    aget-object v1, v0, v3

    if-eqz v1, :cond_32

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 188
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberDom:Ljava/lang/String;

    .line 190
    :cond_32
    aget-object v1, v0, v4

    if-eqz v1, :cond_40

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 191
    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberInt:Ljava/lang/String;

    .line 194
    :cond_40
    :goto_40
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_58

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speedDial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemChameleonHelper;->log(Ljava/lang/String;)V

    :cond_58
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "SemChameleonHelper:"

    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance p1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mChameleonState="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mChameleonState:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
