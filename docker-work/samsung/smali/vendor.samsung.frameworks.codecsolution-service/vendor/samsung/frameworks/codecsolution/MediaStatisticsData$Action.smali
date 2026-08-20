.class final enum Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
.super Ljava/lang/Enum;
.source "MediaStatisticsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

.field public static final enum INSTANTIATE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

.field public static final enum NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 111
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 112
    new-instance v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    const-string v3, "INSTANTIATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->INSTANTIATE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 110
    const/4 v3, 0x2

    new-array v3, v3, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    .registers 6
    .param p0, "val"    # I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action.valueOf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecSolution_MediaStatisticsData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 117
    .local v3, "a":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    invoke-virtual {v3}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->ordinal()I

    move-result v4

    if-ne p0, v4, :cond_29

    .line 118
    return-object v3

    .line 116
    .end local v3    # "a":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 121
    :cond_2c
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    return-object v0
.end method

.method public static values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    .registers 1

    .line 110
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    invoke-virtual {v0}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    return-object v0
.end method
