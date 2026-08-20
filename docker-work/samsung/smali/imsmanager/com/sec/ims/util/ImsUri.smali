.class public Lcom/sec/ims/util/ImsUri;
.super Ljava/lang/Object;
.source "ImsUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/util/ImsUri$UriType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field public static EMPTY:Lcom/sec/ims/util/ImsUri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUri"

.field private static final PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;


# instance fields
.field private mSipUri:Lgov/nist/javax/sip/address/SipUri;

.field private mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

.field private mUrn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/util/ImsUri;->DBG:Z

    .line 36
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/util/ImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    .line 454
    new-instance v0, Lcom/sec/ims/util/ImsUri$1;

    invoke-direct {v0}, Lcom/sec/ims/util/ImsUri$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 447
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, v0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 448
    iget-object v1, v0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    iput-object v1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/ImsUri-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/util/ImsUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/SipUri;)V
    .registers 3
    .param p1, "uri"    # Lgov/nist/javax/sip/address/SipUri;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 126
    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 127
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/TelURLImpl;)V
    .registers 3
    .param p1, "uri"    # Lgov/nist/javax/sip/address/TelURLImpl;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 136
    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "urn"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 116
    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 66
    return-object v0

    .line 70
    :cond_4
    sget-object v1, Lcom/sec/ims/util/ImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 73
    .local v1, "i":I
    const-string v2, "xxxxx"

    const-string v3, "ImsUri"

    if-gez v1, :cond_38

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse: illegal Uri - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/sec/ims/util/ImsUri;->DBG:Z

    if-eqz v5, :cond_2c

    move-object v2, p0

    :cond_2c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v0

    .line 77
    :cond_38
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "scheme":Ljava/lang/String;
    :try_start_3d
    new-instance v5, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v5, p0}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, "parse":Lgov/nist/javax/sip/parser/URLParser;
    const-string v6, "sip"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_75

    const-string v6, "sips"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    goto :goto_75

    .line 83
    :cond_54
    const-string v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 84
    new-instance v6, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/ims/util/ImsUri;-><init>(Lgov/nist/javax/sip/address/TelURLImpl;)V

    return-object v6

    .line 85
    :cond_66
    const-string v6, "urn"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 86
    new-instance v6, Lcom/sec/ims/util/ImsUri;

    invoke-direct {v6, p0}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 91
    .end local v5    # "parse":Lgov/nist/javax/sip/parser/URLParser;
    :cond_74
    goto :goto_a8

    .line 82
    .restart local v5    # "parse":Lgov/nist/javax/sip/parser/URLParser;
    :cond_75
    :goto_75
    new-instance v6, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/ims/util/ImsUri;-><init>(Lgov/nist/javax/sip/address/SipUri;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7e} :catch_7f

    return-object v6

    .line 88
    .end local v5    # "parse":Lgov/nist/javax/sip/parser/URLParser;
    :catch_7f
    move-exception v5

    .line 89
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse: failured. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/ims/util/ImsUri;->DBG:Z

    if-eqz v7, :cond_90

    move-object v2, p0

    :cond_90
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " e="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_a8
    return-object v0
.end method

.method public static removeUriParametersAndHeaders(Lcom/sec/ims/util/ImsUri;)V
    .registers 1
    .param p0, "imsUri"    # Lcom/sec/ims/util/ImsUri;

    .line 102
    if-nez p0, :cond_3

    .line 103
    return-void

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->removeParams()V

    .line 106
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->removeHeaders()V

    .line 107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 344
    return-object v0

    .line 346
    :cond_5
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 371
    if-ne p0, p1, :cond_4

    .line 372
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 374
    return v0

    .line 375
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 376
    return v0

    .line 377
    :cond_13
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 379
    .local v0, "other":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_6
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_2b

    .line 290
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelURLImpl;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelURLImpl;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_24
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    .line 293
    :cond_2b
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_32

    .line 294
    return-object v1

    .line 297
    :cond_32
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "user":Ljava/lang/String;
    if-nez v0, :cond_3b

    .line 299
    return-object v1

    .line 302
    :cond_3b
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 303
    .local v1, "index":I
    if-lez v1, :cond_49

    .line 304
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 306
    :cond_49
    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_6
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneContext()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_9

    .line 317
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getPhoneContext()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_12

    .line 319
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :cond_12
    const-string v0, ""

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    .line 332
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_6
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    move-result v0

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 161
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriType()Lcom/sec/ims/util/ImsUri$UriType;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_7

    .line 146
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_e

    .line 148
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 150
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0

    .line 152
    :cond_15
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_6
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 356
    const/16 v0, 0x1f

    .line 357
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 358
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/SipUri;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 359
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/TelURLImpl;->hashCode()I

    move-result v4

    :goto_1c
    add-int/2addr v1, v4

    .line 360
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public removeHeaders()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    .line 278
    return-void

    .line 280
    :cond_5
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->removeHeaders()V

    .line 281
    return-void
.end method

.method public removeParam(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    .line 229
    return-void

    .line 231
    :cond_5
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public removeParams()V
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    .line 241
    return-void

    .line 243
    :cond_5
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->removeParameters()V

    .line 244
    return-void
.end method

.method public removeTelParams()V
    .registers 4

    .line 480
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-nez v0, :cond_5

    .line 481
    return-void

    .line 484
    :cond_5
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 485
    iget-object v1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/TelURLImpl;->removeParameter(Ljava/lang/String;)V

    goto :goto_9

    .line 487
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1b
    return-void
.end method

.method public removeUserParam()V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    .line 266
    return-void

    .line 268
    :cond_5
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_e

    .line 212
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/address/TelURLImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 213
    :cond_e
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_15

    .line 214
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_15} :catch_16

    .line 218
    :cond_15
    :goto_15
    goto :goto_1a

    .line 216
    :catch_16
    move-exception v0

    .line 217
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_1a
    return-void
.end method

.method public setUserParam(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    .line 254
    return-void

    .line 256
    :cond_5
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setUserParam(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 390
    return-object v0

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringLimit()Ljava/lang/String;
    .registers 5

    .line 401
    const/4 v0, 0x2

    .line 402
    .local v0, "LIMIT_LENGTH":I
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_18

    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 406
    :cond_18
    const-string v2, ""

    return-object v2
.end method

.method public uri()Lgov/nist/javax/sip/address/GenericURI;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_5

    .line 416
    return-object v0

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 442
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    return-void
.end method
