.class public Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;
.super Ljava/lang/Object;
.source "SemTwtInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/twt/SemTwtInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwtStats"
.end annotation


# instance fields
.field public ccaBusyTimeMs:J

.field public radioOnTimeMs:J

.field public rxGood:J

.field public rxPktBytes:J

.field public rxPktCnt:J

.field public scanTimeMs:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field public txBad:J

.field public txGood:J

.field public txPktBytes:J

.field public txPktCnt:J

.field public txRetry:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->this$0:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
