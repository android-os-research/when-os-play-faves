.class public final Lcom/android/internal/telephony/SemTelephonyHelper;
.super Ljava/lang/Object;
.source "SemTelephonyHelper.java"


# static fields
.field public static final blacklist CDMA_NOT_SUPPORT:I = 0x2

.field public static final blacklist CDMA_SUPPORT:I = 0x1

.field public static final blacklist CDMA_SUPPORT_UNKNOWN:I

.field private static final blacklist sHasCallAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sOperatorNameOverrideMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mMoDataFactor:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mVoiceCapable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->createHasCallAttributeMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyHelper;->sHasCallAttributeMap:Ljava/util/Map;

    .line 450
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->createOperatorNameOverrideMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyHelper;->sOperatorNameOverrideMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 47
    iput v0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mMoDataFactor:I

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mVoiceCapable:Z

    return-void
.end method

.method private static blacklist createHasCallAttributeMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "video"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "activevideo"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Landroid/util/Pair;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "csincoming"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "csdialing"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "csalerting"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "volte"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "epdg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist createOperatorNameOverrideMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XFINITY Mobile"

    const-string v2, "Xfinity Mobile"

    .line 454
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCidFromCellIdentity(Landroid/telephony/CellIdentity;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 233
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const-string v2, "SemTelephonyHelper"

    packed-switch v1, :pswitch_data_40

    goto :goto_36

    :pswitch_e
    const-string p0, "getCidFromCellIdentity - CellIdentityNR has Nci with Long type, use getNci()"

    .line 239
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 236
    :pswitch_14
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result p0

    goto :goto_37

    .line 235
    :pswitch_1b
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    goto :goto_37

    .line 237
    :pswitch_22
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    goto :goto_37

    :pswitch_29
    const-string p0, "getCidFromCellIdentity - CDMA has no CID. if using getCellIdentity(), use getNetworkRegistrationInfo()"

    .line 242
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 234
    :pswitch_2f
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    goto :goto_37

    :goto_36
    move p0, v0

    :goto_37
    const v1, 0x7fffffff

    if-ne p0, v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, p0

    :goto_3e
    return v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_29
        :pswitch_22
        :pswitch_1b
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method

.method protected static blacklist getDataOperatorNumeric(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    .line 351
    invoke-virtual {p0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    const/4 v3, 0x2

    .line 352
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v2, :cond_15

    .line 353
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    goto :goto_16

    :cond_15
    move-object v2, v0

    :goto_16
    if-eqz v1, :cond_1c

    .line 354
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    :cond_1c
    if-eqz v2, :cond_3d

    .line 356
    invoke-virtual {v2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    if-ne v1, v3, :cond_3d

    if-eqz v0, :cond_3d

    .line 357
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3d

    .line 358
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3d

    .line 359
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 361
    :cond_3d
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist getHasCallAttributeMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyHelper;->sHasCallAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static blacklist getLacFromCellIdentity(Landroid/telephony/CellIdentity;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 212
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    goto :goto_37

    .line 217
    :pswitch_c
    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    goto :goto_38

    .line 215
    :pswitch_13
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result p0

    goto :goto_38

    .line 214
    :pswitch_1a
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p0

    goto :goto_38

    .line 216
    :pswitch_21
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p0

    goto :goto_38

    :pswitch_28
    const-string p0, "SemTelephonyHelper"

    const-string v1, "getLacFromCellIdentity - CDMA has no LAC. if using getCellIdentity(), use getNetworkRegistrationInfo()"

    .line 219
    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 213
    :pswitch_30
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    goto :goto_38

    :goto_37
    move p0, v0

    :goto_38
    const v1, 0x7fffffff

    if-ne p0, v1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, p0

    :goto_3f
    return v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_30
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public static blacklist isCarrierId(Lcom/android/internal/telephony/Phone;I)Z
    .registers 3

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v0

    if-eq v0, p1, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierId()I

    move-result p0

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method protected static blacklist isEpdgNameDisplay(Lcom/android/internal/telephony/Phone;IILcom/android/internal/telephony/uicc/IccRecords;)Z
    .registers 15

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "50218"

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    const-string v1, "46605"

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_2b

    if-eq p1, v3, :cond_2b

    return v4

    :cond_2b
    const-string v1, "52505"

    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    if-eq p1, v3, :cond_52

    if-eqz p3, :cond_3c

    .line 306
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p3

    goto :goto_3e

    :cond_3c
    const-string p3, ""

    :goto_3e
    move-object v8, p3

    .line 307
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_52

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const-string v5, "0A"

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p3

    if-eqz p3, :cond_52

    return v4

    .line 312
    :cond_52
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-static {p3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "XAA"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 v1, 0x12

    if-eqz p3, :cond_75

    if-ne p2, v1, :cond_75

    const-string p3, "310240"

    .line 314
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_75

    .line 315
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->isCarrierId(Lcom/android/internal/telephony/Phone;I)Z

    move-result p3

    if-eqz p3, :cond_75

    return v4

    .line 319
    :cond_75
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const-string v0, "EUR"

    const-string v3, "BRI"

    const-string v5, "TGY"

    filled-new-array {v0, v3, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8c

    if-ne p2, v1, :cond_8c

    return v4

    .line 324
    :cond_8c
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const-string v0, "CCT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9d

    return v4

    .line 328
    :cond_9d
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const-string v0, "DSH"

    const-string v3, "TMO"

    const-string v5, "MTR"

    const-string v6, "ASR"

    filled-new-array {v0, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b6

    if-ne p2, v1, :cond_b6

    return v4

    .line 333
    :cond_b6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const-string v0, "VZW"

    const-string v3, "USC"

    const-string v5, "GCF"

    filled-new-array {v0, v3, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_cd

    if-eqz p1, :cond_cd

    return v4

    :cond_cd
    const/16 p1, 0x4a9

    .line 338
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->isCarrierId(Lcom/android/internal/telephony/Phone;I)Z

    move-result p0

    if-eqz p0, :cond_d8

    if-ne p2, v1, :cond_d8

    return v4

    :cond_d8
    return v2
.end method

.method public static blacklist isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z
    .registers 8

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_32

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    move v1, v2

    goto :goto_33

    :cond_32
    move v1, v3

    :goto_33
    if-eqz v1, :cond_5a

    const-string v4, "us"

    .line 192
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "vi"

    if-eqz v5, :cond_4b

    if-eqz v1, :cond_48

    .line 193
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    move v1, v2

    goto :goto_5a

    .line 194
    :cond_4b
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    if-eqz v1, :cond_48

    .line 195
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_49

    :cond_5a
    :goto_5a
    return v1
.end method

.method public static blacklist isLte(I)Z
    .registers 2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_b

    const/16 v0, 0x13

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isRafIncludeNetworkMode(II)Z
    .registers 2

    .line 203
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static varargs blacklist isSimStateEqualsTo(I[Ljava/lang/String;)Z
    .registers 7

    .line 499
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 500
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_24

    aget-object v3, p1, v2

    .line 501
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    return v1
.end method

.method private static blacklist log(ILjava/lang/String;)V
    .registers 4

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemTelephonyHelper"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemTelephonyHelper"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist overrideOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 462
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v0, Lcom/android/internal/telephony/SemTelephonyHelper;->sOperatorNameOverrideMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 463
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_36

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override incorrect operator name. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemTelephonyHelper"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-object v0

    :cond_37
    return-object p0
.end method

.method public static blacklist semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-ltz p0, :cond_d

    .line 513
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_d

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_11

    move-object p2, p0

    :cond_11
    return-object p2
.end method

.method private static blacklist semUpdateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 522
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, p1, :cond_10

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 523
    :cond_10
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 370
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_e

    move-object p2, v1

    :cond_e
    const/16 v3, 0x2c

    const/16 v4, 0x20

    .line 379
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const-string v3, ","

    if-eqz v2, :cond_1f

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 384
    :goto_20
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    const-string v6, " value: "

    const-string v7, " property="

    if-nez v5, :cond_53

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prop="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(ILjava/lang/String;)V

    return-void

    :cond_53
    const/4 v2, 0x0

    :goto_54
    if-ge v2, p0, :cond_68

    if-eqz v4, :cond_5e

    .line 391
    array-length v5, v4

    if-ge v2, v5, :cond_5e

    .line 392
    aget-object v5, v4, v2

    goto :goto_5f

    :cond_5e
    move-object v5, v1

    .line 395
    :goto_5f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 399
    :cond_68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_7d

    add-int/lit8 v1, p0, 0x1

    .line 401
    :goto_6f
    array-length v2, v4

    if-ge v1, v2, :cond_7d

    .line 403
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 407
    :cond_7d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :try_start_85
    const-string v2, "utf-8"

    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_8c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_85 .. :try_end_8c} :catch_8d

    goto :goto_92

    :catch_8d
    const-string v2, "setTelephonyProperty: utf-8 not supported"

    .line 413
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(ILjava/lang/String;)V

    :goto_92
    const/16 v2, 0x5b

    if-le v1, v2, :cond_bf

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " propVal="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(ILjava/lang/String;)V

    return-void

    .line 420
    :cond_bf
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized blacklist updateLimitedLteReject(ILjava/lang/String;)V
    .registers 4

    const-class v0, Lcom/android/internal/telephony/SemTelephonyHelper;

    monitor-enter v0

    .line 528
    :try_start_3
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 529
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->limited_lte_reject()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semUpdateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 530
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->limited_lte_reject(Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 532
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist updateLteVoiceSupport(II)V
    .registers 4

    const-class v0, Lcom/android/internal/telephony/SemTelephonyHelper;

    monitor-enter v0

    .line 556
    :try_start_3
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 557
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lte_voice_support()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semUpdateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 558
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->lte_voice_support(Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 560
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist updateSimMobility(ILjava/lang/Boolean;)V
    .registers 4

    const-class v0, Lcom/android/internal/telephony/SemTelephonyHelper;

    monitor-enter v0

    .line 542
    :try_start_3
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 543
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->sim_mobility()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semUpdateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 544
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->sim_mobility(Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 546
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist updateSsErrorCode(ILjava/lang/String;)V
    .registers 4

    const-class v0, Lcom/android/internal/telephony/SemTelephonyHelper;

    monitor-enter v0

    .line 549
    :try_start_3
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 550
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ss_error_code()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semUpdateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 551
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ss_error_code(Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 553
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist updateVolte911call(II)V
    .registers 4

    const-class v0, Lcom/android/internal/telephony/SemTelephonyHelper;

    monitor-enter v0

    .line 535
    :try_start_3
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 536
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->volte_911call()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semUpdateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 537
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->volte_911call(Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 539
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected blacklist broadcastNsaSplitBearerAttach(Landroid/telephony/NetworkRegistrationInfo;)V
    .registers 7

    if-nez p1, :cond_8

    const-string p1, "Invalid RegState to broadcast"

    .line 255
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(Ljava/lang/String;)V

    return-void

    .line 262
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    .line 264
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2c

    .line 266
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_28

    move p1, v2

    goto :goto_29

    :cond_28
    move p1, v3

    :goto_29
    const-string v0, "5GNSA"

    goto :goto_3a

    .line 267
    :cond_2c
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isLte(I)Z

    move-result p1

    if-eqz p1, :cond_35

    const-string v0, "LTE"

    goto :goto_39

    .line 270
    :cond_35
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_39
    move p1, v3

    .line 274
    :goto_3a
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 275
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v1

    goto :goto_49

    :cond_47
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 277
    :goto_49
    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v4, :cond_57

    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v4, :cond_57

    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-ne v1, v4, :cond_56

    goto :goto_57

    :cond_56
    move v2, v3

    .line 282
    :cond_57
    :goto_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastNsaSplitBearerAttach - networkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dataActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUWB: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(Ljava/lang/String;)V

    .line 284
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.verizon.provider.DATA_ACTIVITY_CHANGE"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.verizon.provider.NETWORK_TYPE"

    .line 285
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.verizon.provider.IS_ACTIVE"

    .line 286
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.verizon.provider.IS_UWB"

    .line 287
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 288
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 289
    invoke-static {p0, p1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method protected blacklist hasCall(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .registers 10

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_199

    sget-object v0, Lcom/android/internal/telephony/SemTelephonyHelper;->sHasCallAttributeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_199

    .line 98
    :cond_11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 99
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 100
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasCall - callType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", domain: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", category: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(Ljava/lang/String;)V

    and-int/lit8 p0, v2, 0x1

    const/4 v3, 0x1

    if-eqz p0, :cond_eb

    if-eqz p2, :cond_eb

    .line 105
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    if-eqz p0, :cond_eb

    .line 106
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v4, :cond_eb

    .line 108
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_80

    .line 110
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_80
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_8f

    .line 113
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8f
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_a2

    .line 116
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_a2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_eb

    .line 121
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_ac
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_eb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/Connection;

    const-string v4, "csincoming"

    .line 122
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_c9

    return v3

    :cond_c9
    const-string v4, "csdialing"

    .line 124
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_da

    return v3

    :cond_da
    const-string v4, "csalerting"

    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v4, :cond_ac

    return v3

    :cond_eb
    and-int/lit8 p0, v2, 0x2

    if-eqz p0, :cond_199

    if-eqz p3, :cond_199

    .line 134
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    if-eqz p0, :cond_199

    .line 135
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object p2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, p2, :cond_199

    const-string p0, "volte"

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_108

    return v3

    .line 141
    :cond_108
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_11c

    .line 143
    invoke-interface {p3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11c
    and-int/lit8 p2, v0, 0x2

    if-eqz p2, :cond_12b

    .line 146
    invoke-interface {p3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12b
    and-int/lit8 p2, v0, 0x4

    if-eqz p2, :cond_13a

    .line 149
    invoke-interface {p3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_13a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_199

    .line 154
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_144
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_199

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/Connection;

    const-string p3, "video"

    .line 155
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_169

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p3

    invoke-static {p3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p3

    if-eqz p3, :cond_169

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result p3

    if-eqz p3, :cond_169

    return v3

    :cond_169
    const-string p3, "activevideo"

    .line 157
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_184

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p3

    invoke-static {p3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p3

    if-eqz p3, :cond_184

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p3

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v0, :cond_184

    return v3

    :cond_184
    const-string p3, "epdg"

    .line 159
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_144

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isWifi()Z

    move-result p3

    if-eqz p3, :cond_144

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_144

    return v3

    :cond_199
    :goto_199
    return v1
.end method

.method public blacklist isAcBarred()Z
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 488
    iget p0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mMoDataFactor:I

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public blacklist isSupportCdma(I)I
    .registers 3

    .line 440
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 441
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/VendorConfigurationState;->getSupportedRat()I

    move-result p0

    goto :goto_19

    :cond_18
    move p0, v0

    :goto_19
    if-eqz p0, :cond_23

    const/4 p1, 0x2

    and-int/2addr p0, p1

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    move v0, p0

    goto :goto_23

    :cond_22
    move v0, p1

    :cond_23
    :goto_23
    return v0
.end method

.method public blacklist isVoiceCapable()Z
    .registers 1

    .line 495
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mVoiceCapable:Z

    return p0
.end method

.method public blacklist updateAcBarringFactor([I)V
    .registers 4

    if-eqz p1, :cond_43

    .line 474
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_43

    const/4 v0, 0x6

    .line 475
    aget v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    const/4 v0, 0x7

    .line 477
    aget p1, p1, v0

    iput p1, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mMoDataFactor:I

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAcbInfo - MoDataFactor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mMoDataFactor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(Ljava/lang/String;)V

    goto :goto_43

    :cond_29
    const/16 p1, 0xff

    .line 480
    iput p1, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mMoDataFactor:I

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAcbInfo - MoData is not valid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SemTelephonyHelper;->mMoDataFactor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->log(Ljava/lang/String;)V

    :cond_43
    :goto_43
    return-void
.end method
