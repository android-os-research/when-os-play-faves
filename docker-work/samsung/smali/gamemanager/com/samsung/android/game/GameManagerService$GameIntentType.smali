.class public final Lcom/samsung/android/game/GameManagerService$GameIntentType;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GameIntentType"
.end annotation


# static fields
.field public static final BATTERY_LEVEL_CHANGED:I = 0x6

.field public static final GAME_FOCUS_IN:I = 0x0

.field public static final GAME_FOCUS_OUT:I = 0x1

.field public static final GOS_ENABLED:I = 0x13

.field public static final MEDIA_SERVER_REBOOTED:I = 0x9

.field public static final NON_GAME_FOCUS_IN:I = 0x4

.field public static final PACKAGE_CHANGED:I = 0xf

.field public static final RESOLUTION_CHANGED:I = 0x5

.field public static final UNKNOWN:I = -0x1

.field public static final USER_REMOVED:I = 0x11

.field public static final USER_SWITCHED:I = 0x12

.field public static final VRR_SETTING_CHANGED:I = 0xe

.field public static final WIFI_CONNECTED:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
