.class public Lcom/android/internal/telephony/SemMmiCodeHelper;
.super Ljava/lang/Object;
.source "SemMmiCodeHelper.java"


# static fields
.field private static final blacklist sBarringTypeToChinaResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBarringTypeToResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sForwardingTypeToResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sServiceClassToResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createServiceClassToResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sServiceClassToResIdMap:Ljava/util/Map;

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createForwardingTypeToResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sForwardingTypeToResIdMap:Ljava/util/Map;

    .line 364
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createBarringTypeToResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToResIdMap:Ljava/util/Map;

    .line 379
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createBarringTypeToChinaResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToChinaResIdMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist barringTypeToString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 6

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    .line 391
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    sget-object p2, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToChinaResIdMap:Ljava/util/Map;

    .line 392
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 393
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 395
    :cond_2d
    sget-object p2, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToResIdMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 396
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_44
    const-string p0, " "

    return-object p0
.end method

.method public static blacklist checkBarringTypeToString(Landroid/content/Context;)V
    .registers 6

    const-string v0, "* checkBarringTypeToString"

    .line 404
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v0, ""

    .line 405
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "* Expected Result"

    .line 406
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BAOC(33)"

    .line 407
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BAOIC(331)"

    .line 408
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BAOICxH(332)"

    .line 409
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BAIC(35)"

    .line 410
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BAICr(351)"

    .line 411
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BA_ALL(330)"

    .line 412
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BA_MO(333)"

    .line 413
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_BA_MT(353)"

    .line 414
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 415
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "* Test Result"

    .line 416
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 417
    sget-object v1, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToResIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- forwardingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/android/internal/telephony/SemMmiCodeHelper;->barringTypeToString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    goto :goto_49

    .line 420
    :cond_83
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist checkForwardingTypeToString(Landroid/content/Context;)V
    .registers 6

    const-string v0, "* checkForwardingTypeToString"

    .line 344
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v0, ""

    .line 345
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "* Expected Result"

    .line 346
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_CF_All(002) = serviceModeAll"

    .line 347
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_CFU(21) = serviceModeUnconditional"

    .line 348
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_CFB(67) = serviceModeBusy"

    .line 349
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_CFNR(62) = serviceModeNotReachable"

    .line 350
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_CFNRy(61) = serviceModeNoReply"

    .line 351
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SC_CF_All_Conditional(004) = serviceModeAllConditional"

    .line 352
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 353
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "* Test Result"

    .line 354
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 355
    sget-object v1, Lcom/android/internal/telephony/SemMmiCodeHelper;->sForwardingTypeToResIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- forwardingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->forwardingTypeToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    goto :goto_3f

    .line 358
    :cond_78
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist checkServiceClassToString(Landroid/content/Context;)V
    .registers 6

    const-string v0, "* checkServiceClassToString"

    .line 293
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v0, ""

    .line 294
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "* Expected Result"

    .line 295
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- VOICE(0x1) = classVoice"

    .line 296
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- DATA(0x2) = classData"

    .line 297
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- FAX(0x4) = classFAX"

    .line 298
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SMS(0x8) = classSMS"

    .line 299
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- DATA_SYNC(0x10) = classDataSync"

    .line 300
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- DATA_ASYNC(0x20) = classDataAsync"

    .line 301
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- PACKET(0x40) = classPacket"

    .line 302
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- PAD(0x80) = classPad"

    .line 303
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- PAD+DATA_ASYNC(0xA0) = classAllAsync"

    .line 304
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- PACKET+DATA_ASYNC(0x60) = classAllSync"

    .line 305
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SMS+FAX+VOICE(0xD) = classAllTele"

    .line 306
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- SMS+FAX(0xC) = classAllData"

    .line 307
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- FAX+VOICE(0x5) = classAllTelexSMS"

    .line 308
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- DATA_ASYNC+DATA_SYNC(0x30) = classAllAsyncSync"

    .line 309
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "- DATA_SYNC+VOICE(0x11) = classAllGPRS"

    .line 310
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 311
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    const-string v1, "* Test Result"

    .line 312
    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 313
    sget-object v1, Lcom/android/internal/telephony/SemMmiCodeHelper;->sServiceClassToResIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- serviceClass: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->serviceClassToString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    goto :goto_6c

    .line 316
    :cond_b5
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist createBarringTypeToChinaResIdMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x1040045

    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "330"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400d6

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "333"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400d4

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "353"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist createBarringTypeToResIdMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x10400d6

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "33"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400d7

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "331"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400d8

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "332"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400d4

    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "35"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400d5

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "351"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400d9

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "330"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400da

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "333"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400db

    .line 374
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "353"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist createForwardingTypeToResIdMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x1040d39

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "002"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040d3e

    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040d3b

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "67"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040d3d

    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "62"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040d3c

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "61"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040d3a

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "004"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist createServiceClassToResIdMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x80

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x60

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x30

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forwardingTypeToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sForwardingTypeToResIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 337
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, " "

    return-object p0
