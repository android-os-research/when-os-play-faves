.class final enum Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
.super Ljava/lang/Enum;
.source "MediaStatisticsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum FLOAT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum INT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum INTARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum LONG:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum LONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum STRING:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum STRINGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum ULONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 36
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 40
    new-instance v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v3, "INT"

    const/4 v4, 0x1

    const-string v5, "vint"

    invoke-direct {v1, v3, v4, v5}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 44
    new-instance v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v5, "LONG"

    const/4 v6, 0x2

    const-string v7, "vlng"

    invoke-direct {v3, v5, v6, v7}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONG:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 48
    new-instance v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v7, "FLOAT"

    const/4 v8, 0x3

    const-string v9, "vflt"

    invoke-direct {v5, v7, v8, v9}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->FLOAT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 52
    new-instance v7, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v9, "STRING"

    const/4 v10, 0x4

    const-string v11, "vstr"

    invoke-direct {v7, v9, v10, v11}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRING:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 56
    new-instance v9, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v11, "INTARRAY"

    const/4 v12, 0x5

    const-string v13, "aint"

    invoke-direct {v9, v11, v12, v13}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INTARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 60
    new-instance v11, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v13, "LONGARRAY"

    const/4 v14, 0x6

    const-string v15, "alng"

    invoke-direct {v11, v13, v14, v15}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 64
    new-instance v13, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v15, "ULONGARRAY"

    const/4 v14, 0x7

    const-string v12, "auln"

    invoke-direct {v13, v15, v14, v12}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->ULONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 68
    new-instance v12, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    const-string v15, "STRINGARRAY"

    const/16 v14, 0x8

    const-string v10, "astr"

    invoke-direct {v12, v15, v14, v10}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRINGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 35
    const/16 v10, 0x9

    new-array v10, v10, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-static {p3}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->-$$Nest$smgetFourCCNumber(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->val:I

    .line 73
    return-void
.end method

.method static valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    .registers 6
    .param p0, "val"    # I

    .line 81
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 82
    .local v3, "t":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    iget v4, v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->val:I

    if-ne p0, v4, :cond_f

    .line 83
    return-object v3

    .line 81
    .end local v3    # "t":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 86
    :cond_12
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    return-object v0
.end method

.method public static values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    .registers 1

    .line 35
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    invoke-virtual {v0}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 77
    iget v0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->val:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
