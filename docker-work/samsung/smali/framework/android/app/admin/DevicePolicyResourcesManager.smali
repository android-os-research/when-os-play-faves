.class public Landroid/app/admin/DevicePolicyResourcesManager;
.super Ljava/lang/Object;
.source "DevicePolicyResourcesManager.java"


# static fields
.field private static blacklist DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

.field private static blacklist DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-string v0, "DevicePolicyResourcesManager"

    sput-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "disable_resources_updatability"

    sput-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 196
    .local p4, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    .line 202
    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_52

    .line 209
    :cond_29
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_4d

    .line 211
    :try_start_2d
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    .line 213
    .local v0, "resource":Landroid/app/admin/ParcelableResource;
    if-nez v0, :cond_38

    .line 214
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 216
    :cond_38
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Landroid/app/admin/ParcelableResource;->getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3f} :catch_40

    return-object v1

    .line 221
    .end local v0    # "resource":Landroid/app/admin/ParcelableResource;
    :catch_40
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4d
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 206
    :cond_52
    :goto_52
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 162
    .local p3, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    const-string v0, "UNDEFINED"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .registers 5
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "defaultIcon"    # Landroid/graphics/drawable/Icon;

    .line 385
    const-string v0, "UNDEFINED"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .registers 8
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .param p4, "defaultIcon"    # Landroid/graphics/drawable/Icon;

    .line 340
    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    const-string v0, "defaultIcon can\'t be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    .line 346
    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_4b

    .line 353
    :cond_29
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_4a

    .line 355
    :try_start_2d
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    .line 357
    .local v0, "resource":Landroid/app/admin/ParcelableResource;
    if-nez v0, :cond_34

    .line 358
    return-object p4

    .line 360
    :cond_34
    invoke-virtual {v0}, Landroid/app/admin/ParcelableResource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/admin/ParcelableResource;->getResourceId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_40} :catch_41

    return-object v1

    .line 361
    .end local v0    # "resource":Landroid/app/admin/ParcelableResource;
    :catch_41
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    return-object p4

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4a
    return-object p4

    .line 350
    :cond_4b
    :goto_4b
    return-object p4
.end method

.method public whitelist getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "density"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 257
    .local p4, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    const-string v3, "UNDEFINED"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .param p4, "density"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 293
    .local p5, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    .line 299
    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_51

    .line 306
    :cond_29
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_4c

    .line 308
    :try_start_2d
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    .line 310
    .local v0, "resource":Landroid/app/admin/ParcelableResource;
    if-nez v0, :cond_38

    .line 311
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 313
    :cond_38
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p4, p5}, Landroid/app/admin/ParcelableResource;->getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3e} :catch_3f

    return-object v1

    .line 314
    .end local v0    # "resource":Landroid/app/admin/ParcelableResource;
    :catch_3f
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 303
    :cond_51
    :goto_51
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 6
    .param p1, "stringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 480
    .local p2, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    const-string/jumbo v0, "stringId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 481
    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_48

    .line 489
    :cond_20
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_43

    .line 491
    :try_start_24
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    .line 492
    .local v0, "resource":Landroid/app/admin/ParcelableResource;
    if-nez v0, :cond_2f

    .line 493
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 495
    :cond_2f
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/app/admin/ParcelableResource;->getString(Landroid/content/Context;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_36

    return-object v1

    .line 496
    .end local v0    # "resource":Landroid/app/admin/ParcelableResource;
    :catch_36
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated string from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_43
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    :cond_48
    :goto_48
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "stringId"    # Ljava/lang/String;
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 528
    .local p2, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    const-string/jumbo v0, "stringId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 529
    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 531
    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_48

    .line 537
    :cond_20
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_43

    .line 539
    :try_start_24
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    .line 540
    .local v0, "resource":Landroid/app/admin/ParcelableResource;
    if-nez v0, :cond_2f

    .line 541
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 543
    :cond_2f
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/admin/ParcelableResource;->getString(Landroid/content/Context;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_36

    return-object v1

    .line 544
    .end local v0    # "resource":Landroid/app/admin/ParcelableResource;
    :catch_36
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated string from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 552
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_43
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 535
    :cond_48
    :goto_48
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist resetDrawables(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "drawableIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 123
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->resetDrawables(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 126
    goto :goto_13

    .line 124
    :catch_d
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public whitelist resetStrings(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 444
    .local p1, "stringIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 446
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->resetStrings(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 449
    goto :goto_13

    .line 447
    :catch_d
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public whitelist setDrawables(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "drawables":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 97
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setDrawables(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 100
    goto :goto_13

    .line 98
    :catch_d
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method

.method public whitelist setStrings(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p1, "strings":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/DevicePolicyStringResource;>;"
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    .line 421
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setStrings(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 424
    goto :goto_13

    .line 422
    :catch_d
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 426
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method
