.class synthetic Lcom/samsung/android/knox/SemPersonaManager$2;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic greylist $SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I


# direct methods
.method static constructor greylist <clinit>()V
    .registers 3

    .line 687
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->values()[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    :try_start_9
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    :try_start_70
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v0

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v0

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    :try_start_d2
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v0

    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v0

    :goto_ee
    :try_start_ee
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    :try_start_fc
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_109

    goto :goto_10a

    :catch_109
    move-exception v0

    :goto_10a
    :try_start_10a
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_117

    goto :goto_118

    :catch_117
    move-exception v0

    :goto_118
    :try_start_118
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_125

    goto :goto_126

    :catch_125
    move-exception v0

    :goto_126
    :try_start_126
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_126 .. :try_end_132} :catch_133

    goto :goto_134

    :catch_133
    move-exception v0

    :goto_134
    :try_start_134
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_140} :catch_141

    goto :goto_142

    :catch_141
    move-exception v0

    :goto_142
    :try_start_142
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_142 .. :try_end_14e} :catch_14f

    goto :goto_150

    :catch_14f
    move-exception v0

    :goto_150
    :try_start_150
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15d

    goto :goto_15e

    :catch_15d
    move-exception v0

    :goto_15e
    :try_start_15e
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_16b

    goto :goto_16c

    :catch_16b
    move-exception v0

    :goto_16c
    :try_start_16c
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_178} :catch_179

    goto :goto_17a

    :catch_179
    move-exception v0

    :goto_17a
    :try_start_17a
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_186
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17a .. :try_end_186} :catch_187

    goto :goto_188

    :catch_187
    move-exception v0

    :goto_188
    :try_start_188
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_188 .. :try_end_194} :catch_195

    goto :goto_196

    :catch_195
    move-exception v0

    :goto_196
    :try_start_196
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a2} :catch_1a3

    goto :goto_1a4

    :catch_1a3
    move-exception v0

    :goto_1a4
    :try_start_1a4
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$2;->$SwitchMap$com$samsung$android$knox$SemPersonaManager$KnoxContainerVersion:[I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b1

    goto :goto_1b2

    :catch_1b1
    move-exception v0

    :goto_1b2
    return-void
.end method
