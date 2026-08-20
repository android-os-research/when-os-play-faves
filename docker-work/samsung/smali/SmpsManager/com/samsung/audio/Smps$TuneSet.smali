.class public Lcom/samsung/audio/Smps$TuneSet;
.super Ljava/lang/Object;
.source "Smps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/audio/Smps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TuneSet"
.end annotation


# instance fields
.field public blacklist avol:D

.field public blacklist dvol:D

.field public blacklist mgain:D

.field public blacklist pdepth:D

.field public blacklist pgain:D

.field public blacklist rough:D

.field public blacklist rough_enable:I

.field public blacklist rvol:D

.field public blacklist sharp:D

.field public blacklist sharp_enable:I

.field public blacklist wgain:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->mgain:D

    .line 32
    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->pdepth:D

    .line 39
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/audio/Smps$TuneSet;->rough_enable:I

    .line 46
    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->rough:D

    .line 53
    iput v2, p0, Lcom/samsung/audio/Smps$TuneSet;->sharp_enable:I

    .line 60
    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->sharp:D

    .line 67
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->wgain:D

    .line 74
    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->pgain:D

    .line 81
    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->avol:D

    .line 88
    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->dvol:D

    .line 95
    iput-wide v0, p0, Lcom/samsung/audio/Smps$TuneSet;->rvol:D

    return-void
.end method
