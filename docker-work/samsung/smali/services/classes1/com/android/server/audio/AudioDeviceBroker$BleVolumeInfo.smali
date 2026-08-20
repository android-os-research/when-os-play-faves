.class public final Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BleVolumeInfo"
.end annotation


# instance fields
.field public final mIndex:I

.field public final mMaxIndex:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    .line 604
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    .line 605
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    return-void
.end method
