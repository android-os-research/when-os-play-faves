.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;
.super Ljava/lang/Object;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScore"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field pBssid:Ljava/lang/String;

.field speedData:[I

.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;)V
    .registers 3

    .line 1905
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1906
    iget-object p1, p2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    .line 1907
    iget-object p1, p2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->pBssid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->pBssid:Ljava/lang/String;

    .line 1908
    iget-object p1, p2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->speedData:[I

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->speedData:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;[I)V
    .registers 4

    .line 1899
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->pBssid:Ljava/lang/String;

    .line 1901
    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->findBssidFromScanResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->bssid:Ljava/lang/String;

    .line 1902
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->speedData:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;[ILcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", pBssid:"

    .line 1914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->pBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", speed:["

    .line 1915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$NetworkScore;->speedData:[I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_27

    aget v3, p0, v2

    .line 1917
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_27
    const-string p0, "]"

    .line 1919
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
