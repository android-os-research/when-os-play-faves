.class public Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingIntentSender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$mjLN5Lj6sqF3UF09be7a3dA31Fs(Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;->lambda$send$0(Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$send$0(Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 3055
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->run()V

    return-void
.end method

.method public static send(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Runnable;Landroid/os/Bundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_10

    .line 3054
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;

    invoke-direct {v1, p3, v0}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;-><init>(Ljava/lang/Runnable;Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback-IA;)V

    .line 3055
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;)V

    move-object v6, v0

    move-object v0, v1

    goto :goto_11

    :cond_10
    move-object v6, v0

    :goto_11
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v9, p4

    .line 3061
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v0, :cond_20

    .line 3070
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->allow()V

    :cond_20
    return-void
.end method
