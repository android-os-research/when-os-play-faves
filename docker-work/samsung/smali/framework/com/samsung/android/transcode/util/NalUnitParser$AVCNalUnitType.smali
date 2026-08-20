.class public final enum Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
.super Ljava/lang/Enum;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/util/NalUnitParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVCNalUnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_DATA_PARTITION_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_DATA_PARTITION_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_DATA_PARTITION_C:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist CODE_SLICE_NON_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist FU_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist FU_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist MTAP16:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist MTAP24:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist OTHER_NAL_UNIT:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist SEQUENCE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist STAP_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist STAP_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;


# instance fields
.field private final blacklist typeValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 18

    .line 30
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v1, "CODE_SLICE_NON_IDR_PICTURE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_NON_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 31
    new-instance v1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v4, "CODE_SLICE_DATA_PARTITION_A"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 32
    new-instance v4, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v6, "CODE_SLICE_DATA_PARTITION_B"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 33
    new-instance v6, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v8, "CODE_SLICE_DATA_PARTITION_C"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_DATA_PARTITION_C:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 34
    new-instance v8, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v10, "CODE_SLICE_IDR_PICTURE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->CODE_SLICE_IDR_PICTURE:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 35
    new-instance v10, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v12, "SEQUENCE_PARAMETER_SET"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->SEQUENCE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 36
    new-instance v12, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v14, "PICTURE_PARAMETER_SET"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 37
    new-instance v14, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v13, "STAP_A"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->STAP_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 38
    new-instance v13, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v15, "STAP_B"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->STAP_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 39
    new-instance v15, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v11, "MTAP16"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->MTAP16:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 40
    new-instance v11, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v9, "MTAP24"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->MTAP24:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 41
    new-instance v9, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v7, "FU_A"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->FU_A:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 42
    new-instance v7, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v5, "FU_B"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->FU_B:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 43
    new-instance v5, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v3, "OTHER_NAL_UNIT"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->OTHER_NAL_UNIT:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 44
    new-instance v3, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const-string v2, "UNKNOWN"

    move-object/from16 v17, v5

    const/16 v5, 0x64

    invoke-direct {v3, v2, v7, v5}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 29
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v3, v2, v7

    sput-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->typeValue:I

    .line 48
    return-void
.end method

.method static blacklist getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    .registers 3
    .param p0, "val"    # I

    .line 50
    invoke-static {}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->values()[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 50
    return-object v0
.end method

.method static synthetic blacklist lambda$getNalType$0(ILcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;)Z
    .registers 3
    .param p0, "val"    # I
    .param p1, "type"    # Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    .line 51
    iget v0, p1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->typeValue:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    .registers 1

    .line 29
    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-virtual {v0}, [Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    return-object v0
.end method
