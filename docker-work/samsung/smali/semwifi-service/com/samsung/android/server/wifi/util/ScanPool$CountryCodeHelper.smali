.class Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;
.super Ljava/lang/Object;
.source "ScanPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/util/ScanPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryCodeHelper"
.end annotation


# instance fields
.field private final lastReceivedCountryIes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final minSamplingSize:I


# direct methods
.method public static synthetic $r8$lambda$89azCXuV9aL0LeUGjPw0fPGJsjg(Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lambda$measure$0(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bpoES6Yfp_yc7jTQjWXjsmx2rMc(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lambda$getGatheredCountryCode$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lastReceivedCountryIes:Ljava/util/Map;

    .line 563
    iput p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->minSamplingSize:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;-><init>(I)V

    return-void
.end method

.method private clear()V
    .registers 1

    .line 583
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lastReceivedCountryIes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getGatheredCountryCode()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 595
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 596
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 597
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lastReceivedCountryIes:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2, v1}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p0, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 605
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_31

    .line 606
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-float p0, p0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr p0, v3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p0, v3

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    .line 608
    :goto_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", totalSamples: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiScanPool"

    .line 608
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getGatheredCountryCode$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 598
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 599
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p0, v0, :cond_1b

    .line 600
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 601
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$measure$0(Landroid/net/wifi/ScanResult;)V
    .registers 4

    .line 570
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/IeParser;->parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "country"

    .line 571
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 572
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->put(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private put(Ljava/lang/String;)V
    .registers 4

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 588
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lastReceivedCountryIes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 590
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lastReceivedCountryIes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getApCount(Ljava/lang/String;)I
    .registers 3

    .line 616
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->lastReceivedCountryIes:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method measure(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->clear()V

    const-string v0, ""

    if-nez p1, :cond_8

    return-object v0

    .line 569
    :cond_8
    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->getGatheredCountryCode()Landroid/util/Pair;

    move-result-object p1

    .line 576
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->minSamplingSize:I

    if-lt v1, p0, :cond_25

    .line 577
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_25
    return-object v0
.end method
