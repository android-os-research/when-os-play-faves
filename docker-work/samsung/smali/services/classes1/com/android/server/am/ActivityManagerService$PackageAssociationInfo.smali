.class public final Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageAssociationInfo"
.end annotation


# instance fields
.field public final mAllowedPackageAssociations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsDebuggable:Z

.field public final mSourcePackage:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/util/ArraySet;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1065
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mSourcePackage:Ljava/lang/String;

    .line 1067
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    .line 1068
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return-void
.end method


# virtual methods
.method public getAllowedPackageAssociations()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1088
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    return-object p0
.end method

.method public isDebuggable()Z
    .registers 1

    .line 1080
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return p0
.end method

.method public isPackageAssociationAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public setDebuggable(Z)V
    .registers 2

    .line 1084
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return-void
.end method
