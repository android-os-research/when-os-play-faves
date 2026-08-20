.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionsListener"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 4

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    .line 1147
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1148
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 1154
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->resetCrossProfileIntentFiltersIfNeeded(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1155
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->resetUserVpnIfNeeded(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final resetCrossProfileIntentFiltersIfNeeded(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "no_sharing_into_profile"

    .line 1170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 1172
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    if-ne p2, p1, :cond_16

    return-void

    :cond_16
    const-string p3, "DevicePolicyManager"

    const-string v0, "Resetting cross-profile intent filters on restriction change"

    .line 1178
    invoke-static {p3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p3, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetDefaultCrossProfileIntentFilters(I)V

    .line 1181
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.app.action.DATA_SHARING_RESTRICTION_APPLIED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1183
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 1181
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_32
    return-void
.end method

.method public final resetUserVpnIfNeeded(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "no_config_vpn"

    .line 1161
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_11

    .line 1162
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/4 p2, 0x1

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    if-eqz p2, :cond_19

    .line 1164
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mclearUserConfiguredVpns(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    :cond_19
    return-void
.end method
