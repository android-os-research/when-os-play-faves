.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;
.super Ljava/lang/Object;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfileInfo"
.end annotation


# instance fields
.field final mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    .line 1114
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1116
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method getCurrentConfig()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1123
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
