.class public Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;
.super Ljava/lang/Object;
.source "ArtStatsLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/ArtStatsLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundDexoptJobStatsLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(IIJJ)V
    .registers 14

    .line 325
    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetSTATUS_MAP()Ljava/util/Map;

    move-result-object p0

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 326
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v0, 0x1d3

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 325
    invoke-static/range {v0 .. v6}, Lcom/android/internal/art/ArtStatsLog;->write(IIIJJ)V

    return-void
.end method
