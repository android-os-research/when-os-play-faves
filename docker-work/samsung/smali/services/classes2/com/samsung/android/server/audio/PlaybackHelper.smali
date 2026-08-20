.class public Lcom/samsung/android/server/audio/PlaybackHelper;
.super Ljava/lang/Object;
.source "PlaybackHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.PlaybackHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMusicActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 4

    .line 26
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 28
    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_22

    if-eq p0, v0, :cond_22

    const/16 v2, 0xc

    if-eq p0, v2, :cond_22

    const/16 v2, 0xe

    if-eq p0, v2, :cond_22

    const/16 v2, 0x10

    if-eq p0, v2, :cond_22

    return v1

    :cond_22
    return v0
.end method
