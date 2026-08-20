.class final enum Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
.super Ljava/lang/Enum;
.source "WifiQoSCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Speed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum NORMAL:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

.field public static final enum VERY_FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;


# instance fields
.field final bitValue:I

.field final score:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 159
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 160
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const-string v3, "SLOW"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 161
    new-instance v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const-string v6, "NORMAL"

    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-direct {v3, v6, v7, v7, v8}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->NORMAL:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 162
    new-instance v6, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const-string v8, "FAST"

    const/4 v9, 0x3

    const/16 v10, 0x14

    invoke-direct {v6, v8, v9, v9, v10}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 163
    new-instance v8, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const-string v10, "VERY_FAST"

    const/4 v11, 0x4

    const/16 v12, 0x1e

    invoke-direct {v8, v10, v11, v11, v12}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->VERY_FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    new-array v5, v5, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    aput-object v6, v5, v9

    aput-object v8, v5, v11

    .line 158
    sput-object v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->$VALUES:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput p3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    .line 170
    iput p4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    return-void
.end method

.method static from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .registers 6

    if-gtz p0, :cond_5

    .line 174
    sget-object p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    return-object p0

    .line 175
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->values()[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 176
    iget v4, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    if-ne v4, p0, :cond_14

    return-object v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 180
    :cond_17
    sget-object p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    return-object p0
.end method

.method static fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .registers 6

    .line 184
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget v1, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    if-ne p0, v1, :cond_7

    return-object v0

    .line 186
    :cond_7
    sget-object v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->VERY_FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget v2, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->FAST:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget v4, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    if-lt p0, v2, :cond_16

    return-object v1

    .line 188
    :cond_16
    sget-object v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->NORMAL:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget v2, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    if-lt p0, v4, :cond_21

    return-object v3

    .line 190
    :cond_21
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget v4, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    if-lt p0, v2, :cond_2c

    return-object v1

    .line 192
    :cond_2c
    div-int/lit8 v4, v4, 0x2

    if-lt p0, v4, :cond_31

    return-object v3

    :cond_31
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .registers 2

    .line 158
    const-class v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;
    .registers 1

    .line 158
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->$VALUES:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    return-object v0
.end method
