.class public Lcom/samsung/android/server/pm/MetaDataHelper;
.super Ljava/lang/Object;
.source "MetaDataHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppMetaBundle(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 32
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    const/4 v2, -0x1

    .line 36
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    const-wide/16 v2, 0x80

    const/4 v5, -0x1

    move-object v6, p0

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_1b

    return-object v0

    .line 42
    :cond_1b
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public static isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method


# virtual methods
.method public getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;
    .registers 2

    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/pm/MetaDataHelper;->getAppMetaBundle(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getComponentMetaData(Lcom/android/server/pm/pkg/component/ParsedComponent;)Landroid/os/Bundle;
    .registers 2

    .line 24
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
