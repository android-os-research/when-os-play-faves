.class public Lcom/samsung/android/securefolder/fwwrapper/KeyguardManagerWrapper;
.super Ljava/lang/Object;
.source "KeyguardManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfirmDeviceCredentialIntent(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .registers 4

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static isDeviceLocked(Landroid/app/KeyguardManager;I)Z
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0

    return p0
.end method

.method public static isDeviceSecure(Landroid/app/KeyguardManager;I)Z
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0

    return p0
.end method
