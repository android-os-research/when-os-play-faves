.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;,
        Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;,
        Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;,
        Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PowerStatsHALWrapper"


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/powerstats/PowerStatsHALWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerStatsHalImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .registers 2

    .line 335
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;-><init>()V

    .line 336
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 339
    :cond_c
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;-><init>()V

    return-object v0
.end method
