.class public Lcom/samsung/android/securefolder/fwwrapper/UserInfoWrapper;
.super Ljava/lang/Object;
.source "UserInfoWrapper.java"


# static fields
.field public static ATTR_PREMIUM_CONTAINER:I = 0x10000000


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttributes(Landroid/os/UserManager;I)I
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p0

    return p0
.end method

.method public static isDeviceCompromised(Landroid/content/Context;I)Z
    .registers 2

    .line 24
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result p0

    return p0
.end method

.method public static isInitiailized(Landroid/content/Context;I)Z
    .registers 2

    .line 12
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public static isRemovePersona(Landroid/content/Context;I)Z
    .registers 2

    .line 18
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSecureFolder(Landroid/content/Context;I)Z
    .registers 2

    .line 36
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result p0

    return p0
.end method

.method public static isSuperLocked(Landroid/content/Context;I)Z
    .registers 2

    .line 30
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result p0

    return p0
.end method
