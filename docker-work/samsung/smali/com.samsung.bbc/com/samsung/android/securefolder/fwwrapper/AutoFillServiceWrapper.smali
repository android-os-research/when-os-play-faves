.class public Lcom/samsung/android/securefolder/fwwrapper/AutoFillServiceWrapper;
.super Ljava/lang/Object;
.source "AutoFillServiceWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingsActivity(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .registers 3

    .line 11
    new-instance v0, Landroid/service/autofill/AutofillServiceInfo;

    invoke-direct {v0, p0, p1}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 12
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
