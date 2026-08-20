.class public Lcom/android/server/notification/ZenModeHelper$Callback;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onConfigChanged()V
    .registers 1

    return-void
.end method

.method public onConsolidatedPolicyChanged()V
    .registers 1

    return-void
.end method

.method public onPolicyChanged()V
    .registers 1

    return-void
.end method

.method public onZenModeChanged()V
    .registers 1

    return-void
.end method
