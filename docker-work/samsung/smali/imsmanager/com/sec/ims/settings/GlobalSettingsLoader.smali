.class public Lcom/sec/ims/settings/GlobalSettingsLoader;
.super Ljava/lang/Object;
.source "GlobalSettingsLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/sec/ims/settings/GlobalSettingsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/GlobalSettingsLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadGlobalSettings(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 22
    invoke-static {p0, p1}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object v0

    return-object v0
.end method

.method public static loadGlobalSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/settings/GlobalSettings;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-static {p0}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object v0

    return-object v0
.end method
