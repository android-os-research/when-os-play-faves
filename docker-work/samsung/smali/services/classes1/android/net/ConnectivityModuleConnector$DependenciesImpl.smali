.class public Landroid/net/ConnectivityModuleConnector$DependenciesImpl;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$Dependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityModuleConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DependenciesImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/ConnectivityModuleConnector$DependenciesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 7

    .line 158
    new-instance p0, Landroid/content/Intent;

    if-eqz p4, :cond_15

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".InProcess"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 161
    :cond_15
    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_21
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    :try_start_24
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2c} :catch_52

    if-eqz p4, :cond_31

    const/16 v1, 0x3e8

    goto :goto_33

    :cond_31
    const/16 v1, 0x431

    :goto_33
    if-ne p2, v1, :cond_3b

    if-nez p4, :cond_3a

    .line 183
    invoke-static {p1, v0, p3}, Landroid/net/ConnectivityModuleConnector;->-$$Nest$smcheckModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_3a
    return-object p0

    .line 179
    :cond_3b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid network stack UID: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_52
    move-exception p0

    .line 172
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Could not check network stack UID; package not found."

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
