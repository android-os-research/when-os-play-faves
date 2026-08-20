.class public Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppForeGroundUsage"
.end annotation


# instance fields
.field public appLastLaunchTime:J

.field public appLastPausetime:J

.field public appLaunchCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    const-wide/16 v0, 0x0

    .line 146
    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 147
    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>()V

    return-void
.end method
