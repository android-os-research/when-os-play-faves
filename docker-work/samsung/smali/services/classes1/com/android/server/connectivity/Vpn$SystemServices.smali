.class public Lcom/android/server/connectivity/Vpn$SystemServices;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemServices"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 2481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContentResolverAsUser(I)Landroid/content/ContentResolver;
    .registers 3

    .line 2524
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 2525
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    .line 2524
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 2525
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 5

    .line 2490
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2491
    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 2490
    invoke-static {p0, v0, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public settingsSecureGetIntForUser(Ljava/lang/String;II)I
    .registers 4

    .line 2520
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 2513
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public settingsSecurePutIntForUser(Ljava/lang/String;II)V
    .registers 4

    .line 2506
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 2499
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
