.class public final Lcom/android/server/hdmi/RequestSadAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestSadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;
    }
.end annotation


# static fields
.field public static final MAX_SAD_PER_REQUEST:I = 0x4

.field public static final RETRY_COUNTER_MAX:I = 0x1

.field public static final STATE_WAITING_FOR_REPORT_SAD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "RequestSadAction"


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

.field public final mCecCodecsToQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mQueriedSadCount:I

.field public final mSupportedSads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final mTargetAddress:I

.field public mTimeoutRetry:I


# direct methods
.method public static synthetic $r8$lambda$zRrzE1KBnaH2HNW_K0uDMeDfMD8(Ljava/lang/Integer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/RequestSadAction;->lambda$querySad$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/RequestSadAction$RequestSadCallback;)V
    .registers 5

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 46
    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 56
    iput p2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 57
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    iput-object p3, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    const-string/jumbo p2, "query_sad_lpcm"

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3a

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    const-string/jumbo p2, "query_sad_dd"

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_4b

    const/4 p2, 0x2

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    const-string/jumbo p2, "query_sad_mpeg1"

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_5c

    const/4 p2, 0x3

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    const-string/jumbo p2, "query_sad_mp3"

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_6d

    const/4 p2, 0x4

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    const-string/jumbo p2, "query_sad_mpeg2"

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_7e

    const/4 p2, 0x5

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7e
    const-string/jumbo p2, "query_sad_aac"

    .line 84
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_8f

    const/4 p2, 0x6

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    const-string/jumbo p2, "query_sad_dts"

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_a0

    const/4 p2, 0x7

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a0
    const-string/jumbo p2, "query_sad_atrac"

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_b2

    const/16 p2, 0x8

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b2
    const-string/jumbo p2, "query_sad_onebitaudio"

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_c4

    const/16 p2, 0x9

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c4
    const-string/jumbo p2, "query_sad_ddp"

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_d6

    const/16 p2, 0xa

    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d6
    const-string/jumbo p2, "query_sad_dtshd"

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_e8

    const/16 p2, 0xb

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e8
    const-string/jumbo p2, "query_sad_truehd"

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_fa

    const/16 p2, 0xc

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fa
    const-string/jumbo p2, "query_sad_dst"

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_10c

    const/16 p2, 0xd

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10c
    const-string/jumbo p2, "query_sad_wmapro"

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_11e

    const/16 p2, 0xe

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11e
    const-string/jumbo p2, "query_sad_max"

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    if-ne p0, p3, :cond_130

    const/16 p0, 0xf

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_130
    return-void
.end method

.method public static synthetic lambda$querySad$0(Ljava/lang/Integer;)I
    .registers 1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 3

    .line 213
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 217
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    if-gt p1, v0, :cond_13

    .line 218
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    return-void

    .line 223
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    :cond_16
    return-void
.end method

.method public final isValidCodec(B)Z
    .registers 2

    and-int/lit16 p0, p1, 0xff

    if-lez p0, :cond_a

    const/16 p1, 0xf

    if-gt p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 10

    .line 158
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_cd

    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 159
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_10

    goto/16 :goto_cd

    .line 162
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0xa3

    const/4 v4, 0x3

    if-ne v0, v3, :cond_97

    .line 163
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_96

    .line 164
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    rem-int/2addr v0, v4

    if-eqz v0, :cond_2f

    goto :goto_96

    :cond_2f
    move v0, v1

    .line 168
    :goto_30
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    if-ge v0, v3, :cond_8b

    .line 169
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/RequestSadAction;->isValidCodec(B)Z

    move-result v3

    if-eqz v3, :cond_67

    new-array v3, v4, [B

    .line 170
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    aget-byte v6, v6, v0

    aput-byte v6, v3, v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v3, v2

    .line 171
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    add-int/lit8 v7, v0, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v3, v5

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/RequestSadAction;->updateResult([B)V

    goto :goto_88

    .line 175
    :cond_67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropped invalid codec "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    aget-byte v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RequestSadAction"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    add-int/lit8 v0, v0, 0x3

    goto :goto_30

    .line 178
    :cond_8b
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 179
    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 180
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    :cond_96
    :goto_96
    return v2

    .line 183
    :cond_97
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_cd

    .line 184
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_cd

    .line 186
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_b7

    .line 188
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    return v2

    .line 191
    :cond_b7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v4, :cond_cd

    .line 193
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 194
    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 195
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    return v2

    :cond_cd
    :goto_cd
    return v1
.end method

.method public final querySad()V
    .registers 5

    .line 143
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 144
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    return-void

    .line 147
    :cond_e
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    iget v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x1

    .line 152
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public start()Z
    .registers 1

    .line 138
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateResult([B)V
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final wrapUpAndFinish()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;->onRequestSadDone(Ljava/util/List;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method
