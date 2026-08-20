.class public interface abstract Lcom/android/server/pm/parsing/pkg/PkgAppInfo;
.super Ljava/lang/Object;
.source "PkgAppInfo.java"

# interfaces
.implements Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;


# virtual methods
.method public abstract getNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getNativeLibraryRootDir()Ljava/lang/String;
.end method

.method public abstract getSecondaryNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getUid()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isFactoryTest()Z
.end method

.method public abstract isNativeLibraryRootRequiresIsa()Z
.end method

.method public abstract isOdm()Z
.end method

.method public abstract isOem()Z
.end method

.method public abstract isPrivileged()Z
.end method

.method public abstract isProduct()Z
.end method

.method public abstract isSignedWithPlatformKey()Z
.end method

.method public abstract isSystem()Z
.end method

.method public abstract isSystemExt()Z
.end method

.method public abstract isVendor()Z
.end method
