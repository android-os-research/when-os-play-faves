.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFSN;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "WcmBigDataWFSN.java"


# static fields
.field public static final KEY_BACKOFF_TYPE:Ljava/lang/String; = "BFTY"

.field private static final KEY_BACKOFF_VERSION:Ljava/lang/String; = "BFVS"

.field public static final KEY_RSSI:Ljava/lang/String; = "BFRS"

.field public static final KEY_RX_LINK_SPEED:Ljava/lang/String; = "BFRS"

.field public static final KEY_TX_LINK_SPEED:Ljava/lang/String; = "BFTS"

.field private static final WFSN:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "BFVS"

    const-string v2, "20211119"

    .line 39
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BFTY"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "BFRS"

    const-string v2, "-1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "BFTS"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFSN;->WFSN:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 5

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    :try_start_5
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFSN;->WFSN:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJsonFormat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_4b

    :catch_2d
    move-exception v1

    .line 67
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    if-eqz v2, :cond_48

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured on getJsonFormat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
