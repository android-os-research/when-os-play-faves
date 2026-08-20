.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemMHPT.java"


# static fields
.field private static final KEY_MHOT_NTV:Ljava/lang/String; = "mh_ntv"

.field private static final KEY_MHPT_ETV:Ljava/lang/String; = "mh_etv"

.field private static final KEY_MHPT_PTV:Ljava/lang/String; = "mh_ptv"

.field private static final MHPT:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "mh_ntv"

    const-string v2, ""

    .line 26
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "mh_ptv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "mh_etv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;->MHPT:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 2

    .line 40
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;->MHPT:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 5

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 46
    array-length v0, p1

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;->MHPT:[[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_d

    goto :goto_12

    .line 52
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 47
    :cond_12
    :goto_12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_1d

    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
