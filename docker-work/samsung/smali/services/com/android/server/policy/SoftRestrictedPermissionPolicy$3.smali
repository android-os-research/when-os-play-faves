.class public Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;
.super Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.source "SoftRestrictedPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$isWhiteListed:Z

.field public final synthetic val$targetSDK:I


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    .line 246
    iput-boolean p1, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$isWhiteListed:Z

    iput p2, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$targetSDK:I

    invoke-direct {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public mayGrantPermission()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$isWhiteListed:Z

    if-nez v0, :cond_d

    iget p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$targetSDK:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_b

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
