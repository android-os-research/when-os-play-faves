.class public Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;
.super Ljava/lang/Object;
.source "OmcPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPermission"
.end annotation


# instance fields
.field public final mFixedGrantedPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mNonFixedGrantedPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRevokedPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    .line 352
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    .line 353
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;-><init>()V

    return-void
.end method


# virtual methods
.method public addGrantedPermission(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_8

    .line 357
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 359
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_d
    return-void
.end method

.method public addRevokePermission(Ljava/lang/String;)V
    .registers 2

    .line 364
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFixedGrantedPermission()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    return-object p0
.end method

.method public getNonFixedGrantedPermission()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    return-object p0
.end method

.method public getRevokedPermission()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    return-object p0
.end method
