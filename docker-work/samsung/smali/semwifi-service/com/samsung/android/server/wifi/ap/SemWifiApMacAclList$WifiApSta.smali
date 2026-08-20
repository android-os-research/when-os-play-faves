.class public Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;
.super Ljava/lang/Object;
.source "SemWifiApMacAclList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiApSta"
.end annotation


# instance fields
.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->mMac:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->mMac:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->mName:Ljava/lang/String;

    return-void
.end method
