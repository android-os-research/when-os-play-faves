.class public Lcom/samsung/android/server/wifi/util/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# static fields
.field public static final ASSOCIATION_REJECT_STATUS_CODE_OF_SAE_END:I = 0x40a
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ASSOCIATION_REJECT_STATUS_CODE_OF_SAE_START:I = 0x401
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ASSOCIATION_REJECT_STATUS_CODE_SAE_NO_RESPONSE:I = 0x406
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ASSOCIATION_REJECT_STATUS_CODE_UNSPECIFIED_FAILURE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DESKTOP_MODE_UI_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.dexsystemui"

.field public static final MESSAGE_HANDLING_STATUS_DEFERRED:I = -0x4

.field public static final MESSAGE_HANDLING_STATUS_DISCARD:I = -0x5

.field public static final MESSAGE_HANDLING_STATUS_FAIL:I = -0x2

.field public static final MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = -0x7

.field public static final MESSAGE_HANDLING_STATUS_LOOPED:I = -0x6

.field public static final MESSAGE_HANDLING_STATUS_OBSOLETE:I = -0x3

.field public static final MESSAGE_HANDLING_STATUS_OK:I = 0x1

.field public static final MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x2

.field public static final MESSAGE_HANDLING_STATUS_REFUSED:I = -0x1

.field public static final MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field public static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SIDE_GESTURE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sidegesturepad"

.field public static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final WLAN_AUTO_TEST_APP_NAME:Ljava/lang/String; = "com.samsung.android.net.wifi.wlanautotest"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z
    .registers 1

    .line 52
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result p0

    return p0
.end method

.method public static maybeWrongPassword(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/16 v1, 0x406

    if-ne p0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method
