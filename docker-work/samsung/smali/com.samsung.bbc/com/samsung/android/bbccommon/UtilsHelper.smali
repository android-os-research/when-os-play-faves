.class public Lcom/samsung/android/bbccommon/UtilsHelper;
.super Ljava/lang/Object;
.source "UtilsHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UtilsHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/io/File;I)Landroid/content/SharedPreferences;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 17
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperties(Ljava/lang/String;Z)Z
    .registers 2

    .line 29
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getWidgetProviders(Landroid/content/Context;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "appwidget"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetManager;

    .line 34
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
