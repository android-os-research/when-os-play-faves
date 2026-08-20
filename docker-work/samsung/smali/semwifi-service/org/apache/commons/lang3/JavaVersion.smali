.class public final enum Lorg/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_0_9"

    const/4 v2, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    const-string v4, "0.9"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 38
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    const-string v4, "JAVA_1_1"

    const/4 v5, 0x1

    const v6, 0x3f8ccccd    # 1.1f

    const-string v7, "1.1"

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    .line 43
    new-instance v4, Lorg/apache/commons/lang3/JavaVersion;

    const-string v6, "JAVA_1_2"

    const/4 v7, 0x2

    const v8, 0x3f99999a    # 1.2f

    const-string v9, "1.2"

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    .line 48
    new-instance v6, Lorg/apache/commons/lang3/JavaVersion;

    const-string v8, "JAVA_1_3"

    const/4 v9, 0x3

    const v10, 0x3fa66666    # 1.3f

    const-string v11, "1.3"

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    .line 53
    new-instance v8, Lorg/apache/commons/lang3/JavaVersion;

    const-string v10, "JAVA_1_4"

    const/4 v11, 0x4

    const v12, 0x3fb33333    # 1.4f

    const-string v13, "1.4"

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    .line 58
    new-instance v10, Lorg/apache/commons/lang3/JavaVersion;

    const-string v12, "JAVA_1_5"

    const/4 v13, 0x5

    const-string v14, "1.5"

    invoke-direct {v10, v12, v13, v3, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    .line 63
    new-instance v3, Lorg/apache/commons/lang3/JavaVersion;

    const-string v12, "JAVA_1_6"

    const/4 v14, 0x6

    const v15, 0x3fcccccd    # 1.6f

    const-string v13, "1.6"

    invoke-direct {v3, v12, v14, v15, v13}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    .line 68
    new-instance v12, Lorg/apache/commons/lang3/JavaVersion;

    const-string v13, "JAVA_1_7"

    const/4 v15, 0x7

    const v14, 0x3fd9999a    # 1.7f

    const-string v11, "1.7"

    invoke-direct {v12, v13, v15, v14, v11}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    .line 73
    new-instance v11, Lorg/apache/commons/lang3/JavaVersion;

    const-string v13, "JAVA_1_8"

    const/16 v14, 0x8

    const v15, 0x3fe66666    # 1.8f

    const-string v9, "1.8"

    invoke-direct {v11, v13, v14, v15, v9}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    .line 80
    new-instance v9, Lorg/apache/commons/lang3/JavaVersion;

    const-string v13, "JAVA_1_9"

    const/16 v15, 0x9

    const/high16 v14, 0x41100000    # 9.0f

    const-string v7, "9"

    invoke-direct {v9, v13, v15, v14, v7}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 88
    new-instance v13, Lorg/apache/commons/lang3/JavaVersion;

    const-string v15, "JAVA_9"

    const/16 v5, 0xa

    invoke-direct {v13, v15, v5, v14, v7}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 95
    new-instance v7, Lorg/apache/commons/lang3/JavaVersion;

    const-string v14, "JAVA_10"

    const/16 v15, 0xb

    const/high16 v5, 0x41200000    # 10.0f

    const-string v2, "10"

    invoke-direct {v7, v14, v15, v5, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    .line 102
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    const-string v5, "JAVA_11"

    const/16 v14, 0xc

    const/high16 v15, 0x41300000    # 11.0f

    move-object/from16 v16, v7

    const-string v7, "11"

    invoke-direct {v2, v5, v14, v15, v7}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    .line 109
    new-instance v5, Lorg/apache/commons/lang3/JavaVersion;

    const-string v7, "JAVA_12"

    const/16 v15, 0xd

    const/high16 v14, 0x41400000    # 12.0f

    move-object/from16 v17, v2

    const-string v2, "12"

    invoke-direct {v5, v7, v15, v14, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    .line 116
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    const-string v7, "JAVA_13"

    const/16 v14, 0xe

    const/high16 v15, 0x41500000    # 13.0f

    move-object/from16 v18, v5

    const-string v5, "13"

    invoke-direct {v2, v7, v14, v15, v5}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    .line 123
    new-instance v5, Lorg/apache/commons/lang3/JavaVersion;

    const-string v7, "JAVA_14"

    const/16 v15, 0xf

    const/high16 v14, 0x41600000    # 14.0f

    move-object/from16 v19, v2

    const-string v2, "14"

    invoke-direct {v5, v7, v15, v14, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/lang3/JavaVersion;->JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

    .line 130
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    const-string v7, "JAVA_15"

    const/16 v14, 0x10

    const/high16 v15, 0x41700000    # 15.0f

    move-object/from16 v20, v5

    const-string v5, "15"

    invoke-direct {v2, v7, v14, v15, v5}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

    .line 137
    new-instance v5, Lorg/apache/commons/lang3/JavaVersion;

    const-string v7, "JAVA_16"

    const/16 v15, 0x11

    const/high16 v14, 0x41800000    # 16.0f

    move-object/from16 v21, v2

    const-string v2, "16"

    invoke-direct {v5, v7, v15, v14, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/lang3/JavaVersion;->JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

    .line 142
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v7

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    const-string v15, "JAVA_RECENT"

    move-object/from16 v22, v5

    const/16 v5, 0x12

    invoke-direct {v2, v15, v5, v7, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    const/16 v7, 0x13

    new-array v7, v7, [Lorg/apache/commons/lang3/JavaVersion;

    const/4 v14, 0x0

    aput-object v0, v7, v14

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v3, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v11, v7, v0

    const/16 v0, 0x9

    aput-object v9, v7, v0

    const/16 v0, 0xa

    aput-object v13, v7, v0

    const/16 v0, 0xb

    aput-object v16, v7, v0

    const/16 v0, 0xc

    aput-object v17, v7, v0

    const/16 v0, 0xd

    aput-object v18, v7, v0

    const/16 v0, 0xe

    aput-object v19, v7, v0

    const/16 v0, 0xf

    aput-object v20, v7, v0

    const/16 v0, 0x10

    aput-object v21, v7, v0

    const/16 v0, 0x11

    aput-object v22, v7, v0

    aput-object v2, v7, v5

    .line 28
    sput-object v7, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    .line 162
    iput-object p4, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "0.9"

    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 221
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_f
    const-string v1, "1.1"

    .line 222
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 223
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_1a
    const-string v1, "1.2"

    .line 224
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 225
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_25
    const-string v1, "1.3"

    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 227
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_30
    const-string v1, "1.4"

    .line 228
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 229
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_3b
    const-string v1, "1.5"

    .line 230
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 231
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_46
    const-string v1, "1.6"

    .line 232
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 233
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_51
    const-string v1, "1.7"

    .line 234
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 235
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_5c
    const-string v1, "1.8"

    .line 236
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 237
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_67
    const-string v1, "9"

    .line 238
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 239
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_72
    const-string v1, "10"

    .line 240
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 241
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_7d
    const-string v1, "11"

    .line 242
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 243
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_88
    const-string v1, "12"

    .line 244
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 245
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_93
    const-string v1, "13"

    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 247
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_9e
    const-string v1, "14"

    .line 248
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 249
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_a9
    const-string v1, "15"

    .line 250
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 251
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_b4
    const-string v1, "16"

    .line 252
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 253
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    .line 255
    :cond_bf
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_fb

    const/16 v1, 0x2e

    .line 257
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 259
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const v1, 0x3f666666    # 0.9f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_104

    .line 260
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_fb
    const/high16 p0, 0x41200000    # 10.0f

    cmpl-float p0, v1, p0

    if-lez p0, :cond_104

    .line 263
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    return-object p0

    :cond_104
    return-object v0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .registers 1

    .line 205
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;

    move-result-object p0

    return-object p0
.end method

.method private static maxVersion()F
    .registers 2

    const-string v0, "java.specification.version"

    const-string v1, "99.0"

    .line 287
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_12

    return v0

    :cond_12
    const/high16 v0, 0x42c60000    # 99.0f

    return v0
.end method

.method private static toFloatVersion(Ljava/lang/String;)F
    .registers 4

    const-string v0, "."

    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_34

    const-string v0, "\\."

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 304
    array-length v0, p0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_33

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0

    :cond_33
    return v1

    .line 308
    :cond_34
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .registers 2

    .line 28
    const-class v0, Lorg/apache/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/JavaVersion;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/JavaVersion;
    .registers 1

    .line 28
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/commons/lang3/JavaVersion;)Z
    .registers 2

    .line 176
    iget p0, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    iget p1, p1, Lorg/apache/commons/lang3/JavaVersion;->value:F

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public atMost(Lorg/apache/commons/lang3/JavaVersion;)Z
    .registers 2

    .line 191
    iget p0, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    iget p1, p1, Lorg/apache/commons/lang3/JavaVersion;->value:F

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 278
    iget-object p0, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object p0
.end method
