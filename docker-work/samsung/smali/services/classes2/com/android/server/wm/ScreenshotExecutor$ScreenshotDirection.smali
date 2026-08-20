.class public Lcom/android/server/wm/ScreenshotExecutor$ScreenshotDirection;
.super Ljava/lang/Object;
.source "ScreenshotExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotDirection"
.end annotation


# static fields
.field public static final ORIGINAL:I = 0x1

.field public static final SWEEP_FROM_LEFT:I = 0x2

.field public static final SWEEP_FROM_RIGHT:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
