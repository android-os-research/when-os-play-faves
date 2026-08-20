.class synthetic Lcom/android/internal/telephony/uicc/UiccProfile$6;
.super Ljava/lang/Object;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 1517
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 1306
    :catch_78
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    :try_start_81
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_89} :catch_89

    :catch_89
    :try_start_89
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_9d

    .line 370
    :catch_9d
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    :try_start_a6
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_ae} :catch_ae

    :catch_ae
    :try_start_ae
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b8
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c2} :catch_c2

    :catch_c2
    return-void
.end method
