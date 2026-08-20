.class public Lcom/android/server/sepunion/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    }
.end annotation


# static fields
.field public static final COVER_TEST_MODE:Ljava/lang/String; = "cover_test_mode"

.field public static final COVER_TEST_VISIBLE_RECT:Ljava/lang/String; = "cover_test_visible_rect"

.field public static final DELIMTER:Ljava/lang/String; = ","

.field public static final SHIPPED:Z

.field public static final TAG:Ljava/lang/String;

.field public static final TEST_MODE_NONE:I = -0x1

.field public static sCurrentTestMode:I

.field public static sCurrentTestVisibleRect:Landroid/graphics/Rect;


# instance fields
.field public mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field public mContext:Landroid/content/Context;

.field public mObserver:Landroid/database/ContentObserver;

.field public mTestModeChangeHandler:Landroid/os/Handler;

.field public mVisibleRectObserver:Landroid/database/ContentObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTestModeFromSetting(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTestVisibleRectFromSetting(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Landroid/graphics/Rect;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestVisibleRectFromSetting()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateCoverTestMode(Lcom/android/server/sepunion/cover/CoverTestModeUtils;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->updateCoverTestMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsCurrentTestMode()I
    .registers 1

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputsCurrentTestVisibleRect(Landroid/graphics/Rect;)V
    .registers 1

    sput-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    .line 23
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    const/4 v0, -0x1

    .line 28
    sput v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    .line 49
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_16

    .line 50
    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string p1, "This version has been shipped!! Then cover test mode is not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_16
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 57
    new-instance p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const-string p1, "cover_test_mode"

    .line 64
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result p1

    sput p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 69
    new-instance p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mVisibleRectObserver:Landroid/database/ContentObserver;

    const-string p1, "cover_test_visible_rect"

    .line 75
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mVisibleRectObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestVisibleRectFromSetting()Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getSmartCoverStateForTestMode(ZZ)Lcom/samsung/android/cover/CoverState;
    .registers 13

    .line 149
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_27

    const/4 v0, 0x5

    new-array v8, v0, [B

    .line 151
    fill-array-data v8, :array_2a

    .line 153
    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "getSmartCoverStateForTestMode : make smartCoverState for test"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v7, "1com.samsung.android.sdk.cover.hellocover"

    const-string v9, "##########"

    move-object v1, v0

    move v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V

    return-object v0

    :cond_27
    const/4 p0, 0x0

    return-object p0

    nop

    :array_2a
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method public static getTestCoverType()I
    .registers 1

    .line 137
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 140
    :cond_6
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method public static getTestVisibleRect()Landroid/graphics/Rect;
    .registers 1

    .line 144
    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static isTestMode()Z
    .registers 2

    .line 133
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v0, :cond_b

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p0, " Current CoverTestModeUtils state:"

    .line 160
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  SHIPPED="

    .line 161
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sCurrentTestMode="

    .line 162
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  sCurrentTestVisibleRect="

    .line 163
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "  "

    .line 164
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getTestModeFromSetting()I
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cover_test_mode"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getTestVisibleRectFromSetting()Landroid/graphics/Rect;
    .registers 3

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "cover_test_visible_rect"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_42

    :try_start_13
    const-string v1, ","

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 95
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    .line 96
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x2

    .line 97
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x3

    .line 98
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    :goto_42
    return-object v0
.end method

.method public setTestModeToSetting(I)V
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cover_test_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setTestVisibleRectToSetting(Landroid/graphics/Rect;)V
    .registers 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cover_test_visible_rect"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final updateCoverTestMode(I)V
    .registers 6

    .line 112
    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverTestMode() sCurrentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    if-ne v0, p1, :cond_26

    return-void

    .line 119
    :cond_26
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    if-nez v1, :cond_2b

    return-void

    :cond_2b
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_32

    .line 124
    invoke-interface {v1, v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    .line 127
    :cond_32
    sput p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 129
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
