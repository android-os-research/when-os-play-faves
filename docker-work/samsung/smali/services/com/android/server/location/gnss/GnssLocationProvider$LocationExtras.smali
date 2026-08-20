.class public Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationExtras"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public mMaxCn0:I

.field public mMeanCn0:I

.field public mSvCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 3

    .line 234
    monitor-enter p0

    .line 235
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    .line 236
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    return-void
.end method

.method public set(III)V
    .registers 4

    .line 210
    monitor-enter p0

    .line 211
    :try_start_1
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    .line 212
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    .line 213
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    .line 214
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    .line 215
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    return-void

    :catchall_e
    move-exception p1

    .line 214
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_20

    .line 225
    monitor-enter p0

    :try_start_3
    const-string/jumbo v0, "satellites"

    .line 226
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "meanCn0"

    .line 227
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "maxCn0"

    .line 228
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    monitor-exit p0

    goto :goto_20

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1

    :cond_20
    :goto_20
    return-void
.end method
