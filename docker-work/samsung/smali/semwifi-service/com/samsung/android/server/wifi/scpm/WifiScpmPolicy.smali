.class public abstract Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
.super Ljava/lang/Object;
.source "WifiScpmPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy$Factory;
    }
.end annotation


# static fields
.field public static final POLICY_AUTO_WIFI:Ljava/lang/String; = "AUTO_WIFI"

.field public static final POLICY_EASY_SETUP:Ljava/lang/String; = "EASY_SETUP"

.field public static final POLICY_PROFILE_SHARE:Ljava/lang/String; = "PROFILE_SHARE"

.field public static final POLICY_ROAMING:Ljava/lang/String; = "ROAM"


# instance fields
.field private final policyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->policyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 56
    instance-of v0, p1, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    if-eqz v0, :cond_f

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->policyName:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->policyName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getPolicyName()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->policyName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->policyName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method setAttribute(Ljava/lang/String;F)V
    .registers 3

    return-void
.end method

.method setAttribute(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method setAttribute(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method

.method setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method
