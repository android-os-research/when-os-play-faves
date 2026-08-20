.class public final synthetic Lcom/samsung/android/knox/EdmConstants$3;
.super Ljava/lang/Object;
.source "EdmConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EdmConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic greylist $SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

.field public static final synthetic greylist $SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I


# direct methods
.method public static constructor greylist <clinit>()V
    .registers 25

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->values()[Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v4, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v5, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_1_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v6, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_2_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v7, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v8, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v9, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v10, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    const/16 v9, 0xa

    :try_start_6e
    sget-object v10, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v11, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    const/16 v10, 0xb

    :try_start_7a
    sget-object v11, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v12, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    :catch_84
    const/16 v11, 0xc

    :try_start_86
    sget-object v12, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v13, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_90} :catch_90

    :catch_90
    const/16 v12, 0xd

    :try_start_92
    sget-object v13, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v14, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9c} :catch_9c

    :catch_9c
    const/16 v13, 0xe

    :try_start_9e
    sget-object v14, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v15, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_a8} :catch_a8

    :catch_a8
    const/16 v14, 0xf

    :try_start_aa
    sget-object v15, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v16, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_b4

    :catch_b4
    const/16 v15, 0x10

    :try_start_b6
    sget-object v16, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v17, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c0} :catch_c0

    :catch_c0
    const/16 v16, 0x11

    :try_start_c2
    sget-object v17, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v18, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_cc} :catch_cc

    :catch_cc
    const/16 v17, 0x12

    :try_start_ce
    sget-object v18, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v19, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v17, v18, v19
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d8} :catch_d8

    :catch_d8
    const/16 v18, 0x13

    :try_start_da
    sget-object v19, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v20, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aput v18, v19, v20
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e4} :catch_e4

    :catch_e4
    const/16 v19, 0x14

    :try_start_e6
    sget-object v20, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v21, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aput v19, v20, v21
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f0} :catch_f0

    :catch_f0
    const/16 v20, 0x15

    :try_start_f2
    sget-object v21, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v22, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aput v20, v21, v22
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_fc

    :catch_fc
    const/16 v21, 0x16

    :try_start_fe
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v21, v22, v23
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v22, v23
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    :try_start_114
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v22, v23
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    :catch_120
    :try_start_120
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v22, v23
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12c
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v22, v23
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    :catch_138
    :try_start_138
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v22, v23
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v22, v23
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1d

    aput v24, v22, v23
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    :catch_15c
    :try_start_15c
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1e

    aput v24, v22, v23
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    :catch_168
    :try_start_168
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1f

    aput v24, v22, v23
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    :catch_174
    :try_start_174
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_NONE:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x20

    aput v24, v22, v23
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_180

    .line 2
    :catch_180
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->values()[Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    :try_start_189
    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_191
    .catch Ljava/lang/NoSuchFieldError; {:try_start_189 .. :try_end_191} :catch_191

    :catch_191
    :try_start_191
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v15, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v0, v1, v15
    :try_end_19b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_191 .. :try_end_19b} :catch_19b

    :catch_19b
    :try_start_19b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19b .. :try_end_1a5} :catch_1a5

    :catch_1a5
    :try_start_1a5
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a5 .. :try_end_1af} :catch_1af

    :catch_1af
    :try_start_1af
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1af .. :try_end_1b9} :catch_1b9

    :catch_1b9
    :try_start_1b9
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4_0_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b9 .. :try_end_1c3} :catch_1c3

    :catch_1c3
    :try_start_1c3
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_1cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c3 .. :try_end_1cd} :catch_1cd

    :catch_1cd
    :try_start_1cd
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cd .. :try_end_1d7} :catch_1d7

    :catch_1d7
    :try_start_1d7
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_1e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d7 .. :try_end_1e1} :catch_1e1

    :catch_1e1
    :try_start_1e1
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_1eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e1 .. :try_end_1eb} :catch_1eb

    :catch_1eb
    :try_start_1eb
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_1f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1eb .. :try_end_1f5} :catch_1f5

    :catch_1f5
    :try_start_1f5
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_1ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f5 .. :try_end_1ff} :catch_1ff

    :catch_1ff
    :try_start_1ff
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_209
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ff .. :try_end_209} :catch_209

    :catch_209
    :try_start_209
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_213
    .catch Ljava/lang/NoSuchFieldError; {:try_start_209 .. :try_end_213} :catch_213

    :catch_213
    :try_start_213
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_21d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_213 .. :try_end_21d} :catch_21d

    :catch_21d
    :try_start_21d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_229
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21d .. :try_end_229} :catch_229

    :catch_229
    :try_start_229
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_233
    .catch Ljava/lang/NoSuchFieldError; {:try_start_229 .. :try_end_233} :catch_233

    :catch_233
    :try_start_233
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_23d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_233 .. :try_end_23d} :catch_23d

    :catch_23d
    :try_start_23d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v18, v0, v1
    :try_end_247
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23d .. :try_end_247} :catch_247

    :catch_247
    :try_start_247
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v19, v0, v1
    :try_end_251
    .catch Ljava/lang/NoSuchFieldError; {:try_start_247 .. :try_end_251} :catch_251

    :catch_251
    :try_start_251
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v20, v0, v1
    :try_end_25b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_251 .. :try_end_25b} :catch_25b

    :catch_25b
    :try_start_25b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v21, v0, v1
    :try_end_265
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25b .. :try_end_265} :catch_265

    :catch_265
    :try_start_265
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_271
    .catch Ljava/lang/NoSuchFieldError; {:try_start_265 .. :try_end_271} :catch_271

    :catch_271
    :try_start_271
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_27d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_271 .. :try_end_27d} :catch_27d

    :catch_27d
    :try_start_27d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_289
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27d .. :try_end_289} :catch_289

    :catch_289
    :try_start_289
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_295
    .catch Ljava/lang/NoSuchFieldError; {:try_start_289 .. :try_end_295} :catch_295

    :catch_295
    :try_start_295
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_295 .. :try_end_2a1} :catch_2a1

    :catch_2a1
    :try_start_2a1
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_2ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a1 .. :try_end_2ad} :catch_2ad

    :catch_2ad
    :try_start_2ad
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_2b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ad .. :try_end_2b9} :catch_2b9

    :catch_2b9
    :try_start_2b9
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_2c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b9 .. :try_end_2c5} :catch_2c5

    :catch_2c5
    :try_start_2c5
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_2d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c5 .. :try_end_2d1} :catch_2d1

    :catch_2d1
    :try_start_2d1
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_2dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d1 .. :try_end_2dd} :catch_2dd

    :catch_2dd
    :try_start_2dd
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_2e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2dd .. :try_end_2e9} :catch_2e9

    :catch_2e9
    return-void
.end method
