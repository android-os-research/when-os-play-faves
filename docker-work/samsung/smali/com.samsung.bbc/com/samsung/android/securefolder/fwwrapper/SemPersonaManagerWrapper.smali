.class public Lcom/samsung/android/securefolder/fwwrapper/SemPersonaManagerWrapper;
.super Ljava/lang/Object;
.source "SemPersonaManagerWrapper.java"


# static fields
.field public static final INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindCoreServiceAsUser(Lcom/samsung/android/knox/SemPersonaManager;Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 6

    .line 37
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static createConfirmProfileCredentialIntent(Lcom/samsung/android/knox/SemPersonaManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .registers 4

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->createConfirmProfileCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getContainerName(Lcom/samsung/android/knox/SemPersonaManager;ILandroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKnoxAdminReceiver()Landroid/content/ComponentName;
    .registers 1

    .line 32
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getRCPInterface(Lcom/samsung/android/knox/SemPersonaManager;)Ljava/lang/Object;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureFolderId(Landroid/content/Context;)I
    .registers 1

    .line 48
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static isDoEnabled(I)Z
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    return p0
.end method

.method public static refreshLockTimer(I)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->refreshLockTimer(I)V

    return-void
.end method

.method public static setAttributes(II)Z
    .registers 2

    .line 41
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    move-result p0

    return p0
.end method
