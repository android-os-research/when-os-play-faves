.class public final Lcom/mediatek/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final blacklist ADVANCED_WIDGET_API:Ljava/lang/String; = "android.permission.ADVANCED_WIDGET_API"

.field public static final blacklist BIND_TERMINAL:Ljava/lang/String; = "org.simalliance.openmobileapi.BIND_TERMINAL"

.field public static final blacklist CTA_CALL_FORWARD:Ljava/lang/String; = "com.mediatek.permission.CTA_CALL_FORWARD"

.field public static final blacklist CTA_CONFERENCE_CALL:Ljava/lang/String; = "com.mediatek.permission.CTA_CONFERENCE_CALL"

.field public static final blacklist CTA_SEND_EMAIL:Ljava/lang/String; = "com.mediatek.permission.CTA_SEND_EMAIL"

.field public static final blacklist CTA_SEND_MMS:Ljava/lang/String; = "com.mediatek.permission.CTA_SEND_MMS"

.field public static final blacklist GLOBAL_SEARCH:Ljava/lang/String; = "android.permission.GLOBAL_SEARCH"

.field public static final blacklist GLOBAL_SEARCH_CONTROL:Ljava/lang/String; = "android.permission.GLOBAL_SEARCH_CONTROL"

.field public static final blacklist MOUNT_SERVICE_WIPE:Ljava/lang/String; = "com.mediatek.permission.MOUNT_SERVICE_WIPE"

.field public static final blacklist SET_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.permission.SET_WALLPAPER_COMPONENT"

.field public static final blacklist SYSTEM_TERMINAL:Ljava/lang/String; = "org.simalliance.openmobileapi.SYSTEM_TERMINAL"

.field public static final blacklist WAKE_DEVICE_SENSORHUB:Ljava/lang/String; = "com.mediatek.permission.WAKE_DEVICE_SENSORHUB"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
