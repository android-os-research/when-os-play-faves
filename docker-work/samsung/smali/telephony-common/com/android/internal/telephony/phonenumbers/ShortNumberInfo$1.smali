.class synthetic Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$1;
.super Ljava/lang/Object;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 296
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->values()[Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
