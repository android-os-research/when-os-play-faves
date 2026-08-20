.class public Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;
.super Ljava/lang/Object;
.source "RuntimeManifestOverlayUtils.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "RuntimeManifestOverlayUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component::",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TComponent;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_64

    .line 114
    :cond_d
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v1, :cond_15

    if-nez v0, :cond_32

    goto :goto_15

    .line 120
    :cond_32
    invoke-static {p0, v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1, p1}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->getMatchingComponent(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    move-result-object v2

    if-nez v2, :cond_58

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuntimeManifestOverlayUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 129
    :cond_58
    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 131
    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    invoke-static {v2, v0}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->modifyMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    goto :goto_15

    :cond_64
    :goto_64
    return-void
.end method

.method public static applyPackageRuntimeManifest(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 152
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 154
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->modifyPackage(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public static applyRuntimeManifestIfNeeded(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)V
    .registers 5

    .line 77
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->getRuntimeManifestOverlayParser(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 80
    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseRuntimeManifestPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getApplicationPolicies()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyPackageRuntimeManifest(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Ljava/util/List;)V

    .line 82
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getActivityPolicies()Ljava/util/Map;

    move-result-object v2

    .line 83
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 86
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getServicePolicies()Ljava/util/Map;

    move-result-object v2

    .line 85
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 88
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getProviderPolicies()Ljava/util/Map;

    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 90
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getReceiverPolicies()Ljava/util/Map;

    move-result-object p1

    .line 89
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_46
    :goto_46
    return-void
.end method

.method public static getMatchingComponent(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component::",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TComponent;>;)TComponent;"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 140
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 141
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRuntimeManifestOverlayParser(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
    .registers 3

    .line 98
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string/jumbo v0, "runtime.manifest.overlay"

    .line 100
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_14

    .line 102
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static modifyComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/server/pm/pkg/component/ParsedComponentImpl;",
            ">(TComponent;",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 42
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 46
    :cond_1a
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    :cond_27
    return-void
.end method

.method public static modifyMainComponent(Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;",
            ">(TComponent;",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 32
    :cond_d
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/runtimemanifest/RuntimeManifestOverlayUtils;->modifyComponent(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    return-void
.end method

.method public static modifyPackage(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .registers 3

    if-eqz p1, :cond_39

    if-nez p0, :cond_5

    goto :goto_39

    .line 57
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 61
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 65
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 69
    :cond_2c
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_39
    :goto_39
    return-void
.end method
