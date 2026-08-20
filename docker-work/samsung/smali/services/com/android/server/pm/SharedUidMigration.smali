.class public final Lcom/android/server/pm/SharedUidMigration;
.super Ljava/lang/Object;
.source "SharedUidMigration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SharedUidMigration$Strategy;
    }
.end annotation


# static fields
.field public static final BEST_EFFORT:I = 0x2

.field public static final DEFAULT:I = 0x1

.field public static final LIVE_TRANSITION:I = 0x4

.field public static final NEW_INSTALL_ONLY:I = 0x1

.field public static final PROPERTY_KEY:Ljava/lang/String; = "persist.debug.pm.shared_uid_migration_strategy"

.field public static final TRANSITION_AT_BOOT:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStrategy(I)Z
    .registers 2

    .line 95
    invoke-static {}, Lcom/android/server/pm/SharedUidMigration;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/pm/SharedUidMigration;->getCurrentStrategy()I

    move-result v0

    if-lt v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static getCurrentStrategy()I
    .registers 3

    .line 79
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "persist.debug.pm.shared_uid_migration_strategy"

    .line 83
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_14

    if-ge v0, v1, :cond_13

    goto :goto_14

    :cond_13
    return v0

    :cond_14
    :goto_14
    return v1
.end method

.method public static isDisabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
