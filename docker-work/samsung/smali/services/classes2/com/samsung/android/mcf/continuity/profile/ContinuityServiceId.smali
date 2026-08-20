.class public final Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_HOTSPOT:I = 0x4

.field public static final CHAT_TOGETHER:I = 0x23

.field public static final COMMON:I = 0x1e

.field public static final COMMON_ID_TEST:I = 0x64

.field public static final INPUT_SHARING:I = 0x1

.field public static final IN_APP_COLLABORATION:I = 0x2

.field public static final LAST:I = 0x1f

.field public static final NONE:I = 0x0

.field public static final QUICK_SHARE:I = 0x3

.field public static final SAMSUNG_HEALTH:I = 0x20

.field public static final SECOND_SCREEN:I = 0x22

.field public static final TEST:I = 0x1f

.field public static final VIDEO_CALL_CONTINUITY:I = 0x5

.field public static final WIFI_AUTO_SHARE:I = 0x21


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSessionSupported(I)Z
    .registers 2

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
