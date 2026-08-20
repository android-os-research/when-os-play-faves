.class public Lcom/samsung/android/transcode/util/SEFHelper$Region;
.super Ljava/lang/Object;
.source "SEFHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/util/SEFHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# instance fields
.field public mRegionAudioEndTime:I

.field public mRegionEndTime:I

.field public mRegionSpeed:I

.field public mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public mRegionStartTime:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-void
.end method
