.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemHANG.java"


# static fields
.field private static final HANG_START_STRING:Ljava/lang/String; = "HANGED"

.field private static final HANG_WITH_DUMP:[[Ljava/lang/String;

.field private static final KEY_COOK_TIME:Ljava/lang/String; = "COOK"

.field private static final KEY_FW_HANG_REASON:Ljava/lang/String; = "fw_han"

.field private static final KEY_HANG_ALLOC_FAIL_COUNT:Ljava/lang/String; = "HG05"

.field private static final KEY_HANG_FREE_MEM:Ljava/lang/String; = "HG03"

.field private static final KEY_HANG_HEAP_TOTAL:Ljava/lang/String; = "HG02"

.field private static final KEY_HANG_REASON:Ljava/lang/String; = "HG01"

.field private static final KEY_HANG_STACK_RAW:Ljava/lang/String; = "RAW"

.field private static final KEY_HANG_TRAP_RAW:Ljava/lang/String; = "HG06"

.field private static final KEY_HANG_USED_MEM:Ljava/lang/String; = "HG04"

.field private static final KEY_VER:Ljava/lang/String; = "VER"


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "fw_han"

    const-string v2, ""

    .line 35
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "VER"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "COOK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "HG01"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "HG02"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "HG03"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "HG04"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "HG05"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "HG06"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "RAW"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 59
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiCidKeyValueString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailableLogging(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 97
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    move-result p0

    return p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 8

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    array-length v1, v0

    const-string v2, "fw_han"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    const-string p1, "0"

    .line 68
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 71
    :cond_10
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 72
    aget-object p1, v0, v3

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 75
    :cond_1a
    array-length v0, v0

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    array-length v2, v1

    add-int/2addr v2, v3

    const-string v4, "can\'t parse bigdata extra"

    const/4 v5, 0x0

    if-ne v0, v2, :cond_46

    const/4 v0, 0x6

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 77
    array-length v0, p1

    array-length v2, v1

    if-eq v0, v2, :cond_38

    goto :goto_3c

    .line 83
    :cond_38
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    return v3

    .line 78
    :cond_3c
    :goto_3c
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_45

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return v5

    .line 86
    :cond_46
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_4f

    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return v5
.end method
