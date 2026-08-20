.class final enum Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
.super Ljava/lang/Enum;
.source "MediaStatisticsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum ADEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum AENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum VDEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum VENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 93
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 94
    new-instance v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    const-string v3, "VENC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->VENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 95
    new-instance v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    const-string v5, "VDEC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->VDEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 96
    new-instance v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    const-string v7, "AENC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->AENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 97
    new-instance v7, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    const-string v9, "ADEC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->ADEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 92
    const/4 v9, 0x5

    new-array v9, v9, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    .registers 6
    .param p0, "val"    # I

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category.valueOf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecSolution_MediaStatisticsData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 102
    .local v3, "c":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    invoke-virtual {v3}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->ordinal()I

    move-result v4

    if-ne p0, v4, :cond_29

    .line 103
    return-object v3

    .line 101
    .end local v3    # "c":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 106
    :cond_2c
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    const-class v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    return-object v0
.end method

.method public static values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    .registers 1

    .line 92
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    invoke-virtual {v0}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    return-object v0
.end method
