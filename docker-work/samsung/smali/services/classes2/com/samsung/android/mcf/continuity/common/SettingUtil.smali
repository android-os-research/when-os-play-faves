.class public Lcom/samsung/android/mcf/continuity/common/SettingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SETTING_ID_CONTINUITY:Ljava/lang/String; = "mcf_continuity"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_ID_MULTI_CONTROL:Ljava/lang/String; = "multi_control_enabled"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_ID_VIDEO_CALL_CONTINUITY:Ljava/lang/String; = "vcc_continuity"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContinuitySettingEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "mcf_continuity"

    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMultiControlSettingEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "multi_control_enabled"

    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_d

    move v0, p1

    :cond_d
    return v0
.end method

.method public static isVideoCallContinuityEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "vcc_continuity"

    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
