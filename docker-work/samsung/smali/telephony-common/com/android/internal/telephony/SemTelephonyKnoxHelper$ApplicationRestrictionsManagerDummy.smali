.class public Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerDummy;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyKnoxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationRestrictionsManagerDummy"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method
