.class public final Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;
.super Ljava/lang/Object;
.source "SemTelephonyProps.java"


# direct methods
.method public static synthetic blacklist $r8$lambda$2ECxn3Ia85qtEBoWM2iEE_EfY8o(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$wfc_default_spn$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$C7gIJY3t4_cUFPn6NGyScDzyt4E(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$sim_mobility$5(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$KC2-ewfZ-2IsbncQY_eeEcCslCw(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$ss_error_code$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LIbv2b9DUfNoNrJqJUdGSyyVuiY(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$current_plmn$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LQttdTNr3jkuhuViMJTx8zycpG0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$limited_lte_reject$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Rpg7UlyxjRk9FXg6-YGsX0vu_98(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$latest_modeltype$6(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$b9hPiEUt0dv4skjYU527IUNHrPc(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$volte_911call$0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$cmR5VMb4x2pL6T8NYLufFpI-B2Y(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$reject_rat$10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zGrsNayORqwi9J9bTKLSZeNbiiY(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$lte_voice_support$2(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zaFl9o1odPlB0eEDYJaCNXV3BPM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lambda$network_reject_cause$7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist cdma_home_operator_alpha()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ro.cdma.home.operator.alpha"

    .line 943
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist current_plmn()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.currentplmn"

    .line 303
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "([\\\\,])"

    const-string v1, "\\\\$1"

    .line 119
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist formatList(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v1, ""

    goto :goto_22

    .line 126
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_22
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_b

    .line 129
    :cond_26
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist in_ecm_mode(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    const-string v0, "ril.vendor.inecmmode"

    .line 515
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic blacklist lambda$current_plmn$9(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 304
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$latest_modeltype$6(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    .line 277
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$limited_lte_reject$4(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 259
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$lte_voice_support$2(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    .line 218
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$network_reject_cause$7(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 286
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$reject_rat$10(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 313
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$sim_mobility$5(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 1

    .line 268
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$ss_error_code$3(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 227
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$volte_911call$0(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    .line 164
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$wfc_default_spn$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 173
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist latest_modeltype()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "persist.radio.latest-modeltype"

    .line 276
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist limited_lte_reject()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.data.limited_lte_reject"

    .line 258
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist limited_lte_reject(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 263
    :cond_5
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string v0, "ril.data.limited_lte_reject"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist lte_voice_support()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.ims.ltevoicesupport"

    .line 217
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist lte_voice_support(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 222
    :cond_5
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string v0, "ril.ims.ltevoicesupport"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist network_reject_cause()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.skt.network_regist"

    .line 285
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist nitz_time(Ljava/lang/Long;)V
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 885
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string v0, "gsm.nitz.time"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist nitz_time_elapsed_time(Ljava/lang/Long;)V
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 894
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string v0, "gsm.nitz.time-elapsedtime"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist reject_rat()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.reject.rat"

    .line 312
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ril_cdma_home_operator_alpha()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ro.ril.cdma.home.operator.alpha"

    .line 190
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ril_cdma_home_operator_alpha(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    const-string v0, "ro.ril.cdma.home.operator.alpha"

    .line 195
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist ril_cdma_home_operator_numeric()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ro.ril.cdma.home.operator.numeric"

    .line 199
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ril_cdma_home_operator_numeric(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    const-string v0, "ro.ril.cdma.home.operator.numeric"

    .line 204
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist ril_home_operator_carrierid(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    const-string v0, "ro.ril.home.operator.carrierid"

    .line 213
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist ril_preconfig()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "persist.ril.preconfig"

    .line 240
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ril_preconfig(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    const-string v0, "persist.ril.preconfig"

    .line 245
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist sim_mobility()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.sim.mobility"

    .line 267
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sim_mobility(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 272
    :cond_5
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string v0, "ril.sim.mobility"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist ss_error_code()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.ss.errorcode"

    .line 226
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ss_error_code(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 231
    :cond_5
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string v0, "ril.ss.errorcode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist sys_timezone()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "persist.sys.timezone"

    .line 952
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test_emer_num()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "persist.radio.test_emer_num"

    .line 181
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_48

    goto :goto_3d

    :sswitch_12
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_3d

    :cond_1b
    const/4 v1, 0x3

    goto :goto_3d

    :sswitch_1d
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_3d

    :cond_26
    const/4 v1, 0x2

    goto :goto_3d

    :sswitch_28
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_3d

    :cond_31
    const/4 v1, 0x1

    goto :goto_3d

    :sswitch_33
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    packed-switch v1, :pswitch_data_5a

    const/4 p0, 0x0

    return-object p0

    .line 24
    :pswitch_42
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 27
    :pswitch_45
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_data_48
    .sparse-switch
        0x30 -> :sswitch_33
        0x31 -> :sswitch_28
        0x36758e -> :sswitch_1d
        0x5cb1923 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_45
        :pswitch_42
        :pswitch_42
        :pswitch_45
    .end packed-switch
.end method

.method private static blacklist tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    .line 35
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ""

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 88
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 92
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_43

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_43

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_31

    add-int/lit8 v1, v1, 0x1

    .line 95
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_38

    goto :goto_43

    :cond_38
    add-int/lit8 v3, v1, 0x1

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_19

    .line 98
    :cond_43
    :goto_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_55

    return-object v0

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private static blacklist tryParseString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static blacklist volte_911call()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.volte.911call"

    .line 163
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist volte_911call(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 168
    :cond_5
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string v0, "ril.volte.911call"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist wfc_default_spn()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ril.wfc.default_spn"

    .line 172
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
