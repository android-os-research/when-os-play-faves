.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SecurityPolicy"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .registers 2

    .line 1156
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    return-void
.end method


# virtual methods
.method public enforceCallFromPackage(Ljava/lang/String;)V
    .registers 3

    .line 1159
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/app/AppOpsManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method

.method public getEnabledGroupProfileIds(I)[I
    .registers 7

    .line 1163
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getGroupParent(I)I

    move-result p1

    .line 1166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1168
    :try_start_8
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmUserManager(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_50

    .line 1170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_1c
    if-ge v1, p1, :cond_2f

    .line 1176
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    add-int/lit8 v2, v2, 0x1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1182
    :cond_2f
    new-array v1, v2, [I

    move v2, v0

    :goto_32
    if-ge v0, p1, :cond_4f

    .line 1184
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1185
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1186
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_4f
    return-object v1

    :catchall_50
    move-exception p0

    .line 1170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    throw p0
.end method

.method public getGroupParent(I)I
    .registers 3

    .line 1207
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmSecurityPolicy(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getProfileParent(I)I

    move-result p0

    const/16 v0, -0xa

    if-eq p0, v0, :cond_f

    move p1, p0

    :cond_f
    return p1
.end method

.method public getProfileParent(I)I
    .registers 4

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1196
    :try_start_4
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmUserManager(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1198
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_22

    .line 1201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xa

    return p0

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    throw p0
.end method
