.class final enum Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;
.super Ljava/lang/Enum;
.source "KeyCustomizationInfoXmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MigrationCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum ATT_TV_MODE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum B2B_DELTA_TOP:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum B2B_DELTA_XCOVER:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum DUPLICATED_ROUTINE_PLUS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum DUPLICATED_UNKNOWN_ID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum NOTHING:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum ONE_HAND_MODE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum QUICK_LAUNCH_CAMERA:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum REQUESTED_SETTINGS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum SIDE_KEY_BOTH:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum SIDE_KEY_DOUBLE_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum SIDE_KEY_LONG_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum SOS_MESSAGE_QUADRUPLE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum SOS_MESSAGE_TRIPLE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum TOP_BOTH:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum TOP_LONG_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum TOP_SHORT_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum XCOVER_BOTH:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum XCOVER_LONG_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public static final enum XCOVER_SHORT_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .registers 23

    .line 93
    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v3, "B2B_DELTA_XCOVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->B2B_DELTA_XCOVER:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v5, "B2B_DELTA_TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->B2B_DELTA_TOP:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v5, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v7, "XCOVER_SHORT_PRESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->XCOVER_SHORT_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 94
    new-instance v7, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v9, "XCOVER_LONG_PRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->XCOVER_LONG_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v9, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v11, "TOP_SHORT_PRESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->TOP_SHORT_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v11, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v13, "TOP_LONG_PRESS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->TOP_LONG_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v13, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v15, "XCOVER_BOTH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->XCOVER_BOTH:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v15, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v14, "TOP_BOTH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->TOP_BOTH:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 95
    new-instance v14, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v12, "SIDE_KEY_LONG_PRESS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->SIDE_KEY_LONG_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v12, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v10, "SIDE_KEY_DOUBLE_PRESS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->SIDE_KEY_DOUBLE_PRESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v10, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v8, "SIDE_KEY_BOTH"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->SIDE_KEY_BOTH:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 96
    new-instance v8, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v6, "SOS_MESSAGE_TRIPLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->SOS_MESSAGE_TRIPLE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v4, "SOS_MESSAGE_QUADRUPLE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->SOS_MESSAGE_QUADRUPLE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v4, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v2, "ONE_HAND_MODE"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->ONE_HAND_MODE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 97
    new-instance v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v6, "QUICK_LAUNCH_CAMERA"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->QUICK_LAUNCH_CAMERA:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v4, "ATT_TV_MODE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->ATT_TV_MODE:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v4, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v2, "DUPLICATED_ROUTINE_PLUS"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->DUPLICATED_ROUTINE_PLUS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 98
    new-instance v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v6, "DUPLICATED_UNKNOWN_ID"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->DUPLICATED_UNKNOWN_ID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    new-instance v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v4, "REQUESTED_SETTINGS"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    move-object/from16 v22, v8

    const/16 v8, 0x64

    invoke-direct {v6, v4, v2, v8}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->REQUESTED_SETTINGS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v22, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    aput-object v6, v4, v2

    .line 92
    sput-object v4, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->code:I

    return-void
.end method

.method public static getMigrationCode(I)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;
    .registers 6

    .line 111
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 112
    iget v4, v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 116
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMigrationCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is nothing."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyCustomizationInfoXmlUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;
    .registers 2

    .line 92
    const-class v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;
    .registers 1

    .line 92
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;)Z
    .registers 2

    .line 121
    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->code:I

    invoke-virtual {p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result p1

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public getCode()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->code:I

    return p0
.end method

.method public isNothing()Z
    .registers 2

    .line 128
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    iget v0, v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->code:I

    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->code:I

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
