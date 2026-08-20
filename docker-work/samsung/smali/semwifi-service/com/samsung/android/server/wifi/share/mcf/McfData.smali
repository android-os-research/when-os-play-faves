.class public Lcom/samsung/android/server/wifi/share/mcf/McfData;
.super Ljava/lang/Object;
.source "McfData.java"


# static fields
.field private static final EMPTY_BSSID:Ljava/lang/String; = "00:00:00:00:00:00"

.field public static final JSON_CONFIGKEY:Ljava/lang/String; = "configKey"

.field public static final JSON_CONFIGKEY_HOTSPOT:Ljava/lang/String; = "configKey_hotspot"

.field public static final JSON_PASSWORD:Ljava/lang/String; = "password"

.field public static final JSON_PBSSID:Ljava/lang/String; = "pBssid"

.field public static final JSON_START_AT:Ljava/lang/String; = "startAt"

.field public static final JSON_STATE:Ljava/lang/String; = "state"

.field private static final PBSSID_LENGTH:I = 0x3

.field private static final QOS_BYTE_DATA_NO_INTERNET:B = -0x6t

.field private static final QOS_BYTE_DATA_UNSECURED:B = -0x5t

.field static final QOS_BYTE_LENGTH:I = 0x4


# instance fields
.field private final configKey:Ljava/lang/String;

