.class Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnDiscInfo"
.end annotation


# static fields
.field public static final DIRECTION_CONN:I = 0x1

.field public static final DIRECTION_DISC:I = 0x2

.field public static final TRIGGERED_BY_NONE:I = 0x0

.field public static final TRIGGERED_BY_PHONE:I = 0x2

.field public static final TRIGGERED_BY_USER:I = 0x1


# instance fields
.field public bssid:Ljava/lang/String;

.field public configKey:Ljava/lang/String;

.field public connTime:J

.field public connTriggeredBy:I

.field public discTime:J

.field public discTriggeredBy:I

.field public networkId:I


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;JI)V
    .registers 12

    .line 2377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_18

    .line 2379
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->bssid:Ljava/lang/String;

    .line 2380
    iput p3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->networkId:I

    .line 2381
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->configKey:Ljava/lang/String;

    .line 2382
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J

    .line 2383
    iput p7, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    .line 2385
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTime:J

    .line 2386
    iput v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    goto :goto_29

    :cond_18
    const/4 v3, 0x2

    if-ne p1, v3, :cond_29

    .line 2388
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->bssid:Ljava/lang/String;

    .line 2389
    iput p3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->networkId:I

    .line 2390
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->configKey:Ljava/lang/String;

    .line 2391
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTime:J

    .line 2392
    iput p7, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    .line 2394
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J

    .line 2395
    iput v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    :cond_29
    :goto_29
    return-void
.end method
