.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemMHPS.java"


# static fields
.field private static final KEY_MH_PSMODE:Ljava/lang/String; = "mh_pss"

.field private static final KEY_MH_PS_USED_TIME:Ljava/lang/String; = "mh_pst"

.field private static final MHPS:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "mh_pss"

    const-string v2, ""

    .line 29
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "mh_pst"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;->MHPS:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 2

    .line 42
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;->MHPS:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 5

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 48
    array-length v0, p1

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;->MHPS:[[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_d

    goto :goto_12

    .line 54
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 49
    :cond_12
    :goto_12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_1d

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
