.class public Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;
.super Ljava/lang/Object;
.source "SysUiStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SysUiStatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .registers 2

    .line 70
    new-instance p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/SysUiStatsEvent$Builder;-><init>(Landroid/util/StatsEvent$Builder;)V

    return-object p0
.end method
