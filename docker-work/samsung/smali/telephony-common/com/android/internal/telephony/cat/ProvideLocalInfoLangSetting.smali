.class Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private blacklist langType:[B

.field private blacklist tag:B

.field private blacklist tagLen:B


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 351
    iput-object v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->langType:[B

    const/16 v1, -0x53

    .line 352
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->tag:B

    .line 353
    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->tagLen:B

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside ProvideLocalinfolangSetting method, lenguage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 361
    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_6e

    .line 362
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of langString : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    aget-object p1, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->langType:[B

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value of langtype byte"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->langType:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_6e
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 4

    .line 373
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->tag:B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->tagLen:B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;->langType:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method
