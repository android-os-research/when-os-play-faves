.class synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 6249
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->values()[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$11;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method
