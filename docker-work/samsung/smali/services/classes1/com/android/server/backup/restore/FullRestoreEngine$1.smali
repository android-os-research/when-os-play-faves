.class public synthetic Lcom/android/server/backup/restore/FullRestoreEngine$1;
.super Ljava/lang/Object;
.source "FullRestoreEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/FullRestoreEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$server$backup$restore$RestorePolicy:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 327
    invoke-static {}, Lcom/android/server/backup/restore/RestorePolicy;->values()[Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    :try_start_9
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
