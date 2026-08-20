.class synthetic Lcom/android/internal/telephony/cat/CatService$1;
.super Ljava/lang/Object;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$MmiCode$State:[I

.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$cat$CallType:[I

.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$cat$ResultCode:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 20

    .line 3799
    invoke-static {}, Lcom/android/internal/telephony/MmiCode$State;->values()[Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 3218
    :catch_1d
    invoke-static {}, Lcom/android/internal/telephony/cat/CallType;->values()[Lcom/android/internal/telephony/cat/CallType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$CallType:[I

    :try_start_26
    sget-object v3, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$CallType:[I

    sget-object v3, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    const/4 v2, 0x3

    :try_start_39
    sget-object v3, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$CallType:[I

    sget-object v4, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    .line 2363
    :catch_43
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    :try_start_4c
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v3, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5e
    sget-object v3, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_68

    :catch_68
    const/4 v3, 0x4

    :try_start_69
    sget-object v4, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    const/4 v4, 0x5

    :try_start_74
    sget-object v5, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7e} :catch_7e

    :catch_7e
    const/4 v5, 0x6

    :try_start_7f
    sget-object v6, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_89

    :catch_89
    const/4 v6, 0x7

    :try_start_8a
    sget-object v7, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_94} :catch_94

    :catch_94
    const/16 v7, 0x8

    :try_start_96
    sget-object v8, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_a0

    :catch_a0
    const/16 v8, 0x9

    :try_start_a2
    sget-object v9, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ac} :catch_ac

    :catch_ac
    const/16 v9, 0xa

    :try_start_ae
    sget-object v10, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b8} :catch_b8

    :catch_b8
    const/16 v10, 0xb

    :try_start_ba
    sget-object v11, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_c4} :catch_c4

    :catch_c4
    const/16 v11, 0xc

    :try_start_c6
    sget-object v12, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d0} :catch_d0

    :catch_d0
    const/16 v12, 0xd

    :try_start_d2
    sget-object v13, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v14, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dc} :catch_dc

    :catch_dc
    const/16 v13, 0xe

    :try_start_de
    sget-object v14, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_e8} :catch_e8

    :catch_e8
    const/16 v14, 0xf

    :try_start_ea
    sget-object v15, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f4} :catch_f4

    :catch_f4
    const/16 v15, 0x10

    :try_start_f6
    sget-object v16, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f6 .. :try_end_100} :catch_100

    :catch_100
    const/16 v16, 0x11

    :try_start_102
    sget-object v17, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v18, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10c} :catch_10c

    :catch_10c
    const/16 v17, 0x12

    :try_start_10e
    sget-object v18, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v17, v18, v19
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_118} :catch_118

    .line 840
    :catch_118
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    :try_start_121
    sget-object v19, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v1, v15, v19
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_121 .. :try_end_129} :catch_129

    :catch_129
    :try_start_129
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v15, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v0, v1, v15
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_133

    :catch_133
    :try_start_133
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_13d

    :catch_13d
    :try_start_13d
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_147

    :catch_147
    :try_start_147
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_151

    :catch_151
    :try_start_151
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_15b

    :catch_15b
    :try_start_15b
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_165

    :catch_165
    :try_start_165
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_16f

    :catch_16f
    :try_start_16f
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_179

    :catch_179
    :try_start_179
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_183

    :catch_183
    :try_start_183
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_18d

    :catch_18d
    :try_start_18d
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_197} :catch_197

    :catch_197
    :try_start_197
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_1a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a1} :catch_1a1

    :catch_1a1
    :try_start_1a1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ab} :catch_1ab

    :catch_1ab
    :try_start_1ab
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ab .. :try_end_1b5} :catch_1b5

    :catch_1b5
    :try_start_1b5
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b5 .. :try_end_1c1} :catch_1c1

    :catch_1c1
    :try_start_1c1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_1cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c1 .. :try_end_1cb} :catch_1cb

    :catch_1cb
    :try_start_1cb
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_1d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cb .. :try_end_1d5} :catch_1d5

    :catch_1d5
    :try_start_1d5
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d5 .. :try_end_1e1} :catch_1e1

    :catch_1e1
    :try_start_1e1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e1 .. :try_end_1ed} :catch_1ed

    :catch_1ed
    :try_start_1ed
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ed .. :try_end_1f9} :catch_1f9

    :catch_1f9
    :try_start_1f9
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_205
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f9 .. :try_end_205} :catch_205

    :catch_205
    :try_start_205
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_211
    .catch Ljava/lang/NoSuchFieldError; {:try_start_205 .. :try_end_211} :catch_211

    :catch_211
    return-void
.end method
