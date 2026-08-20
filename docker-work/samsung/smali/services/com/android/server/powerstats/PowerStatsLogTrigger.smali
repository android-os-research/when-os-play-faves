.class public abstract Lcom/android/server/powerstats/PowerStatsLogTrigger;
.super Ljava/lang/Object;
.source "PowerStatsLogTrigger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerStatsLogTrigger"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    return-void
.end method


# virtual methods
.method public logPowerStatsData(I)V
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
