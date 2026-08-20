.class public Lcom/android/server/power/ShutdownCheckPoints$1;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"

# interfaces
.implements Lcom/android/server/power/ShutdownCheckPoints$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownCheckPoints;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activityManager()Landroid/app/IActivityManager;
    .registers 1

    .line 81
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public currentTimeMillis()J
    .registers 3

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public maxCheckPoints()I
    .registers 1

    const/16 p0, 0x64

    return p0
.end method

.method public maxDumpFiles()I
    .registers 1

    const/16 p0, 0x14

    return p0
.end method
