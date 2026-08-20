.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemRAPP.java"


# static fields
.field private static final KEY_ON_APP:Ljava/lang/String; = "rtt_app"

.field private static final RAPP:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "rtt_app"

    const-string v2, ""

    .line 27
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;->RAPP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;->RAPP:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailableLogging(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 60
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    move-result p0

    return p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 5

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 45
    array-length v0, p1

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;->RAPP:[[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_d

    goto :goto_12

    .line 51
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_12
    :goto_12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_1d

    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
