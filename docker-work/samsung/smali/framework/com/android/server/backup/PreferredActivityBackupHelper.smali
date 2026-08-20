.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PreferredActivityBackupHelper$Key;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist KEYS:[Ljava/lang/String;

.field private static final blacklist KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final blacklist KEY_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final blacklist KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final blacklist STATE_VERSION:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "PreferredBackup"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 53
    const-string v0, "preferred-activity"

    const-string v1, "default-apps"

    const-string v2, "intent-verification"

    const-string v3, "domain-verification"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 73
    sget-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    .line 75
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 105
    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 110
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7c

    :cond_e
    goto :goto_36

    :sswitch_f
    const-string v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x0

    goto :goto_36

    :sswitch_19
    const-string v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x2

    goto :goto_36

    :sswitch_23
    const-string v3, "domain-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x3

    goto :goto_36

    :sswitch_2d
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x1

    :goto_36
    packed-switch v2, :pswitch_data_8e

    .line 124
    goto :goto_4d

    .line 121
    :pswitch_3a
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDomainVerification([BI)V

    .line 122
    goto :goto_63

    .line 119
    :pswitch_40
    goto :goto_63

    .line 115
    :pswitch_41
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    .line 116
    goto :goto_63

    .line 112
    :pswitch_47
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    .line 113
    goto :goto_63

    .line 124
    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_63} :catch_64

    .line 128
    :goto_63
    goto :goto_7b

    .line 126
    :catch_64
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7b
    return-void

    :sswitch_data_7c
    .sparse-switch
        -0x298b2982 -> :sswitch_2d
        -0x20befb7c -> :sswitch_23
        -0x19949e54 -> :sswitch_19
        0x4fa3eadb -> :sswitch_f
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_47
        :pswitch_41
        :pswitch_40
        :pswitch_3a
    .end packed-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 79
    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 84
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_80

    :cond_f
    goto :goto_37

    :sswitch_10
    const-string v4, "preferred-activity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x0

    goto :goto_37

    :sswitch_1a
    const-string v4, "intent-verification"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x2

    goto :goto_37

    :sswitch_24
    const-string v4, "domain-verification"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x3

    goto :goto_37

    :sswitch_2e
    const-string v4, "default-apps"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x1

    :goto_37
    packed-switch v2, :pswitch_data_92

    .line 95
    goto :goto_51

    .line 93
    :pswitch_3b
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getDomainVerificationBackup(I)[B

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_42
    return-object v3

    .line 88
    :pswitch_43
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_4a
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v0

    return-object v0

    .line 95
    :goto_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected backup key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_67} :catch_68

    .line 99
    goto :goto_7f

    .line 97
    :catch_68
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to store payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7f
    return-object v3

    :sswitch_data_80
    .sparse-switch
        -0x298b2982 -> :sswitch_2e
        -0x20befb7c -> :sswitch_24
        -0x19949e54 -> :sswitch_1a
        0x4fa3eadb -> :sswitch_10
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_43
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
