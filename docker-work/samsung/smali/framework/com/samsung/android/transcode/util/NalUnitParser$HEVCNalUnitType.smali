.class public final enum Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
.super Ljava/lang/Enum;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/util/NalUnitParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HEVCNalUnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist AUD_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist BLA_W_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist CRA_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist FILTER_DATA:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist IDR_N_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist IDR_W_RADL:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist PREFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist RASL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist SPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist SUFFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist TRAIL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum blacklist VPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;


# instance fields
.field private final blacklist typeValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 55
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v1, "TRAIL_R"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->TRAIL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 56
    new-instance v1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v4, "RASL_R"

    const/16 v5, 0x9

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->RASL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 57
    new-instance v4, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v6, "BLA_W_LP"

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-direct {v4, v6, v7, v8}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->BLA_W_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 58
    new-instance v6, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v8, "IDR_W_RADL"

    const/4 v9, 0x3

    const/16 v10, 0x13

    invoke-direct {v6, v8, v9, v10}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->IDR_W_RADL:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 59
    new-instance v8, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v10, "IDR_N_LP"

    const/4 v11, 0x4

    const/16 v12, 0x14

    invoke-direct {v8, v10, v11, v12}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->IDR_N_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 60
    new-instance v10, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v12, "CRA_NUT"

    const/4 v13, 0x5

    const/16 v14, 0x15

    invoke-direct {v10, v12, v13, v14}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->CRA_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 61
    new-instance v12, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v14, "VPS_NUT"

    const/4 v15, 0x6

    const/16 v13, 0x20

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->VPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 62
    new-instance v13, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v14, "SPS_NUT"

    const/4 v15, 0x7

    const/16 v11, 0x21

    invoke-direct {v13, v14, v15, v11}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->SPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 63
    new-instance v11, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v14, "PPS_NUT"

    const/16 v15, 0x8

    const/16 v9, 0x22

    invoke-direct {v11, v14, v15, v9}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 64
    new-instance v9, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v14, "AUD_NUT"

    const/16 v15, 0x23

    invoke-direct {v9, v14, v5, v15}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->AUD_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 65
    new-instance v14, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v15, "FILTER_DATA"

    const/16 v5, 0xa

    const/16 v7, 0x26

    invoke-direct {v14, v15, v5, v7}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->FILTER_DATA:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 66
    new-instance v7, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v15, "PREFIX_SEI_NUT"

    const/16 v5, 0xb

    const/16 v3, 0x27

    invoke-direct {v7, v15, v5, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PREFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 67
    new-instance v3, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v15, "SUFFIX_SEI_NUT"

    const/16 v5, 0xc

    const/16 v2, 0x28

    invoke-direct {v3, v15, v5, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->SUFFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 68
    new-instance v2, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v15, "UNKNOWN"

    const/16 v5, 0xd

    move-object/from16 v16, v3

    const/16 v3, 0x64

    invoke-direct {v2, v15, v5, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 54
    const/16 v3, 0xe

    new-array v3, v3, [Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v11, v3, v0

    const/16 v0, 0x9

    aput-object v9, v3, v0

    const/16 v0, 0xa

    aput-object v14, v3, v0

    const/16 v0, 0xb

    aput-object v7, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v2, v3, v5

    sput-object v3, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

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

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->typeValue:I

    .line 72
    return-void
.end method

.method static blacklist getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    .registers 3
    .param p0, "val"    # I

    .line 74
    invoke-static {}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->values()[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 74
    return-object v0
.end method

.method static synthetic blacklist lambda$getNalType$0(ILcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;)Z
    .registers 3
    .param p0, "val"    # I
    .param p1, "type"    # Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 75
    iget v0, p1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->typeValue:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    .registers 1

    .line 54
    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    invoke-virtual {v0}, [Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    return-object v0
.end method
