.class public Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;
.super Ljava/lang/Object;
.source "SemServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficData"
.end annotation


# instance fields
.field public dlPacketCnt:F

.field public dlPacketSizeAvg:F

.field public dlPacketSizeMax:F

.field public dlPacketSizeMin:F

.field public interTimeAvg:F

.field public interTimeDLMax1:F

.field public interTimeDLMax2:F

.field public interTimeMax:F

.field public interTimeMin:F

.field public ulPacketCnt:F

.field public ulPacketSizeAvg:F

.field public ulPacketSizeMax:F

.field public ulPacketSizeMin:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
