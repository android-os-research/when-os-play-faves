.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;
.super Ljava/lang/Object;
.source "SemWifiApDataUsageDummyDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientDetailsHelper"
.end annotation


# instance fields
.field public dataLimit:J

.field public dataUsage:J

.field public deviceMac:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public isSharingPause:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

.field public timeLimit:J

.field public timeUsage:J


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)V

    return-void
.end method
