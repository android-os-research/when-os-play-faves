.class public Lcom/android/server/compat/OverrideValidatorImpl;
.super Lcom/android/internal/compat/IOverrideValidator$Stub;
.source "OverrideValidatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;
    }
.end annotation


# instance fields
.field public mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field public mContext:Landroid/content/Context;

.field public mForceNonDebuggableFinalBuild:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/compat/OverrideValidatorImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmForceNonDebuggableFinalBuild(Lcom/android/server/compat/OverrideValidatorImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/android/internal/compat/IOverrideValidator$Stub;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 72
    iput-object p2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return-void
.end method


# virtual methods
.method public forceNonDebuggableFinalForTest(Z)V
    .registers 2

    .line 163
    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return-void
.end method

.method public getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .registers 5

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(JLjava/lang/String;Z)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object p0

    return-object p0
.end method

.method public getOverrideAllowedStateForRecheck(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .registers 5

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(JLjava/lang/String;Z)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object p0

    return-object p0
.end method

.method public final getOverrideAllowedStateInternal(JLjava/lang/String;Z)Lcom/android/internal/compat/OverrideAllowedState;
    .registers 13

    .line 96
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isLoggingOnly(J)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    .line 97
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p1, 0x5

    invoke-direct {p0, p1, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    .line 100
    :cond_10
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isDebuggableBuild()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    if-nez v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    .line 102
    :goto_21
    iget-object v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v4}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v4

    if-nez v4, :cond_30

    iget-boolean v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    if-eqz v4, :cond_2e

    goto :goto_30

    :cond_2e
    move v4, v3

    goto :goto_31

    :cond_30
    :goto_30
    move v4, v2

    .line 104
    :goto_31
    iget-object v5, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/compat/CompatConfig;->maxTargetSdkForChangeIdOptIn(J)I

    move-result v5

    .line 105
    iget-object v6, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/compat/CompatConfig;->isDisabled(J)Z

    move-result v6

    if-eqz v0, :cond_45

    .line 109
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p0, v3, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    .line 111
    :cond_45
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result v0

    if-lt v5, v0, :cond_54

    .line 112
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v1, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    .line 114
    :cond_54
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_b5

    const/high16 v7, 0x400000

    .line 120
    :try_start_5e
    invoke-virtual {v0, p3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_62} :catch_ae

    .line 127
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isOverridable(J)Z

    move-result p1

    if-eqz p1, :cond_7c

    if-nez p4, :cond_76

    iget-object p0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    .line 129
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_7c

    .line 132
    :cond_76
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p0, v3, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    .line 134
    :cond_7c
    iget p0, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 136
    iget p1, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-nez p1, :cond_8a

    .line 137
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p0, v2, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    :cond_8a
    if-nez v4, :cond_92

    .line 141
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p1, v3, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    :cond_92
    if-ne v5, v1, :cond_9c

    if-nez v6, :cond_9c

    .line 145
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p1, p2, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    :cond_9c
    if-nez v6, :cond_a8

    if-gt p0, v5, :cond_a1

    goto :goto_a8

    .line 151
    :cond_a1
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    .line 149
    :cond_a8
    :goto_a8
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p1, v3, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    .line 122
    :catch_ae
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    .line 116
    :cond_b5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No PackageManager!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerContentObserver()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_non_debuggable_final_build_for_compat"

    .line 156
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;-><init>(Lcom/android/server/compat/OverrideValidatorImpl;)V

    const/4 p0, 0x0

    .line 155
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
