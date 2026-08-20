.class public final Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceVolumeUpdate"
.end annotation


# static fields
.field public static final NO_NEW_INDEX:I = -0x801


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mDevice:I

.field public final mStreamType:I

.field public final mVssVolIndex:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5

    .line 8921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8922
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    .line 8923
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 8924
    iput p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 8925
    iput-object p4, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 8930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8931
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    const/16 p1, -0x801

    .line 8932
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 8933
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 8934
    iput-object p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVolumeIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 8942
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v1, -0x801

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 8943
    iget p0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    return p0
.end method

.method public hasVolumeIndex()Z
    .registers 2

    .line 8938
    iget p0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v0, -0x801

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
