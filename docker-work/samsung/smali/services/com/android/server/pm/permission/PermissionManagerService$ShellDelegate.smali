.class public Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellDelegate"
.end annotation


# instance fields
.field public final mDelegatedPackageName:Ljava/lang/String;

.field public final mDelegatedPermissionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDelegatedUid:I

.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 954
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedUid:I

    .line 956
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPackageName:Ljava/lang/String;

    .line 957
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/util/function/TriFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 969
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->isDelegatedPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_12
    const-string v0, "com.android.shell"

    .line 972
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, v0, p2, p3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    .line 974
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_26
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 975
    throw p2

    .line 977
    :cond_2b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p1, p2, p0}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/util/function/BiFunction;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 983
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedUid:I

    if-ne p1, v0, :cond_27

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->isDelegatedPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    const/16 v0, 0x7d0

    .line 986
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    .line 988
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_22
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    throw p2

    .line 991
    :cond_27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDelegatedPermissionNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    .line 998
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method public getDelegatedUid()I
    .registers 1

    .line 962
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedUid:I

    return p0
.end method

.method public final isDelegatedPermission(Ljava/lang/String;)Z
    .registers 2

    .line 1003
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    if-eqz p0, :cond_d

    .line 1004
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
