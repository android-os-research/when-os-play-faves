.class public final Lcom/android/server/audio/SoundEffectsHelper$Resource;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mHasSituationVolume:Z

.field public mLoaded:Z

.field public mSampleId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    return-void
.end method


# virtual methods
.method public unload()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 109
    iput-boolean v0, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    return-void
.end method
