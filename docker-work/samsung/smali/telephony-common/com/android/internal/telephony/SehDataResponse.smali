.class public Lcom/android/internal/telephony/SehDataResponse;
.super Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub;
.source "SehDataResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/SehDataResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/SehDataResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 64
    :try_start_a
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v2, :cond_13

    .line 65
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehDataResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_19

    .line 68
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_20

    :catchall_19
    move-exception v2

    iget-object p0, p0, Lcom/android/internal/telephony/SehDataResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 69
    throw v2

    :cond_20
    :goto_20
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 44
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void
.end method


# virtual methods
.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "1c18f89373d68cf0030dbdb95f4a9287fe232a2e"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setDataAllowedResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehDataResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setMobileDataSettingResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehDataResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method
