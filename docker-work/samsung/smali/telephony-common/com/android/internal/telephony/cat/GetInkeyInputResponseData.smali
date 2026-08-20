.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final blacklist GET_INKEY_NO:B = 0x0t

.field protected static final blacklist GET_INKEY_YES:B = 0x1t


# instance fields
.field private blacklist mDuration:B

.field public blacklist mInData:Ljava/lang/String;

.field private blacklist mIsDuration:Z

.field private blacklist mIsPacked:Z

.field private blacklist mIsUcs2:Z

.field private blacklist mIsYesNo:Z

.field private blacklist mTimeUnit:B

.field private blacklist mYesNoResponse:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/Duration;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    const-string v1, ""

    .line 121
    iput-object v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 122
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    .line 125
    iget-object v0, p1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    .line 126
    iget p1, p1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 101
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 102
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    const-string v0, ""

    .line 111
    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 113
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 136
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2e

    .line 137
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 138
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x2

    new-array v3, v0, [B

    .line 141
    iget-byte v4, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    aput-byte v4, v3, v2

    .line 142
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    add-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v3, v1

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_24
    if-ge v2, v0, :cond_ae

    .line 144
    aget-byte p0, v3, v2

    .line 145
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 149
    :cond_2e
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v0, :cond_44

    new-array v0, v1, [B

    .line 156
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    aput-byte v3, v0, v2

    goto :goto_7f

    .line 157
    :cond_44
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7d

    .line 161
    :try_start_4e
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v0, :cond_5b

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v3, "UTF-16BE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_7f

    .line 164
    :cond_5b
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v0, :cond_70

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 166
    invoke-static {v0, v2, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v0

    .line 171
    array-length v3, v0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    .line 172
    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_7f

    .line 174
    :cond_70
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_76
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4e .. :try_end_76} :catch_7a
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4e .. :try_end_76} :catch_77

    goto :goto_7f

    :catch_77
    new-array v0, v2, [B

    goto :goto_7f

    :catch_7a
    new-array v0, v2, [B

    goto :goto_7f

    :cond_7d
    new-array v0, v2, [B

    .line 192
    :goto_7f
    array-length v3, v0

    add-int/2addr v3, v1

    const/16 v4, 0xff

    if-gt v3, v4, :cond_8b

    .line 193
    array-length v3, v0

    add-int/2addr v3, v1

    invoke-static {p1, v3}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_8d

    :cond_8b
    new-array v0, v2, [B

    .line 200
    :goto_8d
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v1, :cond_97

    const/16 p0, 0x8

    .line 201
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a3

    .line 202
    :cond_97
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz p0, :cond_9f

    .line 203
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a3

    :cond_9f
    const/4 p0, 0x4

    .line 205
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 208
    :goto_a3
    array-length p0, v0

    :goto_a4
    if-ge v2, p0, :cond_ae

    aget-byte v1, v0, v2

    .line 209
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_ae
    return-void
.end method
