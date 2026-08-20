.class public abstract Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
.super Ljava/lang/Object;
.source "OmcPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PmServiceProxy"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract addAllowlistedRestrictedPermissionProxy(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract getInstalledPackagesProxy(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfoProxy(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPermissionInfoProxy(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
.end method

.method public abstract getSystemPropertyProxy(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract grantRuntimePermissionsProxy(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract revokeRuntimePermissionsProxy(Ljava/lang/String;Ljava/util/Set;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract updatePermissionFlagsProxy(Ljava/lang/String;Ljava/lang/String;III)V
.end method
