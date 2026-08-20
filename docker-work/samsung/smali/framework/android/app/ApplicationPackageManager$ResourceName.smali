.class final Landroid/app/ApplicationPackageManager$ResourceName;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceName"
.end annotation


# instance fields
.field final greylist-max-o iconId:I

.field final greylist-max-o packageName:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 4
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "_iconId"    # I

    .line 2482
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2483
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/pm/ComponentInfo;I)V
    .registers 4
    .param p1, "cInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "_iconId"    # I

    .line 2486
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2487
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;I)V
    .registers 4
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "_iconId"    # I

    .line 2490
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2491
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_iconId"    # I

    .line 2476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2477
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    .line 2478
    iput p2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    .line 2479
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2495
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2496
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 2498
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 2500
    .local v2, "that":Landroid/app/ApplicationPackageManager$ResourceName;
    iget v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    iget v4, v2, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 2501
    :cond_1c
    iget-object v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v4, v2, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    .line 2502
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_2e

    :cond_29
    iget-object v3, v2, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-nez v3, :cond_2e

    :cond_2d
    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v1

    .line 2501
    :goto_2f
    return v0

    .line 2496
    .end local v2    # "that":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2509
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2510
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    add-int/2addr v1, v2

    .line 2511
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ResourceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
