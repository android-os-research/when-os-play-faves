.class public Lcom/android/server/backup/AppSpecificLocalesBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "AppSpecificLocalesBackupHelper.java"


# static fields
.field public static final BLOB_VERSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final KEY_APP_LOCALES:Ljava/lang/String; = "app_locales"

.field public static final TAG:Ljava/lang/String; = "AppLocalesBackupHelper"


# instance fields
.field public final mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const-string v0, "app_locales"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 48
    iput p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    .line 49
    const-class p1, Lcom/android/server/locales/LocaleManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/locales/LocaleManagerInternal;

    iput-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 5

    const-string v0, "app_locales"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLocalesBackupHelper"

    if-eqz v0, :cond_19

    .line 81
    :try_start_a
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    iget p0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/locales/LocaleManagerInternal;->stageAndApplyRestoredPayload([BI)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_2d

    :catch_12
    move-exception p0

    const-string p1, "Couldn\'t communicate with locale manager"

    .line 83
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 86
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected restore key "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .registers 5

    const-string v0, "app_locales"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLocalesBackupHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 61
    :try_start_b
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    iget p0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/locales/LocaleManagerInternal;->getBackupPayload(I)[B

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception p0

    const-string p1, "Couldn\'t communicate with locale manager"

    .line 64
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 68
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected backup key "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-object v2
.end method
