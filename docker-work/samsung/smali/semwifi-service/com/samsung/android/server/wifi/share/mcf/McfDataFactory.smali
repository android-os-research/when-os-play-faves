.class public final Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;
.super Ljava/lang/Object;
.source "McfDataFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createPasswordCancelData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 4

    .line 45
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 4

    .line 69
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createPasswordData(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 2

    .line 59
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    .line 61
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method static createPasswordData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 3

    if-eqz p0, :cond_e

    .line 50
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->PASSWORD:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfDataType;[B)V

    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method static createQoSData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 3

    if-eqz p0, :cond_e

    .line 37
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 38
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/McfDataType;->QOS:Lcom/samsung/android/server/wifi/share/mcf/McfDataType;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfDataType;[B)V

    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQosData(Ljava/lang/String;[I)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 4

    if-eqz p1, :cond_c

    .line 29
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 30
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;-><init>(Ljava/lang/String;[I)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method