.end method

.method public static blacklist getUtResponseLogForImsPhone(ILandroid/os/AsyncResult;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/AsyncResult;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    const/16 v1, 0xa5

    const/16 v2, 0x4b

    const/16 v3, 0xd

    const/4 v4, 0x0

    if-eq p0, v0, :cond_38

    if-eq p0, v3, :cond_35

    if-eq p0, v2, :cond_32

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_2f

    if-eq p0, v1, :cond_2c

    packed-switch p0, :pswitch_data_b0

    move-object v0, v4

    goto :goto_3a

    :pswitch_1a
    const-string v0, "queryCLIR(EVENT_GET_CLIR_DONE)"

    goto :goto_3a

    :pswitch_1d
    const-string v0, "updateCLIR(EVENT_SET_CLIR_DONE)"

    goto :goto_3a

    :pswitch_20
    const-string v0, "queryCallWaiting(EVENT_GET_CALL_WAITING_DONE)"

    goto :goto_3a

    :pswitch_23
    const-string v0, "updateCallWaiting(EVENT_SET_CALL_WAITING_DONE)"

    goto :goto_3a

    :pswitch_26
    const-string v0, "queryCallBarring(EVENT_GET_CALL_BARRING_DONE)"

    goto :goto_3a

    :pswitch_29
    const-string v0, "updateCallBarring(EVENT_SET_CALL_BARRING_DONE)"

    goto :goto_3a

    :cond_2c
    const-string v0, "queryCallBarring(EVENT_GET_INCOMING_CALL_BARRING_DONE)"

    goto :goto_3a

    :cond_2f
    const-string v0, "updateCallBarring(EVENT_SET_INCOMING_CALL_BARRING_DONE)"

    goto :goto_3a

    :cond_32
    const-string v0, "queryCLIP(EVENT_GET_CLIP_DONE)"

    goto :goto_3a

    :cond_35
    const-string v0, "queryCallForward(EVENT_GET_CALL_FORWARD_DONE)"

    goto :goto_3a

    :cond_38
    const-string v0, "updateCallForward(EVENT_SET_CALL_FORWARD_DONE)"

    .line 135
    :goto_3a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    return-object v4

    .line 139
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_4e

    :try_start_48
    const-string p0, "No AsyncResult"

    .line 143
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 144
    :cond_4e
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_56

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 146
    :cond_56
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_58} :catch_9e

    if-eqz p1, :cond_a7

    const-string v5, "]"

    const-string v6, "["

    const/4 v7, 0x0

    if-eq p0, v3, :cond_8b

    const/16 v3, 0x42

    if-eq p0, v3, :cond_78

    const/16 v3, 0x44

    if-eq p0, v3, :cond_78

    const/16 v3, 0x46

    if-eq p0, v3, :cond_72

    if-eq p0, v2, :cond_72

    if-eq p0, v1, :cond_78

    goto :goto_a7

    .line 164
    :cond_72
    :try_start_72
    check-cast p1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 151
    :cond_78
    check-cast p1, [Landroid/telephony/ims/ImsSsInfo;

    .line 152
    array-length p0, p1

    :goto_7b
    if-ge v7, p0, :cond_a7

    aget-object v1, p1, v7

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 157
    :cond_8b
    check-cast p1, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 158
    array-length p0, p1

    :goto_8e
    if-ge v7, p0, :cond_a7

    aget-object v1, p1, v7

    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9b} :catch_9e

    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    :catch_9e
    move-exception p0

    const-string p1, "Parsing error: "

    .line 176
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    :cond_a7
    :goto_a7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_data_b0
    .packed-switch 0x41
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static blacklist getUtResponseLogForImsPhoneMmiCode(ILjava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "157"

    const-string v2, "77"

    const-string v3, "156"

    const-string v4, "76"

    const/16 v5, 0xa

    const/4 v6, 0x7

    if-eqz p0, :cond_3b

    if-eq p0, v6, :cond_29

    if-eq p0, v5, :cond_1a

    goto :goto_65

    .line 204
    :cond_1a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    :cond_26
    const-string p1, "queryCallBarring(EVENT_QUERY_ICB_COMPLETE)"

    goto :goto_69

    .line 200
    :cond_29
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p1, "queryCOLP(EVENT_SUPP_SVC_QUERY_COMPLETE)"

    goto :goto_69

    .line 201
    :cond_32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    const-string p1, "queryCOLR(EVENT_SUPP_SVC_QUERY_COMPLETE)"

    goto :goto_69

    :cond_3b
    const-string v7, "30"

    .line 194
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    const-string p1, "updateCLIP(EVENT_SET_COMPLETE)"

    goto :goto_69

    .line 195
    :cond_46
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const-string p1, "updateCOLP(EVENT_SET_COMPLETE)"

    goto :goto_69

    .line 196
    :cond_4f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string p1, "updateCOLR(EVENT_SET_COMPLETE)"

    goto :goto_69

    .line 197
    :cond_58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_67

    :cond_65
    :goto_65
    move-object p1, v1

    goto :goto_69

    :cond_67
    :goto_67
    const-string p1, "updateCallBarring(EVENT_SET_COMPLETE)"

    .line 210
    :goto_69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    return-object v1

    .line 214
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    :try_start_75
    check-cast p2, Landroid/os/AsyncResult;

    if-nez p2, :cond_7f

    const-string p0, "No AsyncResult"

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 221
    :cond_7f
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_87

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 223
    :cond_87
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_89} :catch_d7

    if-eqz v1, :cond_e0

    const-string v2, "]"

    const-string v3, "["

    if-eq p0, v6, :cond_b9

    if-eq p0, v5, :cond_94

    goto :goto_e0

    .line 238
    :cond_94
    :try_start_94
    check-cast v1, Ljava/util/List;
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_94 .. :try_end_96} :catch_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_96} :catch_d7

    goto :goto_9f

    .line 240
    :catch_97
    :try_start_97
    iget-object p0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, [Landroid/telephony/ims/ImsSsInfo;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 242
    :goto_9f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/ImsSsInfo;

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 226
    :cond_b9
    instance-of p0, v1, Landroid/telephony/ims/ImsSsInfo;

    if-eqz p0, :cond_c3

    .line 227
    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 229
    :cond_c3
    check-cast v1, [I

    .line 230
    array-length p0, v1

    const/4 p2, 0x0

    :goto_c7
    if-ge p2, p0, :cond_e0

    aget v4, v1, p2

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_d4} :catch_d7

    add-int/lit8 p2, p2, 0x1

    goto :goto_c7

    :catch_d7
    move-exception p0

    const-string p2, "Parsing error: "

    .line 252
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    :cond_e0
    :goto_e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist hasVideoCallForwarding(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist hasVoiceCallForwarding(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static blacklist isKorExceptionCase(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/MmiCode;)Z
    .registers 6

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "KOR"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result p1

    if-nez p1, :cond_73

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_4c

    const/4 v2, 0x3

    .line 627
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_4c
    const-string v0, "000"

    :goto_4e
    const-string v2, "450"

    .line 630
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    return v1

    :cond_57
    const-string v0, "45006"

    .line 632
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "45008"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result p0

    if-eqz p0, :cond_73

    :cond_71
    const/4 p0, 0x1

    return p0

    :cond_73
    return v1
.end method

.method public static blacklist isManufacturerDefined(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    .line 609
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v1, "KOR"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "*"

    .line 610
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v0
.end method

.method public static blacklist isNotShortCodeUSSD(Ljava/lang/String;ILandroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 562
    :cond_4
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tm"

    .line 563
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3a

    const-string p1, "01"

    .line 564
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "02"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "03"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "04"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    :cond_39
    return p2

    :cond_3a
    const-string p1, "0"

    .line 570
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    const-string p1, "00"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_64

    .line 571
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x23

    if-eq p1, v1, :cond_64

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    goto :goto_64

    :cond_63
    return v0

    :cond_64
    :goto_64
    return p2
.end method

.method public static blacklist isServiceCodePotentialUssdCode(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "156"

    .line 585
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v3, "65510"

    const-string v4, "62001"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v2

    :cond_20
    const-string v1, "22"

    .line 591
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string p1, "24201"

    const-string v1, "23003"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method public static blacklist korErrorCodeToResId(Ljava/lang/String;)I
    .registers 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "korErrorCodeToResId - errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMmiCodeHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "37"

    .line 490
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const p0, 0x10400f4

    return p0

    :cond_22
    const-string v0, "38"

    .line 492
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const p0, 0x10400f1

    return p0

    :cond_2e
    const-string v0, "43"

    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const p0, 0x10400f2

    return p0

    :cond_3a
    const-string v0, "1"

    .line 496
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const p0, 0x1040102

    return p0

    :cond_46
    const-string v0, "10"

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const p0, 0x10400e6

    return p0

    :cond_52
    const-string v0, "11"

    .line 500
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const p0, 0x10400ff

    return p0

    :cond_5e
    const-string v0, "14"

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const p0, 0x10400e7

    return p0

    :cond_6a
    const-string v0, "16"

    .line 504
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const p0, 0x10400ec

    return p0

    :cond_76
    const-string v0, "17"

    .line 506
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const p0, 0x10400f8

    return p0

    :cond_82
    const-string v0, "18"

    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const p0, 0x10400fa

    return p0

    :cond_8e
    const-string v0, "19"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const p0, 0x10400fb

    return p0

    :cond_9a
    const-string v0, "20"

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const p0, 0x10400f9

    return p0

    :cond_a6
    const-string v0, "34"

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const p0, 0x10400fe

    return p0

    :cond_b2
    const-string v0, "35"

    .line 516
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const p0, 0x10400e8

    return p0

    :cond_be
    const-string v0, "36"

    .line 518
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const p0, 0x1040100

    return p0

    :cond_ca
    const-string v0, "9"

    .line 520
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    const p0, 0x10400ed

    return p0

    :cond_d6
    const-string v0, "21"

    .line 522
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const p0, 0x10400eb

    return p0

    :cond_e2
    const-string v0, "27"

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    const p0, 0x10400e5

    return p0

    :cond_ee
    const-string v0, "29"

    .line 526
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const p0, 0x10400fc

    return p0

    :cond_fa
    const-string v0, "30"

    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const p0, 0x10400ef

    return p0

    :cond_106
    const-string v0, "54"

    .line 530
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    const p0, 0x10400f3

    return p0

    :cond_112
    const-string v0, "71"

    .line 532
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    const p0, 0x1040101

    return p0

    :cond_11e
    const-string v0, "72"

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    const p0, 0x1040103

    return p0

    :cond_12a
    const-string v0, "121"

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const p0, 0x10400f6

    return p0

    :cond_136
    const-string v0, "122"

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    const p0, 0x10400f5

    return p0

    :cond_142
    const-string v0, "123"

    .line 540
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    const p0, 0x10400e9

    return p0

    :cond_14e
    const-string v0, "124"

    .line 542
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const p0, 0x10400fd

    return p0

    :cond_15a
    const-string v0, "125"

    .line 544
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    const p0, 0x10400ee

    return p0

    :cond_166
    const-string v0, "126"

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    const p0, 0x10400f0

    return p0

    :cond_172
    const-string v0, "127"

    .line 548
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17e

    const p0, 0x10400f7

    return p0

    :cond_17e
    const p0, 0x10400ea

    return p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemMmiCodeHelper"

    .line 640
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeMmiCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    if-eqz p2, :cond_16

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_16
    if-nez p3, :cond_1a

    if-eqz p4, :cond_1d

    .line 433
    :cond_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    :goto_1d
    if-eqz p3, :cond_26

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_26
    if-eqz p4, :cond_2b

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    :goto_2b
    if-eqz p4, :cond_33

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v1, "#"

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeMmiCode - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", sc: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", sia: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", sib: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", sic: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist serviceClassToString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 4

    .line 285
    sget-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sServiceClassToResIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1e

    :cond_1b
    const p1, 0x10402ca

    .line 289
    :goto_1e
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
