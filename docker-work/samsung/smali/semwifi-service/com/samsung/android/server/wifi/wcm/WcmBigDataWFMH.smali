.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFMH;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "WcmBigDataWFMH.java"


# static fields
.field public static final KEY_MH_CONNECTION_STATUS:Ljava/lang/String; = "MHCT"

.field public static final KEY_MH_DAILY_COUNT:Ljava/lang/String; = "MHDC"

.field public static final KEY_MH_HASH_PRIMARY:Ljava/lang/String; = "MHHP"

.field public static final KEY_MH_HASH_SECONDARY:Ljava/lang/String; = "MHHS"

.field public static final KEY_MH_INTERNET_CONNECTION:Ljava/lang/String; = "MHIC"

.field public static final KEY_MH_OUI_PRIMARY:Ljava/lang/String; = "MHOP"

.field public static final KEY_MH_OUI_SECONDARY:Ljava/lang/String; = "MHOS"

.field public static final KEY_MH_SAME_COUNT:Ljava/lang/String; = "MHSC"

.field public static final KEY_MH_SECURITY_TYPE:Ljava/lang/String; = "MHST"

.field public static final KEY_MH_SERVER_INDEX:Ljava/lang/String; = "MHSI"

.field public static final KEY_MH_TYPE:Ljava/lang/String; = "MTYP"

.field public static final KEY_MH_VERSION:Ljava/lang/String; = "MVER"

.field public static final VERSION:Ljava/lang/String; = "2021090800"

.field private static final WFMH:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "MVER"

    const-string v2, "2021090800"

    .line 24
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MTYP"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MHCT"

    const-string v2, "-1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "MHST"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "MHOP"

    const-string v3, "ff:ff:ff"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "MHOS"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "MHSC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "MHSI"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "MHHP"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "MHHS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "MHIC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "MHDC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFMH;->WFMH:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 5

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    :try_start_5
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFMH;->WFMH:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
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

    .line 55
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

    .line 56
    :cond_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
