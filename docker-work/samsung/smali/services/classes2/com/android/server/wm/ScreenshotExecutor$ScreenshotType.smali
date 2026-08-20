.class public Lcom/android/server/wm/ScreenshotExecutor$ScreenshotType;
.super Ljava/lang/Object;
.source "ScreenshotExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotType"
.end annotation


# static fields
.field public static final FULLSCREEN:I = 0x1

.field public static final PARTIAL:I = 0x2

.field public static final RECT:I = 0x65

.field public static final WINDOW:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
