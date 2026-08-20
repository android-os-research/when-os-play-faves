.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;
.super Landroid/database/ContentObserver;
.source "PackageFeatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;
    }
.end annotation


# static fields
.field public static final SETTINGS_KEY_PACKAGE_POLICY_DISABLED:Ljava/lang/String; = "package_policy_disabled"

.field public static final SETTING_VALUE_OFF:I = 0x0

.field public static final SETTING_VALUE_ON:I = 0x1

.field public static final URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;


# instance fields
.field public final mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "package_policy_disabled"

    .line 44
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V
    .registers 4

    .line 53
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->updateAllFeaturesDisabled(Z)Z

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->observe()V

    return-void
.end method


# virtual methods
.method public isAllFeaturesDisabled()Z
    .registers 3

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "package_policy_disabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    move v1, v0

    :cond_12
    return v1
.end method

.method public final observe()V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "package_policy_disabled"

    .line 62
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 61
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    if-eqz p2, :cond_10

    .line 68
    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_10

    .line 71
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    invoke-interface {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;->onSettingsChanged()V

    :cond_10
    :goto_10
    return-void
.end method

.method public updateAllFeaturesDisabled(Z)Z
    .registers 3

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->isAllFeaturesDisabled()Z

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "package_policy_disabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method
