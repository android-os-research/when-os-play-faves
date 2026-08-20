.class public Lcom/samsung/android/server/wifi/halclient/BssInfo;
.super Ljava/lang/Object;
.source "BssInfo.java"


# instance fields
.field public final bssid:Ljava/lang/String;

.field public final frequency:I

.field public final ieData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method public constructor <init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;)V
    .registers 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;->bssid:[B

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    .line 41
    iget-object v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;->ieData:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_26

    aget-byte v3, v0, v2

    .line 42
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 44
    :cond_26
    iget p1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;->freq:I

    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    .line 45
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-object v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;->bssid:[B

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;->ieData:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    .line 33
    iget p1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;->freq:I

    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    .line 34
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BssInfo bssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", frequency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
