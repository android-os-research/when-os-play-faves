.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$Booleans;
.super Ljava/lang/Object;
.source "ParsingPackageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Booleans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$Booleans$Values;
    }
.end annotation


# static fields
.field public static final ALLOW_AUDIO_PLAYBACK_CAPTURE:J = 0x80000000L

.field public static final ALLOW_BACKUP:J = 0x4L

.field public static final ALLOW_CLEAR_USER_DATA:J = 0x800L

.field public static final ALLOW_CLEAR_USER_DATA_ON_FAILED_RESTORE:J = 0x40000000L

.field public static final ALLOW_NATIVE_HEAP_POINTER_TAGGING:J = 0x1000000000L

.field public static final ALLOW_TASK_REPARENTING:J = 0x400L

.field public static final ATTRIBUTIONS_ARE_USER_VISIBLE:J = 0x800000000000L

.field public static final BACKUP_IN_FOREGROUND:J = 0x1000000L

.field public static final BASE_HARDWARE_ACCELERATED:J = 0x2L

.field public static final CANT_SAVE_STATE:J = 0x800000000L

.field public static final CROSS_PROFILE:J = 0x80000000000L

.field public static final DEBUGGABLE:J = 0x80L

.field public static final DEFAULT_TO_DEVICE_PROTECTED_STORAGE:J = 0x4000000L

.field public static final DIRECT_BOOT_AWARE:J = 0x8000000L

.field public static final DISALLOW_PROFILING:J = 0x200000000000L

.field public static final ENABLED:J = 0x100000000000L

.field public static final ENABLE_ON_BACK_INVOKED_CALLBACK:J = 0x4000000000000L

.field public static final EXTERNAL_STORAGE:J = 0x1L

.field public static final EXTRACT_NATIVE_LIBS:J = 0x20000L

.field public static final FORCE_QUERYABLE:J = 0x40000000000L

.field public static final FULL_BACKUP_ONLY:J = 0x20L

.field public static final GAME:J = 0x40000L

.field public static final HAS_CODE:J = 0x200L

.field public static final HAS_DOMAIN_URLS:J = 0x400000L

.field public static final HAS_FRAGILE_USER_DATA:J = 0x400000000L

.field public static final ISOLATED_SPLIT_LOADING:J = 0x200000L

.field public static final KILL_AFTER_RESTORE:J = 0x8L

.field public static final LARGE_HEAP:J = 0x1000L

.field public static final LEAVING_SHARED_UID:J = 0x8000000000000L

.field public static final MULTI_ARCH:J = 0x10000L

.field public static final OVERLAY:J = 0x100000L

.field public static final OVERLAY_IS_STATIC:J = 0x8000000000L

.field public static final PARTIALLY_DIRECT_BOOT_AWARE:J = 0x10000000L

.field public static final PERSISTENT:J = 0x40L

.field public static final PRESERVE_LEGACY_EXTERNAL_STORAGE:J = 0x2000000000L

.field public static final PROFILEABLE_BY_SHELL:J = 0x800000L

.field public static final REQUEST_FOREGROUND_SERVICE_EXEMPTION:J = 0x400000000000L

.field public static final REQUEST_LEGACY_EXTERNAL_STORAGE:J = 0x100000000L

.field public static final REQUIRED_FOR_ALL_USERS:J = 0x4000000000L

.field public static final RESET_ENABLED_SETTINGS_ON_APP_DATA_CLEARED:J = 0x1000000000000L

.field public static final RESIZEABLE_ACTIVITY_VIA_SDK_VERSION:J = 0x20000000L

.field public static final RESTORE_ANY_VERSION:J = 0x10L

.field public static final SDK_LIBRARY:J = 0x2000000000000L

.field public static final STATIC_SHARED_LIBRARY:J = 0x80000L

.field public static final SUPPORTS_RTL:J = 0x4000L

.field public static final TEST_ONLY:J = 0x8000L

.field public static final USES_CLEARTEXT_TRAFFIC:J = 0x2000L

.field public static final USES_NON_SDK_API:J = 0x200000000L

.field public static final USE_32_BIT_ABI:J = 0x10000000000L

.field public static final USE_EMBEDDED_DEX:J = 0x2000000L

.field public static final VISIBLE_TO_INSTANT_APPS:J = 0x20000000000L

.field public static final VM_SAFE_MODE:J = 0x100L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