.field private final pBssid:[B

.field private pBssidRoam:B

.field private final password:Ljava/lang/String;

.field private qosByteData:B

.field private final type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/McfDataType;[B)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 43
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const/4 v1, 0x3

    new-array v2, v1, [B

    .line 64
    iput-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 65
    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    const/4 v0, 0x1

    .line 66
    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    const/4 v0, 0x2

    .line 67
    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    .line 68
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    if-ne p1, v0, :cond_26

    .line 69
    aget-byte p1, p2, v1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    goto :goto_2a

    .line 71
    :cond_26
    aget-byte p1, p2, v1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    :goto_2a
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 43
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 56
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 57
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 58
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[I)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 43
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 46
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    if-eqz p2, :cond_1e

    .line 48
    array-length p1, p2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 49
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getQoSByte([I)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    :cond_1e
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    .line 43
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->parsePasswordData(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object p1

    .line 79
    aget-object v1, p1, v0

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 82
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    .line 83
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    .line 84
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    const/4 v0, 0x1

    .line 85
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    const/4 v0, 0x2

    .line 86
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-void

    .line 80
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong pBssid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private byteArrayToMacString([B)Ljava/lang/String;
    .registers 9

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_a
    if-ge v3, v0, :cond_2b

    aget-byte v5, p1, v3

    if-eqz v4, :cond_12

    move v4, v1

    goto :goto_17

    :cond_12
    const-string v6, ":"

    .line 269
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    new-array v6, v2, [Ljava/lang/Object;

    .line 271
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v1

    const-string v5, "%02x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 273
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static byteArrayToString([B)Ljava/lang/String;
    .registers 7

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 257
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 259
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generatePBssid(Ljava/lang/String;)[B
    .registers 7

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "00:00:00:00:00:00"

    :cond_8
    const-string v0, ":"

    const-string v1, ""

    .line 110
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 112
    array-length v1, p0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 113
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_41

    .line 114
    :cond_1e
    array-length v1, p0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_41

    new-array v0, v2, [B

    const/4 v1, 0x1

    .line 116
    aget-byte v3, p0, v1

    aget-byte v2, p0, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    .line 117
    aget-byte v4, p0, v2

    const/4 v5, 0x4

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 118
    aget-byte v1, p0, v3

    const/4 v3, 0x5

    aget-byte p0, p0, v3

    xor-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    :cond_41
    :goto_41
    return-object v0
.end method

.method static getQoSByte([I)B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    .line 211
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    goto :goto_3a

    .line 214
    :cond_8
    aget v1, p0, v0

    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 p0, -0x6

    return p0

    .line 216
    :cond_14
    aget v1, p0, v0

    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_20

    const/4 p0, -0x5

    return p0

    .line 219
    :cond_20
    aget v0, p0, v0

    int-to-byte v0, v0

    mul-int/lit8 v0, v0, 0x7d

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-byte v1, v1

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-byte v1, v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget p0, p0, v1

    int-to-byte p0, p0

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0

    :cond_3a
    :goto_3a
    return v0
.end method

.method private getRoamBssid()[B
    .registers 3

    .line 193
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    if-eqz v0, :cond_14

    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 196
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    aput-byte p0, v0, v1

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 246
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    .line 248
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 249
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_2a
    return-object v1
.end method

.method private isSameBssid([B)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 277
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    array-length v3, v2

    if-ge v1, v3, :cond_14

    array-length v3, p1

    if-ge v1, v3, :cond_14

    .line 278
    aget-byte v2, v2, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 307
    instance-of v0, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 308
    check-cast p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iget-object v2, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    if-eq v0, v2, :cond_e

    return v1

    .line 312
    :cond_e
    iget-object v0, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isSameBssid([B)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 315
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_26

    .line 316
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    iget-byte p1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    if-ne p0, p1, :cond_25

    move v1, v3

    :cond_25
    return v1

    .line 318
    :cond_26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    if-nez p0, :cond_30

    .line 319
    iget-object p0, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    if-nez p0, :cond_2f

    move v1, v3

    :cond_2f
    return v1

    .line 321
    :cond_30
    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_37
    return v1
.end method

.method getByteArrayForSharing()[B
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 137
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    .line 138
    aget-byte v3, v1, v2

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    .line 139
    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 140
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const/4 v3, 0x3

    if-ne v1, v2, :cond_20

    .line 141
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    aput-byte p0, v0, v3

    goto :goto_24

    .line 143
    :cond_20
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    aput-byte p0, v0, v3

    :goto_24
    return-object v0
.end method

.method public getConfigKey()Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPartOfBssid()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->byteArrayToMacString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    return-object p0
.end method

.method getPasswordJsonData(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 170
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;
    .registers 7

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "state"

    .line 176
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pBssid"

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPartOfBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "configKey"

    .line 178
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_23

    const-string p1, "password"

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->password:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-eqz p0, :cond_33

    const-string p0, "startAt"

    .line 183
    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 186
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_33
    :goto_33
    return-object v0
.end method

.method public getSpeedArray()[I
    .registers 2

    .line 90
    iget-byte v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getSpeedArray(B)[I

    move-result-object p0

    return-object p0
.end method

.method getSpeedArray(B)[I
    .registers 4

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 226
    fill-array-data p0, :array_3e

    const/4 v0, 0x0

    const/4 v1, -0x6

    if-ne p1, v1, :cond_13

    .line 228
    sget-object p1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p1, p0, v0

    goto :goto_3d

    :cond_13
    const/4 v1, -0x5

    if-ne p1, v1, :cond_1f

    .line 230
    sget-object p1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p1, p0, v0

    goto :goto_3d

    .line 232
    :cond_1f
    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p1

    .line 233
    div-int/lit8 v1, p1, 0x7d

    aput v1, p0, v0

    mul-int/lit8 v1, v1, 0x7d

    sub-int/2addr p1, v1

    const/4 v0, 0x1

    .line 235
    div-int/lit8 v1, p1, 0x19

    aput v1, p0, v0

    mul-int/lit8 v1, v1, 0x19

    sub-int/2addr p1, v1

    const/4 v0, 0x2

    .line 237
    div-int/lit8 v1, p1, 0x5

    aput v1, p0, v0

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr p1, v1

    const/4 v0, 0x3

    aput p1, p0, v0

    :goto_3d
    return-object p0

    :array_3e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public hashCode()I
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method isPasswordCancelData()Z
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    array-length v1, v0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_16

    aget-byte v4, v0, v3

    if-eqz v4, :cond_13

    return v2

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 132
    :cond_16
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    if-nez p0, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method matches(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    iget-object v1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 297
    :cond_8
    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isSameBssid([B)Z

    move-result p0

    return p0
.end method

.method maybeRoaming(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z
    .registers 2

    .line 286
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getRoamBssid()[B

    move-result-object p1

    if-eqz p1, :cond_b

    .line 288
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isSameBssid([B)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method parsePasswordData(Lorg/json/JSONObject;)[Ljava/lang/String;
    .registers 7

    const-string p0, "state"

    const-string v0, "password"

    const-string v1, "configKey"

    const-string v2, "pBssid"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    .line 151
    :try_start_b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    .line 152
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 154
    :cond_18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    .line 155
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 157
    :cond_25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x2

    .line 158
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 160
    :cond_32
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x3

    .line 161
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    .line 164
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_44
    :goto_44
    return-object v3
.end method

.method public setRoamBssid(Ljava/lang/String;)V
    .registers 4

    const-string v0, ":"

    const-string v1, ""

    .line 203
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 204
    aget-byte v0, p1, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte p1, p1, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pBssid:"

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    .line 332
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssid:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "%02x:%02x:%02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->type:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    const-string v5, "%02x"

    if-ne v1, v2, :cond_64

    const-string v1, ", qosData:"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [Ljava/lang/Object;

    iget-byte p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->qosByteData:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_64
    const-string v1, ", pBssidRoam:"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->pBssidRoam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    if-eqz v1, :cond_88

    const-string v1, ", configKey:"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfData;->configKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_88
    :goto_88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
