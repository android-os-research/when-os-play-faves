.class synthetic Lcom/android/internal/telephony/GsmCdmaPhone$4;
.super Ljava/lang/Object;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$DctConstants$State:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 932
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$Activity;->values()[Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/internal/telephony/GsmCdmaPhone$4;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone$4;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone$4;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    .line 901
    :catch_33
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/internal/telephony/GsmCdmaPhone$4;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    :try_start_3c
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lcom/android/internal/telephony/GsmCdmaPhone$4;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method
