.class public interface abstract Lcom/android/server/om/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# virtual methods
.method public abstract doesTargetDefineOverlayable(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract getConfigSignaturePackage()Ljava/lang/String;
.end method

.method public abstract getNamedActors()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract initializeForUser(I)Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
