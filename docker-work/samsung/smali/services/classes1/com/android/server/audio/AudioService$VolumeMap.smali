.class public final Lcom/android/server/audio/AudioService$VolumeMap;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VolumeMap"
.end annotation


# instance fields
.field public lowerStep:S

.field public raiseStep:S


# direct methods
.method public constructor <init>(SS)V
    .registers 3

    .line 16011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16012
    iput-short p2, p0, Lcom/android/server/audio/AudioService$VolumeMap;->raiseStep:S

    .line 16013
    iput-short p1, p0, Lcom/android/server/audio/AudioService$VolumeMap;->lowerStep:S

    return-void
.end method
